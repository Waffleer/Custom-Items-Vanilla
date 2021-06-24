execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:sandstone"}]} run tag @s add add_sandstone
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:chiseled_sandstone"}]} run tag @s add add_chiseled_sandstone
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:cut_sandstone"}]} run tag @s add add_cut_sandstone

execute if entity @s[tag=add_sandstone] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_chiseled_sandstone] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_cut_sandstone] store result score @s adder run data get block ~ ~ ~ Items[0].Count

execute if entity @s[tag=add_sandstone] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:sandstone"}].Count
execute if entity @s[tag=add_chiseled_sandstone] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:chiseled_sandstone"}].Count
execute if entity @s[tag=add_cut_sandstone] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:cut_sandstone"}].Count

execute if entity @s[tag=add_sandstone] store result entity @s HandItems[0].tag.content[{id:"minecraft:sandstone"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_chiseled_sandstone] store result entity @s HandItems[0].tag.content[{id:"minecraft:chiseled_sandstone"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_cut_sandstone] store result entity @s HandItems[0].tag.content[{id:"minecraft:cut_sandstone"}].Count double 1 run scoreboard players operation @s count += @s adder

execute unless score @s adder matches 0 store result score @s count run data get entity @s HandItems[0].tag.tags[{id:"autocrafting_sandstone"}].Count
execute store result entity @s HandItems[0].tag.tags[{id:"autocrafting_sandstone"}].Count double 1 run scoreboard players operation @s count += @s adder
execute unless score @s adder matches 0 run replaceitem block ~ ~ ~ container.0 air

scoreboard players reset @s adder
scoreboard players reset @s count

execute if entity @s[tag=add_sandstone] run tag @s remove add_sandstone
execute if entity @s[tag=add_chiseled_sandstone] run tag @s remove add_chiseled_sandstone
execute if entity @s[tag=add_cut_sandstone] run tag @s remove add_cut_sandstone
