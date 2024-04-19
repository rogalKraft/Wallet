execute as @a[x_rotation=82..90,nbt={SelectedItem:{id:"minecraft:ghast_tear",tag:{CustomModelData:6008,display:{Name:"{\"italic\":false,\"extra\":[{\"text\":\"\"},{\"color\":\"#FF7000\",\"text\":\"Wallet\"}],\"text\":\"\"}"},tags:["coinbag"]}}}] run tag @s add objd_has_gui_item
execute as @e[type=minecraft:chest_minecart,tag=objd_gui_container] at @s unless entity @e[distance=..2,tag=objd_has_gui_item] run function wallet_gui:gui/removecart
execute as @e[tag=objd_had_gui_item,tag=!objd_has_gui_item] run tag @s remove objd_had_gui_item
execute as @a[tag=objd_has_gui_item,tag=!objd_had_gui_item] at @s anchored eyes run function wallet_gui:gui/summoncart
execute as @a[tag=objd_has_gui_item] at @s anchored eyes run function wallet_gui:objd/execute1
execute as @e[type=minecraft:chest_minecart,tag=objd_gui_container] at @s run function wallet_gui:gui/main
