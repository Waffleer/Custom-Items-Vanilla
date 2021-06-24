execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:iron_ingot"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.tags[{id:"planks"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 6.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add shield_crafting
execute as @s[tag=shield_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:shield 1
execute as @s[tag=shield_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:iron_ingot"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=shield_crafting] run scoreboard players set @s adder 6
execute as @s[tag=shield_crafting] run function autocrafting:function/tags/planks/remove
tag @s remove shield_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
