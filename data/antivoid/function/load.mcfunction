scoreboard objectives add ANTIVOID_COUNT dummy
# execute unless score #CURRENT_COUNT ANTIVOID_COUNT matches -2147483648..2147483647 run scoreboard players add #CURRENT_COUNT ANTIVOID_COUNT 0

scoreboard objectives add ANTIVOID_TPCOUNTER dummy
scoreboard objectives add ANTIVOID_VAR dummy "Antivoid Variables"
scoreboard objectives add ANTIVOID_TIMER dummy "ANTIVOID"

scoreboard players set #CONST_0 ANTIVOID_VAR 0
scoreboard players set #CONST_1 ANTIVOID_VAR 1
scoreboard players set #CONST_2 ANTIVOID_VAR 2
scoreboard players set #CONST_100 ANTIVOID_VAR 100

bossbar add antivoid_time {"text":"Time Remaining","bold":true,"color":"#B5BEB0"}

# First Run
execute unless score first_run ANTIVOID_VAR matches 1 run function antivoid:config/initial
execute unless score first_run ANTIVOID_VAR matches 1 run tellraw @a ["",{"text":"Welcome to ANTIVOID.","bold":true,"italic":true,"color":"dark_green"},"\n",{"text":"Please consider checking the ","color":"dark_green"},{"text":"[settings]","underlined":true,"color":"yellow","click_event":{"action":"run_command","command":"/function antivoid:config/menu"}},{"text":".","color":"dark_green"}]
scoreboard players set first_run ANTIVOID_VAR 1

# Set up void well
execute in antivoid:antivoid run setworldspawn 0 0 0
schedule function antivoid:ensure_well 1t replace

schedule function antivoid:timer/persecond 1s replace

#say "loaded antivoid"