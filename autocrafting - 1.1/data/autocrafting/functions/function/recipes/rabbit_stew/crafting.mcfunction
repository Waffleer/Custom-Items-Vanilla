execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:baked_potato"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:cooked_rabbit"}].Count
execute store result score @s count_in3 run data get entity @s HandItems[0].tag.content[{id:"minecraft:bowl"}].Count
execute store result score @s count_in4 run data get entity @s HandItems[0].tag.content[{id:"minecraft:carrot"}].Count
execute store result score @s count_in5 run data get entity @s HandItems[0].tag.content[{id:"minecraft:brown_mushroom"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 1.. if score @s count_in3 matches 1.. if score @s count_in4 matches 1.. if score @s count_in5 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add rabbit_stew_crafting
execute as @s[tag=rabbit_stew_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:rabbit_stew 1
execute as @s[tag=rabbit_stew_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:baked_potato"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=rabbit_stew_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:cooked_rabbit"}].Count double 1 run scoreboard players remove @s count_in2 1
execute as @s[tag=rabbit_stew_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:bowl"}].Count double 1 run scoreboard players remove @s count_in3 1
execute as @s[tag=rabbit_stew_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:carrot"}].Count double 1 run scoreboard players remove @s count_in4 1
execute as @s[tag=rabbit_stew_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:brown_mushroom"}].Count double 1 run scoreboard players remove @s count_in5 1
tag @s remove rabbit_stew_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
scoreboard players reset @s count_in3
scoreboard players reset @s count_in4
scoreboard players reset @s count_in5
execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:baked_potato"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.content[{id:"minecraft:cooked_rabbit"}].Count
execute store result score @s count_in3 run data get entity @s HandItems[0].tag.content[{id:"minecraft:bowl"}].Count
execute store result score @s count_in4 run data get entity @s HandItems[0].tag.content[{id:"minecraft:carrot"}].Count
execute store result score @s count_in5 run data get entity @s HandItems[0].tag.content[{id:"minecraft:red_mushroom"}].Count
execute if score @s count_in1 matches 1.. if score @s count_in2 matches 1.. if score @s count_in3 matches 1.. if score @s count_in4 matches 1.. if score @s count_in5 matches 1.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add rabbit_stew_crafting
execute as @s[tag=rabbit_stew_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:rabbit_stew 1
execute as @s[tag=rabbit_stew_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:baked_potato"}].Count double 1 run scoreboard players remove @s count_in1 1
execute as @s[tag=rabbit_stew_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:cooked_rabbit"}].Count double 1 run scoreboard players remove @s count_in2 1
execute as @s[tag=rabbit_stew_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:bowl"}].Count double 1 run scoreboard players remove @s count_in3 1
execute as @s[tag=rabbit_stew_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:carrot"}].Count double 1 run scoreboard players remove @s count_in4 1
execute as @s[tag=rabbit_stew_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:red_mushroom"}].Count double 1 run scoreboard players remove @s count_in5 1
tag @s remove rabbit_stew_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
scoreboard players reset @s count_in3
scoreboard players reset @s count_in4
scoreboard players reset @s count_in5
