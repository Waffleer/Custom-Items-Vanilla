execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:stick"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:string"}].Count
execute if score @s count_in1 matches 3.. if score @s count_in2 matches 3.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add bow_crafting
execute as @s[tag=bow_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:bow 1
execute as @s[tag=bow_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:stick"}].Count double 1 run scoreboard players remove @s count_in1 3
execute as @s[tag=bow_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:string"}].Count double 1 run scoreboard players remove @s count_in2 3
tag @s remove bow_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
