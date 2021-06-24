execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:quartz"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:redstone"}].Count
execute store result score @s count_in3 run data get entity @s HandItems[0].tag.content[{id:"minecraft:cobblestone"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 2.. if score @s count_in3 matches 6.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add observer_crafting
execute as @s[tag=observer_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:observer 1
execute as @s[tag=observer_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:quartz"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=observer_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:redstone"}].Count double 1 run scoreboard players remove @s count_in2 2
execute as @s[tag=observer_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:cobblestone"}].Count double 1 run scoreboard players remove @s count_in3 6
tag @s remove observer_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
scoreboard players reset @s count_in3
