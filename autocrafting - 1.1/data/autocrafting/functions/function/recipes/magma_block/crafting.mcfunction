execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:magma_cream"}].Count
execute if score @s count_in1 matches 4.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add magma_block_crafting
execute as @s[tag=magma_block_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:magma_block 1
execute as @s[tag=magma_block_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:magma_cream"}].Count double 1 run scoreboard players remove @s count_in1 4
tag @s remove magma_block_crafting
scoreboard players reset @s count_in1
