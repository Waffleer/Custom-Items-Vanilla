execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:piston"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:slime_ball"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add sticky_piston_crafting
execute as @s[tag=sticky_piston_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:sticky_piston 1
execute as @s[tag=sticky_piston_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:piston"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=sticky_piston_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:slime_ball"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove sticky_piston_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
