execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:oak_planks"}].Count
execute if score @s count_in1 matches 6.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add oak_trapdoor_crafting
execute as @s[tag=oak_trapdoor_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:oak_trapdoor 2
execute as @s[tag=oak_trapdoor_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:oak_planks"}].Count double 1 run scoreboard players remove @s count_in1 6
tag @s remove oak_trapdoor_crafting
scoreboard players reset @s count_in1
