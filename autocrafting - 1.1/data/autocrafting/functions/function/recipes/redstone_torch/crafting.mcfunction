execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:stick"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:redstone"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add redstone_torch_crafting
execute as @s[tag=redstone_torch_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:redstone_torch 1
execute as @s[tag=redstone_torch_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:stick"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=redstone_torch_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:redstone"}].Count double 1 run scoreboard players remove @s count_in2 1
tag @s remove redstone_torch_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
