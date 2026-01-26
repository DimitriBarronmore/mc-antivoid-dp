schedule function antivoid:timer/persecond 1s replace

# Decrement timer.
execute if score Time_Remaining ANTIVOID_TIMER >= #CONST_0 ANTIVOID_VAR run scoreboard players remove Time_Remaining ANTIVOID_TIMER 1

# Toggle bar visibility based on timer and configuration.
execute unless score Time_Remaining ANTIVOID_TIMER > #CONST_0 ANTIVOID_VAR run bossbar set minecraft:antivoid_time visible false
execute if score Time_Remaining ANTIVOID_TIMER > #CONST_0 ANTIVOID_VAR run bossbar set minecraft:antivoid_time visible true
execute unless score enable_bossbar ANTIVOID_VAR = #CONST_1 ANTIVOID_VAR run bossbar set minecraft:antivoid_time visible false
# Sidebar Visibility.
execute if score enable_sidebar ANTIVOID_VAR = #CONST_1 ANTIVOID_VAR run scoreboard objectives setdisplay sidebar ANTIVOID_TIMER
execute unless score Time_Remaining ANTIVOID_TIMER > #CONST_0 ANTIVOID_VAR run scoreboard objectives setdisplay sidebar
execute unless score enable_sidebar ANTIVOID_VAR = #CONST_1 ANTIVOID_VAR run scoreboard objectives setdisplay sidebar

# This can probably be done smarter, but this works fine.
scoreboard players operation timerpercent ANTIVOID_VAR = timer_duration ANTIVOID_VAR
scoreboard players operation timerpercent ANTIVOID_VAR -= Time_Remaining ANTIVOID_TIMER
scoreboard players operation timerpercent ANTIVOID_VAR *= #CONST_100 ANTIVOID_VAR
scoreboard players operation timerpercent ANTIVOID_VAR /= timer_duration ANTIVOID_VAR
scoreboard players operation invtimer ANTIVOID_VAR = #CONST_100 ANTIVOID_VAR
scoreboard players operation invtimer ANTIVOID_VAR -= timerpercent ANTIVOID_VAR
execute store result storage antivoid:vars bar_percent int 1 run scoreboard players get invtimer ANTIVOID_VAR
function antivoid:timer/setbar with storage antivoid:vars
data remove storage antivoid:vars bar_percent

# Call-Outs.

execute if score Time_Remaining ANTIVOID_TIMER matches 3600 run tellraw @a {"text":"Three Days Remain...","italic":true,"color":"#B5BEB0"}
execute if score Time_Remaining ANTIVOID_TIMER matches 2400 run tellraw @a {"text":"Two Days Remain...","italic":true,"color":"#B5BEB0"}
execute if score Time_Remaining ANTIVOID_TIMER matches 1200 run tellraw @a {"text":"One Day Remains...","italic":true,"color":"#B5BEB0"}
execute if score Time_Remaining ANTIVOID_TIMER matches 300 run tellraw @a {"text":"Five Minutes Remain...","italic":true,"color":"#B5BEB0"}
execute if score Time_Remaining ANTIVOID_TIMER matches 60 run tellraw @a {"text":"One Minute Remains...","italic":true,"color":"#B5BEB0"}
execute if score Time_Remaining ANTIVOID_TIMER matches 30 run tellraw @a {"text":"30 Seconds...","italic":true,"color":"#B5BEB0"}
execute if score Time_Remaining ANTIVOID_TIMER matches 10 run tellraw @a {"text":"10...","italic":true,"color":"#B5BEB0"}
execute if score Time_Remaining ANTIVOID_TIMER matches 9 run tellraw @a {"text":"9...","italic":true,"color":"#B5BEB0"}
execute if score Time_Remaining ANTIVOID_TIMER matches 8 run tellraw @a {"text":"8...","italic":true,"color":"#B5BEB0"}
execute if score Time_Remaining ANTIVOID_TIMER matches 7 run tellraw @a {"text":"7...","italic":true,"color":"#B5BEB0"}
execute if score Time_Remaining ANTIVOID_TIMER matches 6 run tellraw @a {"text":"6...","italic":true,"color":"#B5BEB0"}
execute if score Time_Remaining ANTIVOID_TIMER matches 5 run tellraw @a {"text":"5...","italic":true,"color":"#B5BEB0"}
execute if score Time_Remaining ANTIVOID_TIMER matches 4 run tellraw @a {"text":"4...","italic":true,"color":"#B5BEB0"}
execute if score Time_Remaining ANTIVOID_TIMER matches 3 run tellraw @a {"text":"3...","italic":true,"color":"#B5BEB0"}
execute if score Time_Remaining ANTIVOID_TIMER matches 2 run tellraw @a {"text":"2...","italic":true,"color":"#B5BEB0"}
execute if score Time_Remaining ANTIVOID_TIMER matches 1 run tellraw @a {"text":"1...","italic":true,"color":"#B5BEB0"}

execute if score Time_Remaining ANTIVOID_TIMER = #CONST_0 ANTIVOID_VAR run function antivoid:anchor/remove_anchor with storage antivoid:vars