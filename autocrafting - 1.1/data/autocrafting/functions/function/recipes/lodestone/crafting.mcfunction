execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:chiseled_stone_bricks"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:netherite_ingot"}].Count
execute if score @s count_in1 matches 8.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add lodestone_crafting
execute as @s[tag=lodestone_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:lodestone 1
execute as @s[tag=lodestone_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:chiseled_stone_bricks"}].Count double 1 run scoreboard players remove @s count_in1 8
execute as @s[tag=lodestone_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:netherite_ingot"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove lodestone_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
