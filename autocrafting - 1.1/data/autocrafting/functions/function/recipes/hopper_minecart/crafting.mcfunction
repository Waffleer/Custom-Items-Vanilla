execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:hopper"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:minecart"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add hopper_minecart_crafting
execute as @s[tag=hopper_minecart_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:hopper_minecart 1
execute as @s[tag=hopper_minecart_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:hopper"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=hopper_minecart_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:minecart"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove hopper_minecart_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
