execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:netherite_scrap"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:gold_ingot"}].Count
execute if score @s count_in1 matches 4.. if score @s count_in2 matches 4.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add netherite_ingot_crafting
execute as @s[tag=netherite_ingot_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:netherite_ingot 1
execute as @s[tag=netherite_ingot_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:netherite_scrap"}].Count double 1 run scoreboard players remove @s count_in1 4
execute as @s[tag=netherite_ingot_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:gold_ingot"}].Count double 1 run scoreboard players remove @s count_in2 4
tag @s remove netherite_ingot_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:netherite_block"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add netherite_ingot_crafting
execute as @s[tag=netherite_ingot_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:netherite_ingot 9
execute as @s[tag=netherite_ingot_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:netherite_block"}].Count double 1 run scoreboard players remove @s count_in1 1
tag @s remove netherite_ingot_crafting
scoreboard players reset @s count_in1
