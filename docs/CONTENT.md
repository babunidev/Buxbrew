# Buxbrew — emote writing and content register

**Creator:** Babuni.dev  
**Source:** `local EMOTES = { ... }` in `Buxbrew.lua`.

## Current content inventory

The code contains **215 unique emote strings**, each used as the body of a `SendChatMessage(e, "EMOTE")` call. They are not Blizzard built-in emote tokens, localization keys, recorded audio or generated-on-demand text.

A short representative selection:

> laughs loud and wild, joy sparking in her eyes.

> twirls her weapon like a banner, grin unshaken.

> lets her warcry pour out like a mountain storm.

These lines establish a recognizable character energy: fierce physicality accompanied by delight, tavern-like bravado and joyful loudness. The full canonical set remains in the source file; do not maintain a duplicated 215-line list in documentation that can silently fall out of sync.

## Motifs in the current pool

| Motif | Textual examples and role |
| --- | --- |
| Laughter and joy | Big laughs and grins frame combat as celebration |
| Shouts, roars and war cries | Give the character a loud, self-announcing presence |
| Boots and rhythm | Stomping, drumming and dancing create a musical brawl |
| Weapon flourishes | The blade or weapon becomes an expressive prop |
| Armor and gauntlets | Clangs, knocks and plates provide tactile texture |
| Confidence and encouragement | Raised arms, strong stance and shouted presence lift the line |

The categories are **editorial analysis**, not separately tagged lists in the Lua. The selection routine samples one common pool without weighting themes.

## Historical writing change

The initial upload on **2025-09-12** contained more fist fighting, drinking/tankard props and bawdy bodily imagery. A large **2025-10-02** update moved much of the wording toward weapons, gauntlets, armor and broader battle exuberance. It also greatly increased the size of the pool. Git proves that the prose changed; it does not by itself prove the author’s motive or that an outside policy drove the rewrite.

Avoid publishing older lines in a portfolio without checking whether Babuni.dev wishes to preserve them verbatim as historical creative material. A respectful summary can preserve the direction of change without turning rejected or superseded copy into the lead presentation.

## Maintenance and attribution

- Keep Babuni.dev as creative author.
- If content is revised, link the exact commit and explain which voice, metaphor or limitation changed and why, based on an actual creator decision.
- Do not treat source text as an automatic performance test of the chat system.
- Do not conflate this character's story with other Buxbrew lore purely on the basis of a shared name.
