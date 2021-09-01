#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;establishes a set of variables named what the API calls them and filled with the price an NPC will pay for it.
global ANCIENTCLAW := 200
global BLAZEROD := 9
global BLESSEDBAIT := 42
global BONE := 2
global BROWNMUSHROOM := 4
global CACTUS := 1
global CARROTBAIT := 7
global CARROTITEM := 1
global CATALYST := 500
global CLAYBALL := 3
global COAL := 2
global COBBLESTONE := 1
global COLOSSALEXPBOTTLE := 5000
global COMPACTOR := 640
global DAEDALUSSTICK := 500
global DARKBAIT := 8
global DIAMOND := 8
global EMERALD := 6
global ENCHANTEDACACIALOG := 320
global ENCHANTEDBAKEDPOTATO := 25600
global ENCHANTEDBIRCHLOG := 320
global ENCHANTEDBLAZEPOWDER := 1440
global ENCHANTEDBLAZEROD := 230400
global ENCHANTEDBONE := 320
global ENCHANTEDBREAD := 60
global ENCHANTEDBROWNMUSHROOM := 640
global ENCHANTEDCACTUS := 25600
global ENCHANTEDCACTUSGREEN := 160
global ENCHANTEDCAKE := 2700
global ENCHANTEDCARROT := 160
global ENCHANTEDCARROTONASTICK := 10240
global ENCHANTEDCARROTSTICK := 320.4
global ENCHANTEDCHARCOAL := 320
global ENCHANTEDCLAYBALL := 480
global ENCHANTEDCLOWNFISH := 3200
global ENCHANTEDCOAL := 320
global ENCHANTEDCOALBLOCK := 51000
global ENCHANTEDCOBBLESTONE := 160
global ENCHANTEDCOCOA := 480
global ENCHANTEDCOOKEDFISH := 150000
global ENCHANTEDCOOKEDMUTTON := 128000
global ENCHANTEDCOOKEDSALMON := 256000
global ENCHANTEDCOOKIE := 61500
global ENCHANTEDDARKOAKLOG := 320
global ENCHANTEDDIAMOND := 1280
global ENCHANTEDDIAMONDBLOCK := 204800
global ENCHANTEDEGG := 432
global ENCHANTEDEMERALD := 960
global ENCHANTEDEMERALDBLOCK := 153600
global ENCHANTEDENDERPEARL := 140
global ENCHANTEDENDSTONE := 320
global ENCHANTEDEYEOFENDER := 3520
global ENCHANTEDFEATHER := 480
global ENCHANTEDFERMENTEDSPIDEREYE := 31000
global ENCHANTEDFIREWORKROCKET := 41000
global ENCHANTEDFLINT := 640
global ENCHANTEDGHASTTEAR := 80
global ENCHANTEDGLISTERINGMELON := 1000
global ENCHANTEDGLOWSTONE := 61000
global ENCHANTEDGLOWSTONEDUST := 320
global ENCHANTEDGOLD := 640
global ENCHANTEDGOLDBLOCK := 102400
global ENCHANTEDGOLDENCARROT := 20608
global ENCHANTEDGRILLEDPORK := 128000
global ENCHANTEDGUNPOWDER := 640
global ENCHANTEDHAYBLOCK := 1300
global ENCHANTEDICE := 80
global ENCHANTEDINKSACK := 160
global ENCHANTEDIRON := 480
global ENCHANTEDIRONBLOCK := 76800
global ENCHANTEDJUNGLELOG := 320
global ENCHANTEDLAPISLAZULI := 160
global ENCHANTEDLAPISLAZULIBLOCK := 25600
global ENCHANTEDLAVABUCKET := 50000
global ENCHANTEDLEATHER := 1700
global ENCHANTEDMAGMACREAM := 1280
global ENCHANTEDMELON := 160
global ENCHANTEDMELONBLOCK := 25600
global ENCHANTEDMITHRIL := 1600
global ENCHANTEDMUTTON := 800
global ENCHANTEDNETHERSTALK := 480
global ENCHANTEDOAKLOG := 320
global ENCHANTEDOBSIDIAN := 1920
global ENCHANTEDPACKEDICE := 12800
global ENCHANTEDPAPER := 384
global ENCHANTEDPORK := 800
global ENCHANTEDPOTATO := 160
global ENCHANTEDPRISMARINECRYSTALS := 400
global ENCHANTEDPRISMARINESHARD := 400
global ENCHANTEDPUFFERFISH := 2400
global ENCHANTEDPUMPKIN := 640
global ENCHANTEDQUARTZ := 640
global ENCHANTEDQUARTZBLOCK := 102400
global ENCHANTEDRABBIT := 640
global ENCHANTEDRABBITFOOT := 800
global ENCHANTEDRABBITHIDE := 2880
global ENCHANTEDRAWBEEF := 640
global ENCHANTEDRAWCHICKEN := 640
global ENCHANTEDRAWFISH := 960
global ENCHANTEDRAWSALMON := 1600
global ENCHANTEDREDMUSHROOM := 640
global ENCHANTEDREDSTONE := 160
global ENCHANTEDREDSTONEBLOCK := 25600
global ENCHANTEDREDSTONELAMP := 30720
global ENCHANTEDROTTENFLESH := 320
global ENCHANTEDSAND := 320
global ENCHANTEDSEEDS := 80
global ENCHANTEDSLIMEBALL := 800
global ENCHANTEDSLIMEBLOCK := 128000
global ENCHANTEDSNOWBLOCK := 600
global ENCHANTEDSPIDEREYE := 480
global ENCHANTEDSPONGE := 2000
global ENCHANTEDSPRUCELOG := 320
global ENCHANTEDSTRING := 576
global ENCHANTEDSUGAR := 320
global ENCHANTEDSUGARCANE := 51200
global ENCHANTEDTITANIUM := 3200
global ENCHANTEDWATERLILY := 1600
global ENCHANTEDWETSPONGE := 80000
global ENDERPEARL := 7
global ENDERSTONE := 2
global EXPBOTTLE := 5
global FEATHER := 3
global FISHBAIT := 20
global FLINT := 4
global FOULFLESH := 25000
global GHASTTEAR := 16
global GLOWSTONEDUST := 2
global GOLDINGOT := 4
global GRANDEXPBOTTLE := 480
global GRAVEL := 3
global GRIFFINFEATHER := 1000
global HAMSTERWHEEL := 20000
global HAYBLOCK := 9
global HOTPOTATOBOOK := 13000
global ICE := 0.5
global ICEBAIT := 3
global INKSACK3 := 1
global INKSACK4 := 3
global INKSACK := 2
global IRONINGOT := 3
global LEATHER := 3
global LIGHTBAIT := 16
global LOG1 := 2
global LOG21 := 2
global LOG2 := 2
global LOG2 := 2
global LOG3 := 2
global LOG := 2
global MAGMACREAM := 8
global MELON := 0.5
global MINNOWBAIT := 12
global MITHRILORE := 10
global MUTANTNETHERSTALK := 76800
global MUTTON := 5
global NETHERRACK := 1
global NETHERSTALK := 3
global OBSIDIAN := 12
global PACKEDICE := 4.5
global POLISHEDPUMPKIN := 102400
global PORK := 5
global POTATOITEM := 1
global PRISMARINECRYSTALS := 5
global PRISMARINESHARD := 5
global PROTECTORFRAGMENT := 4
global QUARTZ := 4
global RABBIT := 4
global RABBITFOOT := 5
global RABBITHIDE := 5
global RAWBEEF := 4
global RAWCHICKEN := 4
global RAWFISH1 := 10
global RAWFISH2 := 20
global RAWFISH3 := 15
global RAWFISH := 6
global REDMUSHROOM := 4
global REDSTONE := 1
global REFINEDDIAMOND := 4096
global REFINEDMITHRIL := 256000
global REFINEDTITANIUM := 51200
global REVENANTFLESH := 1
global ROTTENFLESH := 2
global SAND := 2
global SEEDS := 0.5
global SLIMEBALL := 5
global SNOWBALL := 1
global SNOWBLOCK := 4
global SPIDEREYE := 3
global SPIKEDBAIT := 20
global SPONGE := 50
global SPOOKYBAIT := 10
global STARFALL := 15
global STRING := 3
global SUGARCANE := 2
global SULPHUR := 4
global SUPERCOMPACTOR3000 := 50000
global TIGHTLYTIEDHAYBALE := 187200
global TITANICEXPBOTTLE := 5000
global TITANIUMORE := 20
global WATERLILY := 10
global WHALEBAIT := 80
global WHEAT := 1

;Establishes variables now so things don't complain latter
Global Selected := N/A
Global Editable := N/A

;Establishes Chronology
Global Rank := 1

; a blank value
global Blank :=

Snatch:
;In case of time travel
gui, Destroy

;calls the API and stores the response to a variable called RAW
whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "https://api.hypixel.net/skyblock/bazaar", true)
whr.Send()
whr.WaitForResponse()
RAW := whr.ResponseText

;removes most clunky formating From RAW and Outputs to Fixed
Fix1 := StrReplace(RAW, Chr(58),Chr(32))
Fix2 := StrReplace(Fix1, Chr(44),Chr(13))
Fix3 := StrReplace(Fix2, Chr(44)Chr(34)buy_, Chr(13)Chr(34)buy_)
Fix4 := StrReplace(fix3, Chr(34), Chr(32))
Fix5 := StrReplace(Fix4, Chr(91), Chr(32))
Fix6 := StrReplace(Fix5, Chr(93), Chr(32))
Fix7 := StrReplace(Fix6, Chr(123), Chr(32))
Fix8 := StrReplace(Fix7, Chr(125), Chr(32))
Fix9 := StrReplace(Fix8, Chr(44),Chr(44)Chr(32))
Fix10 := StrReplace(Fix9, Quick, Chr(13)Quick)
Fix11 := StrReplace(Fix10, "products"Chr(58), Chr(13)"products"Chr(58)Chr(13)) 
Fix12 := StrReplace(Fix11, Chr(32), %Blank%)
Fix13 := StrReplace(Fix12, Chr(13), %Blank%)
Fixed := StrReplace(Fix13, Chr(95), %Blank%)

;fetches values from the data in Fixed and updates cronology with our place in the data
Ranked := RegExMatch(Fixed, "quickstatusproductId([a-zA-Z0-9]+)sellPrice([0-9.?0-9?]+)sellVolume([0-9]+)sellMovingWeek([0-9]+)sellOrders([0-9]+)buyPrice([0-9.?0-9?]+)buyVolume([0-9]+)buyMovingWeek([0-9]+)buyOrders([0-9]+)", Value, StartingPos := Rank)
Rank := (Ranked+=1)
IniRead, Price, %A_ScriptDir%\Settings.ini, NPCPrices, %Value1%
IniRead, Product, %A_ScriptDir%\Settings.ini, Aliases, %Value1%
Value2 := Round(value2, 2)
Value6 := Round(value6, 2)
BV := Floor(Value3/Value5)
SV := Floor(Value7/Value9)
DB := Floor(Value4/7)
DS := Floor(Value8/7)
PQ := Value6-%Value1%
PS := Value2-%Value1%
PQ := Round(PQ, 2)
PS := Round(PS, 2)
NPC := %Value1%

IfGreaterOrEqual, PS, 0
	goto, FetchNext
if PS =
	goto, FetchNext


Home:
Gui, Add, Picture, x0 y0 w450 h360 , %A_ScriptDir%\Splashes\Backround.png
Gui, Add, Button, Default x330 y320 w70 h30 gFetchNext, Next
Gui, Add, Button, x50 y70 w70 h30 gfree, Free?
Gui, Add, Button, x50 y110 w70 h30 ghow, How?
Gui, Add, Button, x50 y150 w70 h30 gserious, Seriously?
Gui, Add, Button, x50 y190 w70 h30 gtips, Tips?
Gui, Add, Button, x50 y240 w70 h30 gSettings, &Settings
Gui, Add, Button, x50 y280 w70 h30 gjams, &Tasty Jams
Gui, Add, Button, x50 y320 w70 h30 gSnatch, &Refresh App
Gui, Add, Button, x200 y320 w70 h30 gFetchQuick, Next Quick
Gui, Add, ListBox, x160 y70 w280 h260 , %A_Hour%:%A_Min%:%A_Sec% %A_MMMM%/%A_DD%/%A_YYYY%|Product: %Product%|Sellers Offer: %Value6%|Buyers Offer: %Value2%|NPCs Offer: %Price%|Quick Buy to NPC: %PQ%|Buy Order To NPC: %PS%|Average Offered Volume: %SV%|Average Requested Volume: %BV%|Daily Offered Units Taken: %DS%|Daily Requested Units Recieved: %DB%
Gui, Add, UpDown, x422 y99 w20 h250 , UpDown
Gui, Show, w450 h360, Bazaar2NPC
return

FetchNext:
Rank := (Ranked+=1)
Ranked := RegExMatch(Fixed, "quickstatusproductId([a-zA-Z0-9]+)sellPrice([0-9.?0-9?]+)sellVolume([0-9]+)sellMovingWeek([0-9]+)sellOrders([0-9]+)buyPrice([0-9.?0-9?]+)buyVolume([0-9]+)buyMovingWeek([0-9]+)buyOrders([0-9]+)", Value, StartingPos := Rank)
IniRead, Price, %A_ScriptDir%\Settings.ini, NPCPrices, %Value1%
IniRead, Product, %A_ScriptDir%\Settings.ini, Aliases, %Value1%
Value2 := Round(Value2, 2)
Value6 := Round(Value6, 2)
BV := Floor(Value3/Value5)
SV := Floor(Value7/Value9)
DB := Floor(Value4/7)
DS := Floor(Value8/7)
PQ := Value6-%Value1%
PS := Value2-%Value1%
PQ := Round(PQ, 2)
PS := Round(PS, 2)
NPC := %Value1%

IfGreaterOrEqual, PS, 0
	goto, FetchNext

if PS = 
	goto, FetchNext

if Value5 = 0
	goto, FetchNext

goto, Homeer
return

FetchQuick:
Rank := (Ranked+=1)
Ranked := RegExMatch(Fixed, "quickstatusproductId([a-zA-Z0-9]+)sellPrice([0-9.?0-9?]+)sellVolume([0-9]+)sellMovingWeek([0-9]+)sellOrders([0-9]+)buyPrice([0-9.?0-9?]+)buyVolume([0-9]+)buyMovingWeek([0-9]+)buyOrders([0-9]+)", Value, StartingPos := Rank)
IniRead, Price, %A_ScriptDir%\Settings.ini, NPCPrices, %Value1%
IniRead, Product, %A_ScriptDir%\Settings.ini, Aliases, %Value1%
Value2 := Round(value2, 2)
Value6 := Round(value6, 2)
BV := Floor(Value3/Value5)
SV := Floor(Value7/Value9)
DB := Floor(Value4/7)
DS := Floor(Value8/7)
PQ := Value6-%Value1%
PS := Value2-%Value1%
PQ := Round(PQ, 2)
PS := Round(PS, 2)
NPC := %Value1%

IfGreaterOrEqual, PQ, 0
	goto, FetchQuick

if PQ = 
	goto, FetchQuick

if Value5 = 0
	goto, FetchNext

goto, Homeer
return

free:
MsgBox, 0, FREE!, made, done, or given voluntarily or spontaneously
return

how:
MsgBox, 0, Tutorial, The tool finds items being sold for less then the price NPCs will pay `n Just hit the "next" buttons to see more `n`n "To NPC" profits are from the NPCs persepctive `n [that is to say nagitive values mean you make money] 
return

serious:
SoundPlay, %A_ScriptDir%\Splashes\Free.asf
return

tips:
Gui, Destroy
Gui, Add, Picture, x-0 y-0 w310 h710 ,  %A_ScriptDir%\Splashes\Tip.png
Gui, Add, Button, x125 y680 gHomeer, Home
Gui, Show, w310 h710, I take XRP...
return

Settings:
GUI, Destroy
Gui, Add, Picture, x-8 y-11 w490 h400 , %A_ScriptDir%\Splashes\Backround.png
Gui, Add, ComboBox, x250 y340 w200 gOpen vSelected , Ancient Claw|Blaze Rod|Blessed Bait|Blue Shark Tooth|Bone|Booster Cookie|Brown Mushroom|Cactus|Carrot Bait|Carrot|Catalyst|Clay|Coal|Cobblestone|Colossal Experience Bottle|Compactor|Daedalus Stick|Dark Bait|Diamond|Ectoplasm|Emerald|Enchanted Acacia Wood|Enchanted Ancient Claw|Enchanted Baked Potato|Enchanted Birch Wood|Enchanted Blaze Powder|Enchanted Blaze Rod|Enchanted Bone|Enchanted Bone Block|Enchanted Bread|Enchanted Brown Mushroom|Enchanted Cactus|Enchanted Cactus Green|Enchanted Cake|Enchanted Carrot|Enchanted Carrot on a Stick|Enchanted Carrot on a Stick|Enchanted Charcoal|Enchanted Clay|Enchanted Clownfish|Enchanted Coal|Enchanted Block of Coal|Enchanted Cobblestone|Enchanted Cocoa Bean|Enchanted Cooked Fish|Enchanted Cooked Mutton|Enchanted Cooked Salmon|Enchanted Cookie|Enchanted Dark Oak Wood|Enchanted Diamond|Enchanted Diamond Block|Enchanted Egg|Enchanted Emerald|Enchanted Emerald Block|Enchanted Ender Pearl|Enchanted End Stone|Enchanted Eye of Ender|Enchanted Feather|Enchanted Fermented Spider Eye|Enchanted Firework Rocket|Enchanted Flint|Enchanted Ghast Tear|Enchanted Glistering Melon|Enchanted Glowstone|Enchanted Glowstone Dust|Enchanted Gold|Enchanted Gold Block|Enchanted Golden Carrot|Enchanted Grilled Pork|Enchanted Gunpowder|Enchanted Hay Bale|Enchanted Brown Mushroom Block|Enchanted Red Mushroom Block|Enchanted Ice|Enchanted Ink Sack|Enchanted Iron|Enchanted Iron Block|Enchanted Jungle Wood|Enchanted Lapis Lazuli|Enchanted Lapis Block|Enchanted Lava Bucket|Enchanted Leather|Enchanted Magma Cream|Enchanted Melon|Enchanted Melon Block|Enchanted Mithril|Enchanted Mutton|Enchanted Nether Wart|Enchanted Oak Wood|Enchanted Obsidian|Enchanted Packed Ice|Enchanted Paper|Enchanted Pork|Enchanted Potato|Enchanted Prismarine Crystals|Enchanted Prismarine Shard|Enchanted Pufferfish|Enchanted Pumpkin|Enchanted Quartz|Enchanted Quartz Block|Enchanted Raw Rabbit|Enchanted Rabbit Foot|Enchanted Rabbit Hide|Enchanted Raw Beef|Enchanted Raw Chicken|Enchanted Raw Fish|Enchanted Raw Salmon|Enchanted Red Mushroom|Enchanted Redstone|Enchanted Redstone Block|Enchanted Redstone Lamp|Enchanted Rotten Flesh|Enchanted Sand|Enchanted Seeds|Enchanted Shark Fin|Enchanted Slimeball|Enchanted Slime Block|Enchanted Snow Block|Enchanted Spider Eye|Enchanted Sponge|Enchanted Spruce Wood|Enchanted String|Enchanted Sugar|Enchanted Sugar Cane|Enchanted Titanium|Enchanted Lily Pad|Enchanted Wet Sponge|Ender Pearl|End Stone|Experience Bottle|Feather|Fish Bait|Flint|Foul Flesh|Fuming Potato Book|Ghast Tear|Glowstone Dust|Golden Tooth|Gold Ingot|Grand Experience Bottle|Gravel|Great White Shark Tooth|Green Candy|Green Gift|Griffin Feather|Hamster Wheel|Hay Bale|Holy Dragon Fragment|Hot Potato Book|Brown Mushroom Block|Red Mushroom Block|Hyper Catalyst|Ice|Ice Bait|Cocoa Beans|Lapis Lazuli|Ink Sack|Iron Ingot|Jacob's Ticket|Blue Jerry Box|Golden Jerry Box|Green Jerry Box|Purple Jerry Box|Leather|Light Bait|Spruce Wood|Dark Oak Wood|Acacia Wood|Birch Wood|Jungle Wood|Oak Wood|Magma Cream|Melon|Minnow Bait|Mithril|Mutant Nether Wart|Mutton|Netherrack|Nether Wart|Nurse Shark Tooth|Obsidian|Old Dragon Fragment|Packed Ice|Polished Pumpkin|Raw Porkchop|Potato|Prismarine Crystals|Prismarine Shard|Protector Dragon Fragment|Pumpkin|Pumpkin Guts|Purple Candy|Nether Quartz|Raw Rabbit|Rabbit's Foot|Rabbit Hide|Raw Beef|Raw Chicken|Raw Salmon|Clownfish|Pufferfish|Raw Fish|Recombobulator |Red Gift|Red Mushroom|Redstone|Refined Diamond|Refined Mineral|Refined Mithril|Refined Titanium|Revenant Flesh|Revenant Viscera|Rotten Flesh|Sand|Seeds|Shark Bait|Shark Fin|Slimeball|Snowball|Snow Block|Soul Fragment|Spider Eye|Spiked Bait|Sponge|Spooky Bait|Spooky Shard|Starfall|Stock of Stonks|String|Strong Dragon Fragment|Sugar Cane|Gunpowder|Summoning Eye|Super Compactor |Super Enchanted Egg|Superior Dragon Fragment|Tarantula Silk|Tarantula Web|Tiger Shark Tooth|Tightly-Tied Hay Bale|Titanic Experience Bottle|Titanium|Unstable Dragon Fragment|Lily Pad|Werewolf Skin|Whale Bait|Wheat|White Gift|Wise Dragon Fragment|Wolf Tooth|Young Dragon Fragment
Gui, Add, Text, x250 y310 w120 h30 , %Selected%WIP
Gui, Add, Edit, x372 y315 w90 h20 gSubmit, %Editable%
Gui, Add, Button, x12 y330 w100 h30 gHomeer, Home
Gui, Add, Button, x132 y330 w100 h30 gReset, Default [broken]
Gui, Show, w479 h379, Untitled GUI
return

Open:
Gui Submit , NoHide
IniRead, Selected1, %A_ScriptDir%\Settings.ini, Aliases, %Selected%
IniRead, Editable, %A_ScriptDir%\Settings.ini, NPCPrices, %Selected1%
Gui Submit , NoHide
goto, Settings
return

Submit:
Gui Submit , NoHide
return

jams:
SoundPlay, %A_ScriptDir%\Splashes\Jams.wav
return

Reset:
return

Homeer:
Gui, Destroy
Goto, Home 
return


GuiClose:
ExitApp





