execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:leather"}].Count
execute if score @s count_in1 matches 5.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add leather_helmet_crafting
execute as @s[tag=leather_helmet_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:leather_helmet 1
execute as @s[tag=leather_helmet_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:leather"}].Count double 1 run scoreboard players remove @s count_in1 5
tag @s remove leather_helmet_crafting
scoreboard players reset @s count_in1
