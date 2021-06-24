execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:leather"}].Count
execute if score @s count_in1 matches 7.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add leather_leggings_crafting
execute as @s[tag=leather_leggings_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:leather_leggings 1
execute as @s[tag=leather_leggings_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:leather"}].Count double 1 run scoreboard players remove @s count_in1 7
tag @s remove leather_leggings_crafting
scoreboard players reset @s count_in1
