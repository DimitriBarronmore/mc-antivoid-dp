function antivoid:anchor/remove_platform with storage antivoid:vars
kill @e[type=minecraft:item_display, tag=antivoid.anchor]
$execute in minecraft:overworld positioned $(ANCHOR_X) $(ANCHOR_Y) $(ANCHOR_Z) run forceload remove ~-1 ~-1 ~1 ~1
data remove storage antivoid:vars ANCHOR_X
data remove storage antivoid:vars ANCHOR_Z
data remove storage antivoid:vars ANCHOR_Y
scoreboard players add #CURRENT_COUNT ANTIVOID_COUNT 1