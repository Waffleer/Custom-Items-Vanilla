execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:chest"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:shulker_shell"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 2.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add shulker_box_crafting
execute as @s[tag=shulker_box_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:shulker_box 1
execute as @s[tag=shulker_box_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:chest"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=shulker_box_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:shulker_shell"}].Count double 1 run scoreboard players remove @s count_in2 2
tag @s remove shulker_box_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
