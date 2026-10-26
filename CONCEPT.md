# Buxbrew — creative concept

**Creative owner:** Babuni.dev  
**Working identity in source:** MadAxeBuxbrew

## A personality expressed through ordinary play

Buxbrew is a small expressive roleplay layer for World of Warcraft. A player already presses an action button; the addon sometimes accompanies that moment with written physicality—laughter that sounds like a battle horn, boots stomping in rhythm, weapons raised in delight, proud stances and contagious confidence. The action is not replaced. The addon adds a voice around it.

The current writing style is deliberately **larger than life**, chiefly joyous rather than grim. The emotes use a female third-person viewpoint (“her”) and repeatedly combine exuberance with combat imagery. They present the character as someone who enjoys the fray as a celebration.

The source and historical revisions support this reading of the writing; they do not supply a transcript of Babuni.dev's original motivation. Treat this as a **source-based interpretation of the implemented character voice**, not an invented first-person creator quote.

## What makes this more than a random quote generator

- **Embodied writing:** the emotes describe posture, weapons, armor, boots, shoulders, breath and sound. They create the sense of a character performing even when no special animation is possible.
- **Player-coupled trigger:** the moment begins with a deliberate action-bar press instead of a background timer.
- **Occasional surprise:** the 90-second cooldown holds back repetition. Which of the 215 lines appears remains unpredictable.
- **Roleplay-first output:** custom `/emote` prose is public character expression, not extra ability damage or tactical advice.
- **Small tooling surface:** one per-character saved slot, a few `/mae` commands, and an editable list in one Lua file.

## Creative development visible in Git

The first uploaded version (2025-09-12) was already labeled version 2.5.5 and used the **MadAxeBuxbrew** identity. Its writing included fist fighting, tavern props and bawdier metaphors. A 2025-10-02 change rewrote many lines in terms of weapons, gauntlets and armor, shifting the recorded voice toward more general warrior spectacle. The new pool was also longer.

This is a **documented textual change**, not evidence of a specific disagreement, moderation incident or formal decision. The creator retains authority over how that transition should ultimately be narrated.

## Scope

Buxbrew is not the same implementation as `BuxbrewCharge`, `BuxbrewDing` or `BuxbrewResist`; there is no source-level dependency on those repositories. Similarly, the internal persona name alone is not sufficient to merge this speaker's canonical identity with any other Buxbrew character without the author's confirmation.

The current project is the code and authored text in `Buxbrew.lua`, the addon manifest, and the development record.
