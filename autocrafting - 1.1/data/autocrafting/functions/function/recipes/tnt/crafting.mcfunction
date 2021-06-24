execute store result score @s count_in1 run data get entity @s HandItems[0].tag.content[{id:"minecraft:gunpowder"}].Count
execute store result score @s count_in2 run data get entity @s HandItems[0].tag.tags[{id:"autocrafting_sand"}].Count
execute if score @s count_in1 matches 5.. if score @s count_in2 matches 4.. unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run tag @s add tnt_crafting
execute as @s[tag=tnt_crafting] run replaceitem block ~ ~ ~ container.0 minecraft:tnt 1
execute as @s[tag=tnt_crafting] run execute store result entity @s HandItems[0].tag.content[{id:"minecraft:gunpowder"}].Count double 1 run scoreboard players remove @s count_in1 5
execute as @s[tag=tnt_crafting] run scoreboard players set @s adder 4
execute as @s[tag=tnt_crafting] run function autocrafting:function/tags/autocrafting_sand/remove
tag @s remove tnt_crafting
scoreboard players reset @s count_in1
scoreboard players reset @s count_in2
