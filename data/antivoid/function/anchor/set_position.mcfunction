# function antivoid:anchor/remove_anchor with storage antivoid:vars
execute store result storage antivoid:vars ANCHOR_X int 1 run random value -25000000..25000000
execute store result storage antivoid:vars ANCHOR_Z int 1 run random value -25000000..25000000
function antivoid:anchor/set_position_2 with storage antivoid:vars
function antivoid:anchor/ensure_platform with storage antivoid:vars

scoreboard players operation Time_Remaining ANTIVOID_TIMER = timer_duration ANTIVOID_VAR
scoreboard players add Time_Remaining ANTIVOID_TIMER 1
time set 0