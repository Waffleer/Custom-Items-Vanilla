execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:chest"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:tripwire_hook"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add trapped_chest_crafting
execute as @s[tag=trapped_chest_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:trapped_chest 1
execute as @s[tag=trapped_chest_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:chest"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=trapped_chest_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:tripwire_hook"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove trapped_chest_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
