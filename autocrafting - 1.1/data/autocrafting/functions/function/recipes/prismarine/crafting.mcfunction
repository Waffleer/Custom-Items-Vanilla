execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:prismarine_shard"}].Count
execute if score @s count_in1 matches 4.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add prismarine_crafting
execute as @s[tag=prismarine_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:prismarine 1
execute as @s[tag=prismarine_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:prismarine_shard"}].Count double 1 run scoreboard players remove @s count_in1 4
tag @s remove prismarine_crafting
scoreboard players reset @s count_in1
