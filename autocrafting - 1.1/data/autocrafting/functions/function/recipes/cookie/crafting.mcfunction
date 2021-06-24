execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:wheat"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:cocoa_beans"}].Count
execute if score @s count_in1 matches 2.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add cookie_crafting
execute as @s[tag=cookie_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:cookie 8
execute as @s[tag=cookie_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:wheat"}].Count double 1 run scoreboard players remove @s count_in1 2
execute as @s[tag=cookie_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:cocoa_beans"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove cookie_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
