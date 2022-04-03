effect give @s saturation 1 0 true

execute if predicate plant:apple_chance run give @s apple 2
execute if predicate plant:golden_apple_chance run give @s enchanted_golden_apple 1

execute if predicate plant:place if score @s water_level matches 2.. run scoreboard players remove @s water_level 2
execute if score @s water_level matches 1.. run scoreboard players remove @s water_level 1

function plant:drink_water/set_xp