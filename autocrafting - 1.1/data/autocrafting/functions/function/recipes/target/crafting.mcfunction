execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:hay_block"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:redstone"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 4.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add target_crafting
execute as @s[tag=target_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:target 1
execute as @s[tag=target_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:hay_block"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=target_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:redstone"}].Count double 1 run scoreboard players remove @s count_in2 4
tag @s remove target_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
