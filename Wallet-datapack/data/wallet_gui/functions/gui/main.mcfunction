execute store result score @p[distance=..1] objd_gui_count if data entity @s Items[].tag.objd.gui
execute if score @p[distance=..1] objd_gui_count matches 0 run function wallet_gui:gui/reset_gui1
execute unless score @p[distance=..1] objd_gui_count matches 27 run function wallet_gui:gui/actions1
execute if block ~ ~-1 ~ minecraft:hopper run data merge block ~ ~-1 ~ {TransferCooldown:20d}
