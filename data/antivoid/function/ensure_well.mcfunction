# execute in antivoid:antivoid run fill -2 0 -2 2 41 2 antivoid:void_bedrock destroy
execute in antivoid:antivoid run fill -2 0 -2 2 40 -2 antivoid:void_bedrock
execute in antivoid:antivoid run fill -2 0 -2 -2 40 2 antivoid:void_bedrock
execute in antivoid:antivoid run fill 2 0 2 2 40 -2 antivoid:void_bedrock
execute in antivoid:antivoid run fill 2 0 2 -2 40 2 antivoid:void_bedrock

execute in antivoid:antivoid run fill -1 1 -1 1 40 1 minecraft:air destroy
execute in antivoid:antivoid run fill -2 41 -2 2 42 2 minecraft:air destroy
execute in antivoid:antivoid run fill -1 1 -1 1 1 1 minecraft:water

# Continuously reset the well.
schedule function antivoid:ensure_well 5s replace