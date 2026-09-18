-- MadAxeBuxbrew v2.5.5 (Vanilla 1.12)
-- Per-character SavedVariables. Lua 5.0-safe string handling.

-------------------------------------------------
-- Emotes (edit as you like)
-------------------------------------------------
local EMOTES = {
  "laughs loud and wild, joy sparking in her eyes.",
  "beats her chest with her fists and grins.",
  "roars a challenge, stance loose and daring.",
  "throws her head back and howls at the sky.",
  "finds the rhythm in her boots and drums it in.",
  "pounds her chest with both hands, smiling wide.",
  "lets a laugh tear out like a warhorn.",
  "swings her weapon in a wide arc, daring the clash.",
  "bangs her weapon to armor and winks.",
  "spins her weapon like a tavern dancer gone wild.",
  "taps her weapon on her thigh in a fighter’s beat.",
  "snaps her grip tight and flashes a grin.",
  "throws a strike into the air and laughs at the impact.",
  "slashes the air with a brutal swing, then bursts laughing.",
  "wipes sweat from her lip and smirks wickedly.",
  "clinks her gauntlets together and shouts loud.",
  "lifts her weapon high and dares the foe.",
  "snaps her gauntlets together and grins at the sound.",
  "slams her palm to her weapon and surges forward.",
  "stands tall, chest proud, daring the hit.",
  "raises her weapon and the cheer explodes around her.",
  "howls so loud the stone walls throw it back.",
  "so full of joy even the quiet roar with her.",
  "steps forward, stance firm, the front surges.",
  "flexes her sturdy frame; grips tighten nearby.",
  "lets bliss spill until nerves turn into laughs.",
  "erupts with presence; doubt burns away.",
  "ignites a warm fire that spreads through the line.",
  "shakes her shoulders, letting her braids swing bold.",
  "throws a wink and slams her weapon against her hip.",
  "plants her boots firm, shoulders rolling to a rowdy beat.",
  "lets her laugh bubble over like a drum burst.",
  "twirls once, weapon flashing like she’s dancing in the fight.",
  "grins wickedly and cracks her knuckles loud.",
  "slaps her thigh and laughs loud enough to echo.",
  "arches her back and roars, chest heaving with sound.",
  "drums her weapon against her ribs, steady and loud.",
  "grins wide as if every strike is a tavern cheer.",
  "plants her weapon to the ground, chest thrust proud.",
  "lets her joy spill out so strong it feels like music.",
  "throws her weapon high, voice booming like a festival cheer.",
  "bites her knuckle-plate and smirks as the clash begins.",
  "roars with bliss so hearty even foes grin wide.",
  "stomps hard, sending dust and laughter skyward.",
  "twists her wrists once, rolling her weapon with the motion.",
  "bellows like a tavern song, all heat and joy.",
  "claps her hands once and howls as the fight begins.",
  "presses her forearms to her chest and roars loud.",
  "grinds her boots into the ground, finding the fight’s rhythm.",
  "licks her teeth and grins with joy.",
  "slaps her thigh with her palm and laughs wild.",
  "slams her shoulder into a foe, grinning as they stumble.",
  "lets her braids fly loose as she howls the challenge.",
  "runs her tongue across her lip, winking fiercely.",
  "thrusts her weapon forward, swinging low and fierce.",
  "rubs her gauntlets together, laughing raw.",
  "throws her head back, roaring in one breath.",
  "pounds her chest and drums the sound like warhorns.",
  "bites her knuckle-plate while her chest heaves with battle joy.",
  "arches her back, weapon swinging as she bellows.",
  "slaps her shoulder guard hard enough to echo through stone.",
  "runs her tongue across her lip, then explodes in a roar.",
  "presses her hands together and grins wickedly.",
  "stomps the ground once, then laughs like thunder.",
  "pounds her chest and lets her laughter soar.",
  "shakes her shoulders like a tavern dancer mid-brawl.",
  "laughs out loud, cheeks flushed red with fight-lust.",
  "presses her weapon high with a wicked grin, daring stares.",
  "shakes her sturdy frame so wild it looks like a war dance.",
  "laughs as her armor rattles in rhythm to the fight.",
  "arches forward, weapon swinging like war-drums.",
  "claps her gauntlets once, then throws her weapon high with a roar.",
  "plants her boots and stomps heavy as she leans into the clash.",
  "claps her gauntlets together like shields, grinning drunk on battle.",
  "gives her belt a tug before stomping into the fray.",
  "swings her shoulders, armor clanging like drums of war.",
  "presses her weapon to her chestplate, laughing wild.",
  "licks her lips slow, eyes daring anyone to try her.",
  "arches her back, weapon quivering, before roaring like thunder.",
  "lets sweat drip down her brow, howling as it spills.",
  "grins fierce and stomps the ground before smashing forward.",
  "thrusts her weapon high, voice cracking like a battle horn.",
  "wipes grime across her armor and bellows like a goddess of war.",
  "roars so raw her laughter shakes the stone.",
  "bends low, boots stomping, then slams forward weapon first.",
  "grinds her stance as if shaking the war itself.",
  "plants her frame firm and roars, daring the strike.",
  "shakes her shoulders wild, laughter spilling out free.",
  "smacks her gauntlet hard, howling like a war-horned beast.",
  "rests her weapon on her shoulder, then lifts it high roaring.",
  "rolls her shoulders, weapon flashing close.",
  "claps her hands once, making the line shake.",
  "lets her joy surge bold as her weapon flies.",
  "slaps her thigh and bellows until echoes split.",
  "stomps to the rhythm of war, weapon ready to slam.",
  "shakes her stance till dust rises, roaring with laughter.",
  "plants her boots heavy, voice exploding like stone cracking.",
  "waggles her weapon and fists together, shaking both with wild joy.",
  "spins her weapon overhead, shouting with joy.",
  "stomps twice, rhythm shaking the ground.",
  "throws her arms wide, laughing at the chaos.",
  "plants her weapon firm and bellows a cheer.",
  "drums her palm against her chest, voice booming.",
  "roars so bright it drowns out the clash for a heartbeat.",
  "cracks her weapon against her gauntlet, sparks flying.",
  "steps into the fray with laughter bursting free.",
  "lets her warcry pour out like a mountain storm.",
  "thumps her boots in steady cadence, rallying all nearby.",
  "laughs so hard the foe falters a moment.",
  "twirls her weapon like a banner, grin unshaken.",
  "lets a howl roll out, voice rising higher each note.",
  "clashes her weapon against a shield for rhythm.",
  "points her weapon skyward and shouts loud.",
  "presses her helm and roars like thunder.",
  "throws her weight into a stomp, laughing all the way.",
  "beats her chestplate three times, each louder.",
  "flashes her teeth in a grin, daring the hit.",
  "lets her breath come out in a sharp joyful bark.",
  "snaps her weapon side to side, rattling the line.",
  "plants one foot forward, voice cracking into a cheer.",
  "hurls her voice so strong it feels like fire.",
  "grips her weapon tight, joy glowing in her eyes.",
  "pivots fast, laughter bubbling over the sound of steel.",
  "lets her stance roll, body loose and strong.",
  "claps her weapon against her boots in a steady beat.",
  "bows her head once, then bellows wild.",
  "tilts her head back and laughs to the stone above.",
  "scrapes her weapon across stone, sparks raining bright.",
  "throws her gauntlets together in a booming clap.",
  "beats the ground with her weapon, echo rolling wide.",
  "points at her foe with wild joy, shouting loud.",
  "pounds her chest and throws her head back.",
  "lets her boots drum the earth, beat steady and strong.",
  "spins around once, warcry flying loose.",
  "grins wide and bellows until her voice cracks.",
  "drags her weapon along the dirt, then raises it high.",
  "pounds her gauntlet on her helm and laughs.",
  "throws both arms high, roaring like a storm.",
  "sways side to side, stance brimming with joy.",
  "strikes her weapon flat to her armor in rhythm.",
  "lets her laughter rise and spread through the line.",
  "beats her boots against the stone, roaring with pride.",
  "plants her stance deep and lets her warcry split the air.",
  "squares her shoulders, grin shining through the grime.",
  "lets her cheer spill bold enough to drown doubt.",
  "throws her arms wide, laughing like a victory’s already won.",
  "clashes her weapon on her knee, shouting fierce.",
  "twists her neck, cracking it loud, then howls.",
  "roars long, her voice booming like a mountain cave.",
  "taps her helm with her weapon, daring the foe.",
  "lets her bellow ride the clash of steel.",
  "pounds the ground until dust bursts skyward.",
  "tilts her chin high, laughing unbroken.",
  "claps once, voice tearing free like fire.",
  "throws her voice into a chant of pure joy.",
  "beats her thigh with her fist, laughter rolling.",
  "lets her stance quake with each laugh.",
  "rolls her weapon along her palm, grinning all the way.",
  "strikes the flat of her blade, ringing it loud.",
  "lets her joy flash like sparks in the fight.",
  "plants her weapon and leans forward, roaring strong.",
  "laughs sharp, cutting through the clash like a horn.",
  "slams her heel down with wild glee.",
  "throws a mocking grin, then shouts.",
  "twists her gauntlets together, voice spilling wild.",
  "lets her roar beat against the shields around her.",
  "claps her armor once, sound booming through.",
  "grins so big it shakes her shoulders loose.",
  "beats her chest once and bursts into laughter.",
  "lets her cry ring high like a song of war.",
  "plants her weapon across her shoulders, laughing raw.",
  "throws a stomp, echo answering back.",
  "leans on her weapon and howls to the line.",
  "grins fierce and snaps her weapon up quick.",
  "spins her stance, voice lifting into a roar.",
  "smacks her gauntlet, sparks flying bright.",
  "lets her boots drum the ground in rhythm.",
  "beats her armor once, grinning wide.",
  "lets her hair fly loose as she bellows.",
  "flashes her weapon like a banner of pride.",
  "throws her arm wide and shouts loud.",
  "plants her boots and lets the roar burst out.",
  "grinds her stance, joy blazing in her eyes.",
  "tilts her head, voice rolling like thunder.",
  "plants her weapon firm, laughter spilling bold.",
  "clashes her weapon down once, shaking dust loose.",
  "raises both hands high and howls fierce.",
  "presses her fist to her heart and shouts.",
  "stomps and laughs as stone rattles back.",
  "lets her voice cut through the noise with fire.",
  "spins her weapon once, grin wide and wild.",
  "strikes her gauntlet hard, echo leaping out.",
  "throws her roar so loud even foes look twice.",
  "plants her boots deeper, shoulders rolling loose.",
  "lets her stance swell into pure joy.",
  "grips her weapon with both hands, laughing raw.",
  "beats her chest three times, then bellows.",
  "flashes her teeth like a challenge given.",
  "lets her laughter turn into a thundercry.",
  "claps her gauntlets to her belt and howls.",
  "throws a look skyward and laughs.",
  "spins her weapon sharp, warcry shaking air.",
  "leans forward, joy boiling into sound.",
  "lets her boots march in a rhythm of war.",
  "snaps her head side to side, then howls.",
  "beats her weapon against the ground three times.",
  "lets her roar blaze out like fire from stone.",
  "raises her weapon high, laughter rolling wide.",
  "presses her hand to her helm, shouting hard.",
  "plants her foot and lets her cheer rip out.",
  "lets her warcry surge like a wave through all.",
  "grips her weapon close, laughter spilling free.",
  "lets her voice crack into a joyous scream.",
  "hammers her chestplate and roars proud.",
  "lets her joy blaze high as steel meets steel.",
}
-------------------------------------------------
-- State
-------------------------------------------------
local WATCH_SLOT = nil
local WATCH_MODE = false
local LAST_EMOTE_TIME = 0
local EMOTE_COOLDOWN = 90

-------------------------------------------------
-- Helpers
-------------------------------------------------
local function chat(text)
  if DEFAULT_CHAT_FRAME then
    DEFAULT_CHAT_FRAME:AddMessage("|cffff8800MAE:|r " .. text)
  end
end

local function ensureDB()
  if type(MadAxeBuxbrewDB) ~= "table" then
    MadAxeBuxbrewDB = {}
  end
  return MadAxeBuxbrewDB
end

-- one-time lazy load in case events fire oddly on this client
local _mae_loaded_once = false
local function ensureLoaded()
  if not _mae_loaded_once then
    local db = ensureDB()
    if WATCH_SLOT == nil then
      WATCH_SLOT = db.slot or nil
    end
    _mae_loaded_once = true
  end
end

local function tlen(t)
  if t and table.getn then return table.getn(t) end
  return 0
end

local function pick(t)
  local n = tlen(t)
  if n < 1 then return nil end
  return t[math.random(1, n)]
end

local function doEmoteNow()
  local now = GetTime()
  if now - LAST_EMOTE_TIME < EMOTE_COOLDOWN then return end
  LAST_EMOTE_TIME = now
  local e = pick(EMOTES)
  if e then SendChatMessage(e, "EMOTE") end
end

-------------------------------------------------
-- Hook UseAction (1.12)
-------------------------------------------------
local _Orig_UseAction = UseAction
function UseAction(slot, checkCursor, onSelf)
  ensureLoaded()
  if WATCH_MODE then
    chat("pressed slot " .. tostring(slot))
  end
  if WATCH_SLOT and slot == WATCH_SLOT then
    doEmoteNow()
  end
  return _Orig_UseAction(slot, checkCursor, onSelf)
end

-------------------------------------------------
-- Slash Commands (Lua 5.0-safe: use string.*)
-------------------------------------------------
SLASH_MADAXEBUXBREW1 = "/mae"
SlashCmdList["MADAXEBUXBREW"] = function(raw)
  ensureLoaded()
  local s = raw or ""
  s = string.gsub(s, "^%s+", "")
  local cmd, rest = string.match(s, "^(%S+)%s*(.-)$")

  if cmd == "slot" then
    local n = tonumber(rest)
    if n then
      WATCH_SLOT = n
      local db = ensureDB()
      db.slot = n
      chat("watching action slot " .. n .. " (saved).")
    else
      chat("usage: /mae slot <number>")
    end

  elseif cmd == "watch" then
    WATCH_MODE = not WATCH_MODE
    chat("watch mode " .. (WATCH_MODE and "ON" or "OFF"))

  elseif cmd == "emote" then
    doEmoteNow()

  elseif cmd == "info" then
    chat("watching slot: " .. (WATCH_SLOT and tostring(WATCH_SLOT) or "none"))
    chat("cooldown: " .. EMOTE_COOLDOWN .. "s")

  elseif cmd == "timer" then
    local remain = EMOTE_COOLDOWN - (GetTime() - LAST_EMOTE_TIME)
    if remain < 0 then remain = 0 end
    chat("time left: " .. string.format("%.1f", remain) .. "s")

  elseif cmd == "reset" then
    WATCH_SLOT = nil
    local db = ensureDB()
    db.slot = nil
    chat("cleared saved slot.")

  elseif cmd == "save" then
    local db = ensureDB()
    db.slot = WATCH_SLOT
    chat("saved now.")

  elseif cmd == "debug" then
    local t = type(MadAxeBuxbrewDB)
    local v = (t == "table") and tostring(MadAxeBuxbrewDB.slot) or "n/a"
    chat("type(MadAxeBuxbrewDB)=" .. t .. " | SV slot=" .. v .. " | WATCH_SLOT=" .. tostring(WATCH_SLOT))

  else
    chat("/mae slot <number> | /mae watch | /mae emote | /mae info | /mae timer | /mae reset | /mae save | /mae debug")
  end
end

-------------------------------------------------
-- Init / Save / RNG
-------------------------------------------------
local f = CreateFrame("Frame")
f:RegisterEvent("VARIABLES_LOADED")
f:RegisterEvent("PLAYER_ENTERING_WORLD") -- some 1.12 forks prefer this order
f:RegisterEvent("PLAYER_LOGIN")
f:RegisterEvent("PLAYER_LOGOUT")

f:SetScript("OnEvent", function(self, event)
  if event == "VARIABLES_LOADED" or event == "PLAYER_ENTERING_WORLD" then
    local db = ensureDB()
    WATCH_SLOT = db.slot or WATCH_SLOT
    -- uncomment if you want a boot message:
    chat("loaded slot " .. tostring(WATCH_SLOT or "none"))
  elseif event == "PLAYER_LOGIN" then
    math.randomseed(math.floor(GetTime() * 1000)); math.random()
  elseif event == "PLAYER_LOGOUT" then
    ensureDB().slot = WATCH_SLOT
  end
end)
