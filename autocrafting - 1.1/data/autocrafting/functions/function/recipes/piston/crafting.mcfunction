execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:redstone"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:cobblestone"}].Count
execute store result score @s count_in3 run data get entity @s HandItems[0].tag.content[{id:"minecraft:iron_ingot"}].Count
execute store result score @s count_in4 run data get entity @s HandItems[0].tag.tags[{id:"planks"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 4.. if score @s count_in3 matches 1.. if score @s count_in4 matches 3.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add piston_crafting
execute as @s[tag=piston_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:piston 1
execute as @s[tag=piston_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:redstone"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=piston_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:cobblestone"}].Count double 1 run scoreboard players remove @s count_in2 4
execute as @s[tag=piston_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:iron_ingot"}].Count double 1 run scoreboard players remove @s count_in3 1
execute as @s[tag=piston_crafting] run scoreboard players set @s adder 3
execute as @s[tag=piston_crafting] run function autocrafting:function/tags/planks/remove
tag @s remove piston_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
scoreboard players reset @s count_in3
scoreboard players reset @s count_in4
