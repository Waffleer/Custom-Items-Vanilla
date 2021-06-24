execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:carved_pumpkin"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:torch"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add jack_o_lantern_crafting
execute as @s[tag=jack_o_lantern_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:jack_o_lantern 1
execute as @s[tag=jack_o_lantern_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:carved_pumpkin"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=jack_o_lantern_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:torch"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove jack_o_lantern_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
