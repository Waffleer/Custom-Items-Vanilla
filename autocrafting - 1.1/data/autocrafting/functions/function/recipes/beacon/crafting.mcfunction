execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:nether_star"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:glass"}].Count
execute store result score @s count_in3 run data get entity @s HandItems[0].tag.content[{id:"minecraft:obsidian"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 5.. if score @s count_in3 matches 3.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add beacon_crafting
execute as @s[tag=beacon_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:beacon 1
execute as @s[tag=beacon_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:nether_star"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=beacon_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:glass"}].Count double 1 run scoreboard players remove @s count_in2 5
execute as @s[tag=beacon_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:obsidian"}].Count double 1 run scoreboard players remove @s count_in3 3
tag @s remove beacon_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
scoreboard players reset @s count_in3
