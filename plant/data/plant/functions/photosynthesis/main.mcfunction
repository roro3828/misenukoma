execute if predicate plant:light if score @s water_level matches 1.. run particle minecraft:instant_effect ~ ~0.5 ~ 0.3 0.4 0.3 1 1

execute if score @s cooltime matches 20.. if predicate plant:light if score @s water_level matches 1.. run function plant:photosynthesis/generate
execute if score @s cooltime matches 20.. if predicate plant:in_water run function plant:photosynthesis/in_water
execute if score @s cooltime matches 20.. if predicate plant:weather unless predicate plant:place run function plant:photosynthesis/in_water

execute if score @s cooltime matches 20.. run scoreboard players set @s cooltime 0

execute unless predicate plant:light run function plant:photosynthesis/shade

execute if score @s water_level matches ..0 run effect give @s wither 1 127 true