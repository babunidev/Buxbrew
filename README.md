# Buxbrew — MadAxe character emotes

**Creator and author:** Babuni.dev  
**Target client:** World of Warcraft 1.12 / interface `11200`  
**Declared addon version:** 2.5.5  
**Runtime verification:** Not tested in this documentation review.

Buxbrew adds an in-character flourish to an ordinary action-bar press. It watches one chosen action slot and occasionally sends one randomly selected custom roleplay emote to WoW's `EMOTE` chat channel. The current source contains **215 unique emote lines**: roaring, laughing, stomping, rallying, clanging armor, and celebrating the joy of combat.

The Lua file still calls itself `MadAxeBuxbrew`, while the packaged addon is simply **Buxbrew**. This is a character-voice project—not a combat rotation tool, not an automatic attack system, and not a collection of animation or sound assets.

## Set up and use

Place `Buxbrew.toc` and `Buxbrew.lua` directly in `Interface/AddOns/Buxbrew/`, restart the target game client and enable the addon at character selection.

1. Type `/mae watch`. Press the action-bar button that should trigger the emotes. Read its reported slot number.
2. Type `/mae slot 3` (replace `3` with that number). The slot is saved for that **character**.
3. Type `/mae watch` again to switch off debug chatter.
4. Use that action normally. When at least **90 seconds** have passed since the previous emitted emote, the addon attempts a new, randomly chosen custom emote.

| Command | Source behavior |
| --- | --- |
| `/mae watch` | Toggle action-slot-number reporting |
| `/mae slot <number>` | Select and save a watched slot |
| `/mae emote` | Attempt one emote, subject to the same cooldown |
| `/mae info` | Report the current watched slot and cooldown |
| `/mae timer` | Report remaining cooldown in seconds |
| `/mae save` | Save the slot to `MadAxeBuxbrewDB` |
| `/mae reset` | Clear the selected slot |
| `/mae debug` | Print current and saved slot state |

The cooldown is fixed in source. There is no in-game text editor, custom chance setting, combat-condition check or options frame. A watched-button **press** is the trigger; the source does not verify that the action succeeded or that the character entered combat. When the emote is sent, it goes through WoW's chat system, and the original `UseAction` call still follows.

## Current limitations to know

- **Lua version discrepancy:** the file header calls itself Lua 5.0-safe, but the `/mae` parser calls `string.match`, which is not part of standard Lua 5.0. Verify slash commands on an actual 1.12 client before treating compatibility as confirmed. This review does **not** modify the parser.
- **Per-character configuration:** the TOC declares `SavedVariablesPerCharacter: MadAxeBuxbrewDB`. A chosen slot does not automatically follow a different character.
- **Hook interactions:** Buxbrew replaces global `UseAction` while forwarding to its captured original. Other action-hook addons may interact through load order.
- **Cooldown at startup:** `LAST_EMOTE_TIME` starts at zero, so the first attempt depends on the client's current `GetTime()`.
- **Roleplay delivery:** sending to `EMOTE` depends on the game's chat rules. These lines describe actions; the addon does not physically animate its described weapon flourishes.
- **License:** no `LICENSE` file was present in the inspected repository. Do not assume a license without the creator's choice.

## Where the project came from

The repository began in September 2025 with the internal name **MadAxeBuxbrew**. Its original texts combined playful combat and overt tavern comedy. An October 2025 source revision changed many lines toward weapon-and-armor gestures and substantially expanded the pool. The present `Buxbrew.lua` contains 215 individual emotes.

These shifts are supported by dated Git changes. The original discussion and approval of each phrase are not preserved here. The addon belongs to the same broad creative world as other Buxbrew-related projects, but this repository does not establish that its narrator is necessarily identical to a particular character in a separate lore document.

## Project documentation

- [Concept and intended experience](CONCEPT.md) · [Interaction design](docs/DESIGN.md) · [Writing/content inventory](docs/CONTENT.md)
- [Technical architecture](docs/ARCHITECTURE.md) · [Decisions and alternatives](docs/DECISIONS.md) · [Development history](docs/DEVLOG.md)
- [Roadmap and verification backlog](ROADMAP.md) · [Dated changelog](CHANGELOG.md)
- [Human–AI contribution method](docs/AI_COLLABORATION.md) · [Development instructions](AGENTS.md)

**Documentation evidence:** source, manifest, and selected Git commit diffs. **Verification:** static repository inspection and Markdown-link checks only; no in-game execution.
