#execute unless score #ANCHOR_X ANTIVOID_VAR matches -2147483648..2147483647 run function antivoid:tp_overworld/random_anchor

tag @s remove antivoid_invoid
execute unless data storage antivoid:vars ANCHOR_X run function antivoid:anchor/set_position
function antivoid:tp_overworld/run_tp with storage antivoid:vars
scoreboard players operation @s ANTIVOID_COUNT = #CURRENT_COUNT ANTIVOID_COUNT