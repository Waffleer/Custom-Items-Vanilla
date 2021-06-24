execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:nether_wart"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:nether_brick"}].Count
execute if score @s count_in1 matches 2.. if score @s count_in2 matches 2.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add red_nether_bricks_crafting
execute as @s[tag=red_nether_bricks_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:red_nether_bricks 1
execute as @s[tag=red_nether_bricks_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:nether_wart"}].Count double 1 run scoreboard players remove @s count_in1 2
execute as @s[tag=red_nether_bricks_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:nether_brick"}].Count double 1 run scoreboard players remove @s count_in2 2
tag @s remove red_nether_bricks_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
