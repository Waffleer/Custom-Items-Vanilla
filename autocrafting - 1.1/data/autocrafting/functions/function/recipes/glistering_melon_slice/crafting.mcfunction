execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:gold_nugget"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:melon_slice"}].Count
execute if score @s count_in1 matches 8.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add glistering_melon_slice_crafting
execute as @s[tag=glistering_melon_slice_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:glistering_melon_slice 1
execute as @s[tag=glistering_melon_slice_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:gold_nugget"}].Count double 1 run scoreboard players remove @s count_in1 8
execute as @s[tag=glistering_melon_slice_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:melon_slice"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove glistering_melon_slice_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
