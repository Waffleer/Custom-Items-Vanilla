execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:slime_block"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add slime_ball_crafting
execute as @s[tag=slime_ball_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:slime_ball 9
execute as @s[tag=slime_ball_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:slime_block"}].Count double 1 run scoreboard players remove @s count_in1 1
tag @s remove slime_ball_crafting
scoreboard players reset @s count_in1
