summon minecraft:chest_minecart ^ ^ ^2 {CustomDisplayTile:1d,DisplayState:{Name:"air"},DisplayOffset:1d,Tags:["objd_gui_container"]}
execute as @e[distance=..4,tag=objd_gui_container] run function wallet_gui:gui/reset_gui1
