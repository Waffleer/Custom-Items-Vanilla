execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:ender_pearl"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:blaze_powder"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add ender_eye_crafting
execute as @s[tag=ender_eye_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:ender_eye 1
execute as @s[tag=ender_eye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:ender_pearl"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=ender_eye_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:blaze_powder"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove ender_eye_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
