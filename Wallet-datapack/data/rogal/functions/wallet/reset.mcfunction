##
 # reset.mcfunction
 # wallet
 #
 # Created by Rogal.
##
tellraw @a ["",{"text":"Datapack","color":"blue"},{"text":" Wallet","color":"yellow"},{"text":" active","color":"green"},{"text":"\n"},{"text":"By. Rogal","color":"blue"}]
scoreboard objectives add balance trigger
scoreboard objectives add coinscore dummy
scoreboard objectives add auto-selection trigger
scoreboard objectives add auto-selection-off trigger
scoreboard objectives add triger dummy

scoreboard objectives add put1 trigger
scoreboard objectives add put5 trigger
scoreboard objectives add put10 trigger
scoreboard objectives add put20 trigger
scoreboard objectives add put50 trigger
scoreboard objectives add put100 trigger
scoreboard objectives add put500 trigger

#menu
function wallet_gui:load
