# Buxbrew — interaction and character-voice design

**Creative author:** Babuni.dev

## The interaction

The player chooses a meaningful action-bar slot and the addon attaches a little “performance” to presses of that button. The key design virtue is **incidental expression**: the player does not need to stop playing and invent a roleplay line for every encounter. The character occasionally supplies her own oversized reaction.

`/mae watch` is a discovery tool, not a player-facing overlay. It prints the slot number as actions are pressed. After assigning it with `/mae slot <n>`, watch mode can be turned off. There is no additional UI to maintain during combat.

### Trigger semantics

A matching button press requests an emote. The 90-second cooldown decides whether the request proceeds. There is no random chance of **whether** to react after the cooldown; randomness applies to **which** line appears. The source does not check class, combat state, health, action success, rage or spell ID.

This matters for expectations. Descriptions such as “reacts to combat” are a reading of the desired experience; “reacts to a configured button press” is the observable technical fact.

## Writing and delivery

The current voice is feminine in third-person and delighted by action. Its verbs are physical: laughing, roaring, stomping, striking, spinning, flexing, clapping and lifting a weapon. Weapon and armor imagery after the October 2025 rewrite gives the lines the cadence of a chaotic, confident fighter.

The addon posts the selected line in WoW's `EMOTE` channel. The text describes a motion or sound, but the character's visual animation is not programmatically produced by that description.

## Discovery and usability

| Experience element | Current expression |
| --- | --- |
| Discovery | Orange `MAE:` messages during watch mode |
| Configuration | `/mae slot <number>` |
| Checking readiness | `/mae info`, `/mae timer` |
| Manual demonstration | `/mae emote` (not exempt from cooldown) |
| Reset | `/mae reset` |
| Content customization | Edit `EMOTES` directly in Lua; no menu |

### Accessibility and restraint

The 90-second interval restrains chat spam, but public text emotes may still be inappropriate in some groups. Players can clear the watched slot when not using the feature. Testing should include whether the watch messages and timer output are understandable, whether Unicode punctuation renders, and whether repeated pressing affects the underlying action.

No UI redesign or new behavior is authorized by this document.
