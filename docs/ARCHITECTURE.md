# Buxbrew — technical architecture (2.5.5)

**Source:** `Buxbrew.lua` and `Buxbrew.toc` as inspected on 2026-10-26. Static code reading only.

## Runtime data flow

```text
Player presses action bar button
         |
Global UseAction wrapper(slot, checkCursor, onSelf)
         |-- lazy saved-slot hydration
         |-- optional watch-mode print of slot number
         |-- if watched slot matches --> doEmoteNow()
         |                                  |-- GetTime() / 90s gate
         |                                  |-- uniformly choose from EMOTES
         |                                  '-- SendChatMessage(line, "EMOTE")
         '-- call previously captured UseAction with original arguments
```

The implementation captures `_Orig_UseAction = UseAction` and replaces the global. It does **not** intercept spell success or combat-log events; it reacts to the button press itself. It forwards `slot, checkCursor, onSelf` to the previous function.

## Core components

| Symbol | Purpose |
| --- | --- |
| `EMOTES` | 215 literal text strings, one chosen by `math.random(1, table.getn(EMOTES))` |
| `WATCH_SLOT` | Selected action slot, initialized from per-character saved data |
| `WATCH_MODE` | Unsaved diagnostic toggle printing slot numbers |
| `LAST_EMOTE_TIME` | Unsaved last-accepted trigger time, initialized to 0 |
| `EMOTE_COOLDOWN` | Fixed 90-second interval |
| `MadAxeBuxbrewDB.slot` | Per-character persisted slot |
| `/mae` | Slash-command configuration, status, trigger and debug surface |

The `EMOTES` pool contains **strings**, not animation IDs, voice files, sound kits or external JSON. There is no dependency, scheduler thread, addon-to-addon network traffic, interface panel or background per-frame tick.

## Lifecycle and storage

The code registers `VARIABLES_LOADED`, `PLAYER_ENTERING_WORLD`, `PLAYER_LOGIN` and `PLAYER_LOGOUT`. On saved-variable or world initialization it reads the stored slot; on login it seeds `math.random` with a value derived from `GetTime()`; on logout it persists the current slot. Setting or resetting a slot also updates the saved table immediately.

The manifest declares `## SavedVariablesPerCharacter: MadAxeBuxbrewDB`, **not** account-wide storage. Neither the cooldown nor watch-mode toggle persists through reload.

## Interface and compatibility risk

- **Lua mismatch:** code comments say “Lua 5.0-safe”, while the parser calls `string.match(s, "...")`, introduced in Lua 5.1. On a strict Lua 5.0 client, `/mae` may error before processing any command. This is a source-supported risk, not an observed runtime error.
- **Global hook:** if multiple add-ons wrap `UseAction`, the resulting call chain depends on load order and whether each wrapper delegates.
- **Cooldown start:** with `LAST_EMOTE_TIME = 0`, an eligible press before 90 seconds of `GetTime()` may be suppressed.
- **Localization:** prose is authored in English and Unicode punctuation appears in the source. Verify encoding and language behavior in actual clients.
- **Input validation:** `/mae slot` accepts any string convertible to a number; it does not validate action-bar bounds or integer-only values.
- **Chat restrictions:** sending `EMOTE` depends on the live server/client and may be limited; no game test was executed.

## Packaging

The repository contains `Buxbrew.lua` and `Buxbrew.toc`; manifest title **Buxbrew**, internal slash namespace **MADAXEBUXBREW**, internal source header **MadAxeBuxbrew**. Their difference is historical naming, not a required rename. A 2025-09-12 manifest commit aligned the filename reference to the actual Lua file.
