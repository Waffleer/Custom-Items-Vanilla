execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:milk_bucket"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:sugar"}].Count
execute store result score @s count_in3 run data get entity @s HandItems[0].tag.content[{id:"minecraft:wheat"}].Count
execute store result score @s count_in4 run data get entity @s HandItems[0].tag.content[{id:"minecraft:egg"}].Count
execute if score @s count_in1 matches 3.. if score @s count_in2 matches 2.. if score @s count_in3 matches 3.. if score @s count_in4 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} if block ~ ~ ~ dropper{Items:[{Slot:1b, id:"minecraft:barrier"}]} run tag @s add cake_crafting
execute as @s[tag=cake_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:bucket 3
execute as @s[tag=cake_crafting] run replaceitem block ~ ~ ~ container.1 minecraft:cake 1
execute as @s[tag=cake_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:milk_bucket"}].Count double 1 run scoreboard players remove @s count_in1 3
execute as @s[tag=cake_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:sugar"}].Count double 1 run scoreboard players remove @s count_in2 2
execute as @s[tag=cake_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:wheat"}].Count double 1 run scoreboard players remove @s count_in3 3
execute as @s[tag=cake_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:egg"}].Count double 1 run scoreboard players remove @s count_in4 1
tag @s remove cake_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
scoreboard players reset @s count_in3
scoreboard players reset @s count_in4
