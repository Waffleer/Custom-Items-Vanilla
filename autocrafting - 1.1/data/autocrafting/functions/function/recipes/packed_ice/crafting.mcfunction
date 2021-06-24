execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:ice"}].Count
execute if score @s count_in1 matches 9.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add packed_ice_crafting
execute as @s[tag=packed_ice_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:packed_ice 1
execute as @s[tag=packed_ice_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:ice"}].Count double 1 run scoreboard players remove @s count_in1 9
tag @s remove packed_ice_crafting
scoreboard players reset @s count_in1
