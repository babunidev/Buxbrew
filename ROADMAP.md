# Buxbrew — roadmap and verification

**Author:** Babuni.dev  
**Status of items below:** proposed checks and questions, not approved feature commitments.

## Current snapshot

- WoW 1.12 / interface `11200`; addon declares version **2.5.5**.
- `Buxbrew.lua` contains **215 distinct emote strings**, selected uniformly by `math.random`.
- One action-bar slot is configured per character; `UseAction` is wrapped and delegated.
- Fixed 90-second `GetTime()` cooldown; slash-command interface `/mae`.
- No automated tests or runtime test results appear in the inspected repository.

## Verification before claiming the addon works

1. **Compatibility:** install on the actual supported WoW 1.12 fork and verify that `/mae` parses correctly. Standard Lua 5.0 does not include `string.match`, used by the present command parser.
2. **Loading:** confirm the `Buxbrew.toc` filename, character-specific saved variable and the displayed addon name work as packaged.
3. **Slot discovery:** activate `/mae watch`, press an action, assign the reported slot, turn watching off.
4. **Emote and action:** confirm a watched-slot press sends exactly one text emote when eligible **and** the original action still happens.
5. **Cooldown:** verify repeated presses inside 90 seconds are silent; confirm `/mae emote` uses the same timer.
6. **Persistence:** test `/reload`, logout, fresh login and a different character's distinct slot preference.
7. **Compatibility with related addons:** in a controlled setup, test chaining `UseAction` hooks alongside `BuxbrewCharge`, `amazin` or other add-ons that replace it.
8. **Chat behavior:** test `EMOTE` delivery under relevant combat, instance and anti-spam rules; verify localization/character encoding of apostrophes.
9. **Startup edge:** note whether the initial `GetTime()` value suppresses a newly loaded session's first press.

Record build, addon load order, steps, logs/observed output and exact commit for each result.

## Decisions for Babuni.dev (not automatically authorized)

- Keep the exact 90-second timing or offer a user-facing interval?
- Keep current text voice, restore any particular earlier phrasing, or curate more thematic groups?
- Add a way to preview a line without transmitting to nearby players?
- Change the action trigger to an event-based mechanism if `UseAction` conflicts arise?
- Select and document a software license.
- Confirm how the internal “MadAxeBuxbrew” persona relates to other canon Buxbrew characters.

**No changes to these mechanics or answers were made in the documentation-only pass.**
