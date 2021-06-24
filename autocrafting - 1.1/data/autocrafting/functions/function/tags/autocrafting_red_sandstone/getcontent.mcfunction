execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:red_sandstone"}]} run tag @s add add_red_sandstone
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:chiseled_red_sandstone"}]} run tag @s add add_chiseled_red_sandstone
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:cut_red_sandstone"}]} run tag @s add add_cut_red_sandstone

execute if entity @s[tag=add_red_sandstone] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_chiseled_red_sandstone] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_cut_red_sandstone] store result score @s adder run data get block ~ ~ ~ Items[0].Count

execute if entity @s[tag=add_red_sandstone] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:red_sandstone"}].Count
execute if entity @s[tag=add_chiseled_red_sandstone] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:chiseled_red_sandstone"}].Count
execute if entity @s[tag=add_cut_red_sandstone] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:cut_red_sandstone"}].Count

execute if entity @s[tag=add_red_sandstone] store result entity @s HandItems[0].tag.content[{id:"minecraft:red_sandstone"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_chiseled_red_sandstone] store result entity @s HandItems[0].tag.content[{id:"minecraft:chiseled_red_sandstone"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_cut_red_sandstone] store result entity @s HandItems[0].tag.content[{id:"minecraft:cut_red_sandstone"}].Count double 1 run scoreboard players operation @s count += @s adder

execute unless score @s adder matches 0 store result score @s count run data get entity @s HandItems[0].tag.tags[{id:"autocrafting_red_sandstone"}].Count
execute store result entity @s HandItems[0].tag.tags[{id:"autocrafting_red_sandstone"}].Count double 1 run scoreboard players operation @s count += @s adder
execute unless score @s adder matches 0 run replaceitem block ~ ~ ~ container.0 air

scoreboard players reset @s adder
scoreboard players reset @s count

execute if entity @s[tag=add_red_sandstone] run tag @s remove add_red_sandstone
execute if entity @s[tag=add_chiseled_red_sandstone] run tag @s remove add_chiseled_red_sandstone
execute if entity @s[tag=add_cut_red_sandstone] run tag @s remove add_cut_red_sandstone
