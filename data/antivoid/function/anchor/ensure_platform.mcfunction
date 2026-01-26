function antivoid:anchor/remove_platform with storage antivoid:vars
execute in minecraft:overworld positioned as @e[limit=1,type=item_display, tag=antivoid.anchor] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 antivoid:void_bedrock replace
execute in minecraft:overworld positioned as @e[limit=1,type=item_display, tag=antivoid.anchor] run fill ~-1 ~ ~-1 ~1 ~2 ~1 minecraft:air destroy