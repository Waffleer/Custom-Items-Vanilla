execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:prismarine_shard"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:black_dye"}].Count
execute if score @s count_in1 matches 8.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add dark_prismarine_crafting
execute as @s[tag=dark_prismarine_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:dark_prismarine 1
execute as @s[tag=dark_prismarine_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:prismarine_shard"}].Count double 1 run scoreboard players remove @s count_in1 8
execute as @s[tag=dark_prismarine_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:black_dye"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove dark_prismarine_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
