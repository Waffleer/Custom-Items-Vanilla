execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:soul_torch"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:iron_nugget"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 8.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add soul_lantern_crafting
execute as @s[tag=soul_lantern_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:soul_lantern 1
execute as @s[tag=soul_lantern_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:soul_torch"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=soul_lantern_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:iron_nugget"}].Count double 1 run scoreboard players remove @s count_in2 8
tag @s remove soul_lantern_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
