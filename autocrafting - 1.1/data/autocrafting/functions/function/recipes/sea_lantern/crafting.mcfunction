execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:prismarine_shard"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:prismarine_crystals"}].Count
execute if score @s count_in1 matches 4.. if score @s count_in2 matches 5.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add sea_lantern_crafting
execute as @s[tag=sea_lantern_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:sea_lantern 1
execute as @s[tag=sea_lantern_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:prismarine_shard"}].Count double 1 run scoreboard players remove @s count_in1 4
execute as @s[tag=sea_lantern_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:prismarine_crystals"}].Count double 1 run scoreboard players remove @s count_in2 5
tag @s remove sea_lantern_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
