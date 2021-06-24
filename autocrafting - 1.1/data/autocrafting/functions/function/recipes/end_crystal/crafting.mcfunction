execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:ghast_tear"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:ender_eye"}].Count
execute store result score @s count_in3 run data get entity @s HandItems[0].tag.content[{id:"minecraft:glass"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 1.. if score @s count_in3 matches 7.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add end_crystal_crafting
execute as @s[tag=end_crystal_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:end_crystal 1
execute as @s[tag=end_crystal_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:ghast_tear"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=end_crystal_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:ender_eye"}].Count double 1 run scoreboard players remove @s count_in2 1
execute as @s[tag=end_crystal_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:glass"}].Count double 1 run scoreboard players remove @s count_in3 7
tag @s remove end_crystal_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
scoreboard players reset @s count_in3
