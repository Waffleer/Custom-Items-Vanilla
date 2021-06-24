execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:glass"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:light_blue_dye"}].Count
execute if score @s count_in1 matches 8.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add light_blue_stained_glass_crafting
execute as @s[tag=light_blue_stained_glass_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:light_blue_stained_glass 8
execute as @s[tag=light_blue_stained_glass_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:glass"}].Count double 1 run scoreboard players remove @s count_in1 8
execute as @s[tag=light_blue_stained_glass_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:light_blue_dye"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove light_blue_stained_glass_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
