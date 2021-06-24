execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:redstone_torch"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:redstone"}].Count
execute store result score @s count_in3 run data get entity @s HandItems[0].tag.content[{id:"minecraft:stone"}].Count
execute if score @s count_in1 matches 2.. if score @s count_in2 matches 1.. if score @s count_in3 matches 3.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add repeater_crafting
execute as @s[tag=repeater_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:repeater 1
execute as @s[tag=repeater_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:redstone_torch"}].Count double 1 run scoreboard players remove @s count_in1 2
execute as @s[tag=repeater_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:redstone"}].Count double 1 run scoreboard players remove @s count_in2 1
execute as @s[tag=repeater_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:stone"}].Count double 1 run scoreboard players remove @s count_in3 3
tag @s remove repeater_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
scoreboard players reset @s count_in3
