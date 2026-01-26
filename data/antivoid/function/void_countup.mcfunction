particle minecraft:end_rod ~ ~1 ~ 0.5 1 0.5 0 20 normal
particle minecraft:enchant ~ ~1 ~ 0.5 1 0.5 0 10 normal
scoreboard players add @s ANTIVOID_TPCOUNTER 1
#execute if score @s ANTIVOID_TPCOUNTER matches 80 run scoreboard players set @s ANTIVOID_TPCOUNTER -100
execute if score @s ANTIVOID_TPCOUNTER matches 80 run function antivoid:tp_to_void