execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:stick"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:jungle_planks"}].Count
execute if score @s count_in1 matches 2.. if score @s count_in2 matches 4.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add jungle_fence_crafting
execute as @s[tag=jungle_fence_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:jungle_fence 3
execute as @s[tag=jungle_fence_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:stick"}].Count double 1 run scoreboard players remove @s count_in1 2
execute as @s[tag=jungle_fence_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:jungle_planks"}].Count double 1 run scoreboard players remove @s count_in2 4
tag @s remove jungle_fence_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
