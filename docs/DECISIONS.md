# Buxbrew — design decisions, evidence and uncertainties

**Creative authority:** Babuni.dev.  
**Evidence standard:** actual README, Lua/TOC, and Git diffs distinguish implementation from historical approvals.

## Observable creative and technical choices

| Topic | Source-backed current outcome | What remains unknown |
| --- | --- | --- |
| Roleplay text over combat automation | `EMOTES` and `SendChatMessage(..., "EMOTE")`; original `UseAction` delegated | Exact original wording of the creator's design brief |
| One watched action slot | `WATCH_SLOT`, `/mae watch`, `/mae slot` | Why this was preferred to aura/cast triggers |
| Sparse public output | `EMOTE_COOLDOWN = 90` | Why precisely 90 seconds was chosen |
| Per-character preference | TOC `SavedVariablesPerCharacter` | Whether sharing between characters was considered |
| One large random text pool | 215 strings sampled uniformly | Whether subgroups/weights were discussed |
| Female, joyous battle persona | Third-person “her” prose, weapon/armor/roar motifs | Exact canonical identity beyond the in-code name |
| Text-based configuration | `/mae` command router | Whether a GUI was deliberately rejected |

Do **not** elevate absent alternatives to “rejected” without stronger evidence.

## A concrete creative iteration: September to October 2025

The initial commit (`1225f8f`) already used the name MadAxeBuxbrew and an emphatic, rowdy emote style, with many fist, tavern and suggestive references. A dated `Buxbrew.lua` update (`a4b4892`, **2025-10-02**) substantially expanded the text and replaced much of that imagery with weapon and armor gestures. This is a **verified direction of the changed text**, not a verified account of a conversation, disagreement or reason for rewriting it.

An early manifest edit (`7d24dfd`) changed title and loaded filename to Buxbrew. The internal identifiers were left as MadAxeBuxbrew, which is not necessarily an error.

## Technical questions to resolve

1. Should the Lua 5.0 parser use `string.find` instead of `string.match`? It is a compatibility concern, not fixed here.
2. How should the addon behave alongside another global `UseAction` hook?
3. Does a 90-second cooldown match the creator's desired chat presence in practice?
4. Does the internal MadAxe persona correspond to any separate canonical character?
5. Should the repository be distributed under an explicit software license?

No game rules were changed and no new feature choice was made in this documentation pass.
