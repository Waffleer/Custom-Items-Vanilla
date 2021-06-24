execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:smooth_stone"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:furnace"}].Count
execute store result score @s count_in3 run data get entity @s HandItems[0].tag.content[{id:"minecraft:iron_ingot"}].Count
execute if score @s count_in1 matches 3.. if score @s count_in2 matches 1.. if score @s count_in3 matches 5.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add blast_furnace_crafting
execute as @s[tag=blast_furnace_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:blast_furnace 1
execute as @s[tag=blast_furnace_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:smooth_stone"}].Count double 1 run scoreboard players remove @s count_in1 3
execute as @s[tag=blast_furnace_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:furnace"}].Count double 1 run scoreboard players remove @s count_in2 1
execute as @s[tag=blast_furnace_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:iron_ingot"}].Count double 1 run scoreboard players remove @s count_in3 5
tag @s remove blast_furnace_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
scoreboard players reset @s count_in3
