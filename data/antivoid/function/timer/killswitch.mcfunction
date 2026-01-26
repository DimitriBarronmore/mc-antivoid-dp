tag @s add antivoid_invoid
execute if score kill_lingering ANTIVOID_VAR = #CONST_0 ANTIVOID_VAR run function antivoid:tp_to_void
# Kill the player twice, just in case the first one doesn't take.
execute unless score kill_lingering ANTIVOID_VAR = #CONST_0 ANTIVOID_VAR run damage @s 9999999 minecraft:bad_respawn_point
execute unless score kill_lingering ANTIVOID_VAR = #CONST_0 ANTIVOID_VAR run kill @s