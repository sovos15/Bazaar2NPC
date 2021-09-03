#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

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
IniRead, NPC, %A_ScriptDir%\Settings.ini, NPCPrices, %Value1%
IniRead, Product, %A_ScriptDir%\Settings.ini, Aliases, %Value1%
Value2 := Round(value2, 2)
Value6 := Round(value6, 2)
BV := Floor(Value3/Value5)
SV := Floor(Value7/Value9)
DB := Floor(Value4/7)
DS := Floor(Value8/7)
PQ := Value6-NPC
PS := Value2-NPC
PQ := Round(PQ, 2)
PS := Round(PS, 2)

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
Gui, Add, ListBox, x160 y70 w280 h260 , %A_Hour%:%A_Min%:%A_Sec% %A_MMMM%/%A_DD%/%A_YYYY%|Product: %Product%|Sellers Offer: %Value6%|Buyers Offer: %Value2%|NPCs Offer: %NPC%|Quick Buy to NPC: %PQ%|Buy Order To NPC: %PS%|Average Offered Volume: %SV%|Average Requested Volume: %BV%|Daily Offered Units Taken: %DS%|Daily Requested Units Recieved: %DB%
Gui, Add, UpDown, x422 y99 w20 h250 , UpDown
Gui, Show, w450 h360, Bazaar2NPC
return

FetchNext:
Rank := (Ranked+=1)
Ranked := RegExMatch(Fixed, "quickstatusproductId([a-zA-Z0-9]+)sellPrice([0-9.?0-9?]+)sellVolume([0-9]+)sellMovingWeek([0-9]+)sellOrders([0-9]+)buyPrice([0-9.?0-9?]+)buyVolume([0-9]+)buyMovingWeek([0-9]+)buyOrders([0-9]+)", Value, StartingPos := Rank)
IniRead, NPC, %A_ScriptDir%\Settings.ini, NPCPrices, %Value1%
IniRead, Product, %A_ScriptDir%\Settings.ini, Aliases, %Value1%
Value2 := Round(Value2, 2)
Value6 := Round(Value6, 2)
BV := Floor(Value3/Value5)
SV := Floor(Value7/Value9)
DB := Floor(Value4/7)
DS := Floor(Value8/7)
PQ := Value6-NPC
PS := Value2-NPC
PQ := Round(PQ, 2)
PS := Round(PS, 2)

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
IniRead, NPC, %A_ScriptDir%\Settings.ini, NPCPrices, %Value1%
IniRead, Product, %A_ScriptDir%\Settings.ini, Aliases, %Value1%
Value2 := Round(value2, 2)
Value6 := Round(value6, 2)
BV := Floor(Value3/Value5)
SV := Floor(Value7/Value9)
DB := Floor(Value4/7)
DS := Floor(Value8/7)
PQ := Value6-NPC
PS := Value2-NPC
PQ := Round(PQ, 2)
PS := Round(PS, 2)

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





