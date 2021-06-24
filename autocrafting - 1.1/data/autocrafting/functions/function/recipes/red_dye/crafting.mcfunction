execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:beetroot"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add red_dye_crafting
execute as @s[tag=red_dye_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:red_dye 1
execute as @s[tag=red_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:beetroot"}].Count double 1 run scoreboard players remove @s count_in1 1
tag @s remove red_dye_crafting
scoreboard players reset @s count_in1
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:poppy"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add red_dye_crafting
execute as @s[tag=red_dye_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:red_dye 1
execute as @s[tag=red_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:poppy"}].Count double 1 run scoreboard players remove @s count_in1 1
tag @s remove red_dye_crafting
scoreboard players reset @s count_in1
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:rose_bush"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add red_dye_crafting
execute as @s[tag=red_dye_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:red_dye 2
execute as @s[tag=red_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:rose_bush"}].Count double 1 run scoreboard players remove @s count_in1 1
tag @s remove red_dye_crafting
scoreboard players reset @s count_in1
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:red_tulip"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add red_dye_crafting
execute as @s[tag=red_dye_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:red_dye 1
execute as @s[tag=red_dye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:red_tulip"}].Count double 1 run scoreboard players remove @s count_in1 1
tag @s remove red_dye_crafting
scoreboard players reset @s count_in1
