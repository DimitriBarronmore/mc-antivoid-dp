$execute in minecraft:overworld positioned $(ANCHOR_X) 0 $(ANCHOR_Z) run forceload add ~-1 ~-1 ~1 ~1
# Note: For some reason the following always returns 0. I don't know why.
$execute in minecraft:overworld positioned $(ANCHOR_X) 0 $(ANCHOR_Z) positioned over motion_blocking_no_leaves run summon minecraft:item_display ~ ~ ~ {Tags:["antivoid.anchor"]}
execute in minecraft:overworld store result storage antivoid:vars ANCHOR_Y int 1 run data get entity @e[limit=1,type=item_display, tag=antivoid.anchor] Pos[1]
# kill @e[type=minecraft:item_display, tag=antivoid.anchor]