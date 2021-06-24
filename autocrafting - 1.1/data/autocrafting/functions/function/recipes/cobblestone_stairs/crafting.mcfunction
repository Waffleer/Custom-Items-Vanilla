execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:cobblestone"}].Count
execute if score @s count_in1 matches 6.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add cobblestone_stairs_crafting
execute as @s[tag=cobblestone_stairs_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:cobblestone_stairs 4
execute as @s[tag=cobblestone_stairs_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:cobblestone"}].Count double 1 run scoreboard players remove @s count_in1 6
tag @s remove cobblestone_stairs_crafting
scoreboard players reset @s count_in1
