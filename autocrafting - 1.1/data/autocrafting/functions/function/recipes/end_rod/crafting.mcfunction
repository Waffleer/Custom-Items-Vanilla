execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:popped_chorus_fruit"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:blaze_rod"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add end_rod_crafting
execute as @s[tag=end_rod_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:end_rod 4
execute as @s[tag=end_rod_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:popped_chorus_fruit"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=end_rod_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:blaze_rod"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove end_rod_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
