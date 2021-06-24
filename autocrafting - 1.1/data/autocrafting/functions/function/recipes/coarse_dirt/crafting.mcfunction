execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:dirt"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:gravel"}].Count
execute if score @s count_in1 matches 2.. if score @s count_in2 matches 2.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add coarse_dirt_crafting
execute as @s[tag=coarse_dirt_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:coarse_dirt 4
execute as @s[tag=coarse_dirt_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:dirt"}].Count double 1 run scoreboard players remove @s count_in1 2
execute as @s[tag=coarse_dirt_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:gravel"}].Count double 1 run scoreboard players remove @s count_in2 2
tag @s remove coarse_dirt_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
