execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:netherite_ingot"}].Count
execute if score @s count_in1 matches 9.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add netherite_block_crafting
execute as @s[tag=netherite_block_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:netherite_block 1
execute as @s[tag=netherite_block_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:netherite_ingot"}].Count double 1 run scoreboard players remove @s count_in1 9
tag @s remove netherite_block_crafting
scoreboard players reset @s count_in1
