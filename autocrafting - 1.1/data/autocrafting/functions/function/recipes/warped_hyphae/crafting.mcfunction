execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:warped_stem"}].Count
execute if score @s count_in1 matches 4.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add warped_hyphae_crafting
execute as @s[tag=warped_hyphae_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:warped_hyphae 3
execute as @s[tag=warped_hyphae_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:warped_stem"}].Count double 1 run scoreboard players remove @s count_in1 4
tag @s remove warped_hyphae_crafting
scoreboard players reset @s count_in1
