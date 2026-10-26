# Buxbrew — development and attribution rules

**Human creative author:** Babuni.dev. Keep the character voice, original author credit and Git development history intact.

## Scope and working agreements

1. Read `README.md`, `CONCEPT.md`, `docs/DESIGN.md`, `docs/CONTENT.md`, `docs/DECISIONS.md` and the actual `Buxbrew.lua` before proposing mechanics or prose changes.
2. Preserve expressive, joyous, third-person combat roleplay. Do not replace it with generic fantasy filler or a conventional “combat helper”.
3. Never assume “MadAxeBuxbrew” is canonically the same as a Buxbrew character in another project without the creator's approval. Avoid conflating sibling addons.
4. Treat user direction, AI suggestion, accepted choice, implementation, verification and retrospective inference as separate records. No AI-generated approval or invented backstory.
5. Mark the 2025-10-02 emote revision as an observable text change—not proof of a specific personal motive.
6. Code changes require Lua 5.0/API review, slot-action delegation checks, in-game tests and synchronized updates to README, CHANGELOG, ARCHITECTURE, DECISIONS and DEVLOG.
7. Preserve historical Git references and third-party content/license credits. Never publish private RP chat logs or credentials.

## Technical cautions

- Current source globally wraps `UseAction`; account for other add-ons doing the same.
- `MadAxeBuxbrewDB` is declared **per character**, and its `slot` is the only persisted field.
- The header claims Lua 5.0 compatibility but command parsing uses `string.match`; do not describe game-client support as proven until tested.
- `SendChatMessage(..., "EMOTE")` posts text: it does not carry out the described animation.
- Reproduce verified test steps and results, not assumptions.
- No automated license inference: the inspected repository contains no `LICENSE` file.
