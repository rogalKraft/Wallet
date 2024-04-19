##
 # main.mcfunction
 # wallet
 #
 # Created by Rogal.
##
#scorbord eneble
scoreboard players enable @a balance
scoreboard players enable @a auto-selection
scoreboard players enable @a auto-selection-off
scoreboard players enable @a put1
scoreboard players enable @a put5
scoreboard players enable @a put10
scoreboard players enable @a put20
scoreboard players enable @a put50
scoreboard players enable @a put100
scoreboard players enable @a put500



#auto-selection on/off

execute as @a[scores={auto-selection=1..}] as @s run tellraw @s ["",{"text":"Auto-selection"},{"text":" [on]","color":"green"},{"text":"\n"},{"text":"If you want to get coins from your wallet, turn off this function","color":"red"}]
execute as @a[scores={auto-selection=1..}] run scoreboard players set @s triger 2
execute as @a[scores={auto-selection=1..}] run scoreboard players set @s auto-selection 0


execute as @a[scores={auto-selection-off=1..}] as @s run tellraw @s ["",{"text":"Auto-selection ","color":"#9CDCFE"},{"text":"[off]","color":"red"}]
execute as @a[scores={auto-selection-off=1..}] run scoreboard players set @s triger 1
execute as @a[scores={auto-selection-off=1..}] run scoreboard players set @s auto-selection-off 0

#auto-selection
execute as @a[scores={triger=2},nbt={Inventory:[{tag:{CustomModelData:6001}}]}] as @s run scoreboard players add @s coinscore 1
execute as @a[scores={triger=2},nbt={Inventory:[{tag:{CustomModelData:6001}}]}] run execute as @a at @s run clear @s gunpowder{CustomModelData:6001,Tags:["1coin"],display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"#FA6400","text":"1 Coin"}],"text":""}'}} 1

execute as @a[scores={triger=2},nbt={Inventory:[{tag:{CustomModelData:6002}}]}] as @s run scoreboard players add @s coinscore 5
execute as @a[scores={triger=2},nbt={Inventory:[{tag:{CustomModelData:6002}}]}] run execute as @a at @s run clear @s gunpowder{CustomModelData:6002,Tags:["5coins"],display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"#FA6428","text":"5 Coins"}],"text":""}'}} 1

execute as @a[scores={triger=2},nbt={Inventory:[{tag:{CustomModelData:6003}}]}] as @s run scoreboard players add @s coinscore 10
execute as @a[scores={triger=2},nbt={Inventory:[{tag:{CustomModelData:6003}}]}] run execute as @a at @s run clear @s gunpowder{CustomModelData:6003,Tags:["10coins"],display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"dark_gray","text":"10 Coins"}],"text":""}'}} 1

execute as @a[scores={triger=2},nbt={Inventory:[{tag:{CustomModelData:6004}}]}] as @s run scoreboard players add @s coinscore 20
execute as @a[scores={triger=2},nbt={Inventory:[{tag:{CustomModelData:6004}}]}] run execute as @a at @s run clear @s gunpowder{CustomModelData:6004,Tags:["20coin"],display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"gray","text":"20 Coins"}],"text":""}'}} 1

execute as @a[scores={triger=2},nbt={Inventory:[{tag:{CustomModelData:6005}}]}] as @s run scoreboard players add @s coinscore 50
execute as @a[scores={triger=2},nbt={Inventory:[{tag:{CustomModelData:6005}}]}] run execute as @a at @s run clear @s gunpowder{CustomModelData:6005,display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"gold","text":"50 Coins"}],"text":""}'},tags:["50coins"]} 1

execute as @a[scores={triger=2},nbt={Inventory:[{tag:{CustomModelData:6006}}]}] as @s run scoreboard players add @s coinscore 100
execute as @a[scores={triger=2},nbt={Inventory:[{tag:{CustomModelData:6006}}]}] run execute as @a at @s run clear @s gunpowder{CustomModelData:6006,display:{Name:'{"italic":false,"extra":[{"text":""},{"text":"100 Coins"}],"text":""}'},tags:["100coins"]} 1

execute as @a[scores={triger=2},nbt={Inventory:[{tag:{CustomModelData:6007}}]}] as @s run scoreboard players add @s coinscore 500
execute as @a[scores={triger=2},nbt={Inventory:[{tag:{CustomModelData:6007}}]}] run execute as @a at @s run clear @s gunpowder{CustomModelData:6007,display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"dark_purple","text":"500 Coins"}],"text":""}'},tags:["500coins"]} 1

#no dupe
execute as @a[scores={put1=1..}] if entity @s[scores={triger=2}] run tellraw @s ["",{"text":"Auto-selection ","color":"#9CDCFE"},{"text":"[off]","color":"red"}]
execute as @a[scores={put1=1..}] if entity @s[scores={triger=2}] run scoreboard players set @s triger 1

execute as @a[scores={put5=1..}] if entity @s[scores={triger=2}] run tellraw @s ["",{"text":"Auto-selection ","color":"#9CDCFE"},{"text":"[off]","color":"red"}]
execute as @a[scores={put5=1..}] if entity @s[scores={triger=2}] run scoreboard players set @s triger 1

execute as @a[scores={put10=1..}] if entity @s[scores={triger=2}] run tellraw @s ["",{"text":"Auto-selection ","color":"#9CDCFE"},{"text":"[off]","color":"red"}]
execute as @a[scores={put10=1..}] if entity @s[scores={triger=2}] run scoreboard players set @s triger 1

execute as @a[scores={put20=1..}] if entity @s[scores={triger=2}] run tellraw @s ["",{"text":"Auto-selection ","color":"#9CDCFE"},{"text":"[off]","color":"red"}]
execute as @a[scores={put20=1..}] if entity @s[scores={triger=2}] run scoreboard players set @s triger 1

execute as @a[scores={put50=1..}] if entity @s[scores={triger=2}] run tellraw @s ["",{"text":"Auto-selection ","color":"#9CDCFE"},{"text":"[off]","color":"red"}]
execute as @a[scores={put50=1..}] if entity @s[scores={triger=2}] run scoreboard players set @s triger 1

execute as @a[scores={put100=1..}] if entity @s[scores={triger=2}] run tellraw @s ["",{"text":"Auto-selection ","color":"#9CDCFE"},{"text":"[off]","color":"red"}]
execute as @a[scores={put100=1..}] if entity @s[scores={triger=2}] run scoreboard players set @s triger 1

execute as @a[scores={put500=1..}] if entity @s[scores={triger=2}] run tellraw @s ["",{"text":"Auto-selection ","color":"#9CDCFE"},{"text":"[off]","color":"red"}]
execute as @a[scores={put500=1..}] if entity @s[scores={triger=2}] run scoreboard players set @s triger 1

#get coin
execute as @a[scores={put1=1..}] if entity @s[scores={coinscore=1..}] run give @s gunpowder{CustomModelData:6001,Tags:["1coin"],display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"#FA6400","text":"1 Coin"}],"text":""}'}}
execute as @a[scores={put1=1..}] if entity @s[scores={coinscore=1..}] run scoreboard players remove @s coinscore 1
execute as @a[scores={put1=1..}] run scoreboard players reset @s put1 


execute as @a[scores={put5=1..}] if entity @s[scores={coinscore=5..}] run give @s gunpowder{CustomModelData:6002,Tags:["5coins"],display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"#FA6428","text":"5 Coins"}],"text":""}'}}
execute as @a[scores={put5=1..}] if entity @s[scores={coinscore=5..}] run scoreboard players remove @s coinscore 5
execute as @a[scores={put5=1..}] run scoreboard players reset @s put5

execute as @a[scores={put10=1..}] if entity @s[scores={coinscore=10..}] run give @s gunpowder{CustomModelData:6003,Tags:["10coins"],display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"dark_gray","text":"10 Coins"}],"text":""}'}}
execute as @a[scores={put10=1..}] if entity @s[scores={coinscore=10..}] run scoreboard players remove @s coinscore 10
execute as @a[scores={put10=1..}] run scoreboard players reset @s put10

execute as @a[scores={put20=1..}] if entity @s[scores={coinscore=20..}] run give @s gunpowder{CustomModelData:6004,Tags:["20coin"],display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"gray","text":"20 Coins"}],"text":""}'}}
execute as @a[scores={put20=1..}] if entity @s[scores={coinscore=20..}] run scoreboard players remove @s coinscore 20
execute as @a[scores={put20=1..}] run scoreboard players reset @s put20

execute as @a[scores={put50=1..}] if entity @s[scores={coinscore=50..}] run give @s gunpowder{CustomModelData:6005,display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"gold","text":"50 Coins"}],"text":""}'},tags:["50coins"]}
execute as @a[scores={put50=1..}] if entity @s[scores={coinscore=50..}] run scoreboard players remove @s coinscore 50
execute as @a[scores={put50=1..}] run scoreboard players reset @s put50

execute as @a[scores={put100=1..}] if entity @s[scores={coinscore=100..}] run give @s gunpowder{CustomModelData:6006,display:{Name:'{"italic":false,"extra":[{"text":""},{"text":"100 Coins"}],"text":""}'},tags:["100coins"]}
execute as @a[scores={put100=1..}] if entity @s[scores={coinscore=100..}] run scoreboard players remove @s coinscore 100
execute as @a[scores={put100=1..}] run scoreboard players reset @s put100

execute as @a[scores={put500=1..}] if entity @s[scores={coinscore=500..}] run give @s gunpowder{CustomModelData:6007,display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"dark_purple","text":"500 Coins"}],"text":""}'},tags:["500coins"]}
execute as @a[scores={put500=1..}] if entity @s[scores={coinscore=500..}] run scoreboard players remove @s coinscore 500
execute as @a[scores={put500=1..}] run scoreboard players reset @s put500




execute as @a[scores={balance=1..}] run tellraw @s ["",{"text":"Your Balance : "},{"score":{"name":"@s","objective":"coinscore"}}]
scoreboard players set @a balance 0
#menu
function wallet_gui:main

kill @e[ type= minecraft:item , nbt= { Item: { tag: {objd:{gui:1b}}} } ]
execute as @a[nbt={Inventory:[{tag:{objd:{gui:1b}}}]}] run clear @s #wallet_gui:all{objd:{gui:1b}}