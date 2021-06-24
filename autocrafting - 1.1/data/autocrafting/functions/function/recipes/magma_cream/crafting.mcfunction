execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:blaze_powder"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:slime_ball"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add magma_cream_crafting
execute as @s[tag=magma_cream_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:magma_cream 1
execute as @s[tag=magma_cream_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:blaze_powder"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=magma_cream_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:slime_ball"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove magma_cream_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
