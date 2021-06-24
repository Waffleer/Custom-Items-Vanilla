execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:red_wool"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:stick"}].Count
execute if score @s count_in1 matches 6.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add red_banner_crafting
execute as @s[tag=red_banner_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:red_banner 1
execute as @s[tag=red_banner_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:red_wool"}].Count double 1 run scoreboard players remove @s count_in1 6
execute as @s[tag=red_banner_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:stick"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove red_banner_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
