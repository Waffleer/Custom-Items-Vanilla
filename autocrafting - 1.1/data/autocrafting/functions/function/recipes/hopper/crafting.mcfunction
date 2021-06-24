execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:chest"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:iron_ingot"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 5.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add hopper_crafting
execute as @s[tag=hopper_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:hopper 1
execute as @s[tag=hopper_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:chest"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=hopper_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:iron_ingot"}].Count double 1 run scoreboard players remove @s count_in2 5
tag @s remove hopper_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
