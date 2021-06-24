execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:blaze_rod"}].Count
execute if score @s count_in1 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add blaze_powder_crafting
execute as @s[tag=blaze_powder_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:blaze_powder 2
execute as @s[tag=blaze_powder_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:blaze_rod"}].Count double 1 run scoreboard players remove @s count_in1 1
tag @s remove blaze_powder_crafting
scoreboard players reset @s count_in1
