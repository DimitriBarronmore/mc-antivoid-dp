# Ensure the platform exists and is clear.
function antivoid:anchor/ensure_platform with storage antivoid:vars
# This will place the player above the platform with a little unpredictability.
execute store result storage antivoid:vars jitterx int 1 run random value -1..1
execute store result storage antivoid:vars jitterz int 1 run random value -1..1
execute as @s run function antivoid:tp_overworld/jitter with storage antivoid:vars
data remove storage antivoid:vars jitterx
data remove storage antivoid:vars jitterz
# Run transition and cooldown.
execute as @s run function antivoid:tp_overworld/fade_in
tag @s add antivoid_platform_cooldown
tag @s add antivoid_platform_cooldown_cooldown
schedule function antivoid:platform_cooldown_tag 5s replace