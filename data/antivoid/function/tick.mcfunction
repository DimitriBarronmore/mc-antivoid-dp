# First-Spawn Check
execute as @a[tag=!antivoid_firstspawn] run function antivoid:tp_to_void
execute as @a[tag=!antivoid_firstspawn] run tag @s add antivoid_firstspawn

# Give players in the well resistance, just in case.
execute as @a[y=20, dy=-1000000000, x = -1, dx=1, z=-1, dz=1] at @s if dimension antivoid:antivoid run effect give @s resistance 5 10 true
# Teleport players from the well to the overworld.
execute as @a[y=20, dy=-1000000000, x = -1, dx=1, z=-1, dz=1] at @s if dimension antivoid:antivoid run function antivoid:tp_to_overworld

# Teleport players from the overworld platform to the void.
execute as @a[tag=!antivoid_platform_cooldown] at @s if dimension minecraft:overworld if block ~ ~-1 ~ antivoid:void_bedrock run function antivoid:void_countup
## Reset scoreboard and platform tag.
execute as @a at @s unless block ~ ~-1 ~ antivoid:void_bedrock run scoreboard players set @s ANTIVOID_TPCOUNTER 0
execute as @a[tag=!antivoid_platform_cooldown_cooldown, tag=antivoid_platform_cooldown] at @s unless block ~ ~-1 ~ antivoid:void_bedrock run tag @s remove antivoid_platform_cooldown

# Return players who dare exist in an older jump spot.
execute as @a[tag=!antivoid_invoid] unless score @s ANTIVOID_COUNT = #CURRENT_COUNT ANTIVOID_COUNT run function antivoid:timer/killswitch