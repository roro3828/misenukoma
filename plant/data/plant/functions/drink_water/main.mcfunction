advancement revoke @s only plant:water_bottle

execute if score @s water_level matches 50.. run scoreboard players set @s water_level 100
execute if score @s water_level matches ..49 run scoreboard players add @s water_level 50

function plant:drink_water/set_xp