execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:iron_ingot"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:iron_nugget"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 2.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add chain_crafting
execute as @s[tag=chain_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:chain 1
execute as @s[tag=chain_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:iron_ingot"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=chain_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:iron_nugget"}].Count double 1 run scoreboard players remove @s count_in2 2
tag @s remove chain_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
