execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:leather"}].Count
execute if score @s count_in1 matches 8.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add leather_chestplate_crafting
execute as @s[tag=leather_chestplate_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:leather_chestplate 1
execute as @s[tag=leather_chestplate_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:leather"}].Count double 1 run scoreboard players remove @s count_in1 8
tag @s remove leather_chestplate_crafting
scoreboard players reset @s count_in1
