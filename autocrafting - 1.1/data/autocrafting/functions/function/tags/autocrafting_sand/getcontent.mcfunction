execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:sand"}]} run tag @s add add_sand
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:red_sand"}]} run tag @s add add_red_sand

execute if entity @s[tag=add_sand] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_red_sand] store result score @s adder run data get block ~ ~ ~ Items[0].Count

execute if entity @s[tag=add_sand] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:sand"}].Count
execute if entity @s[tag=add_red_sand] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:red_sand"}].Count

execute if entity @s[tag=add_sand] store result entity @s HandItems[0].tag.content[{id:"minecraft:sand"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_red_sand] store result entity @s HandItems[0].tag.content[{id:"minecraft:red_sand"}].Count double 1 run scoreboard players operation @s count += @s adder

execute unless score @s adder matches 0 store result score @s count run data get entity @s HandItems[0].tag.tags[{id:"autocrafting_sand"}].Count
execute store result entity @s HandItems[0].tag.tags[{id:"autocrafting_sand"}].Count double 1 run scoreboard players operation @s count += @s adder
execute unless score @s adder matches 0 run replaceitem block ~ ~ ~ container.0 air

scoreboard players reset @s adder
scoreboard players reset @s count

execute if entity @s[tag=add_sand] run tag @s remove add_sand
execute if entity @s[tag=add_red_sand] run tag @s remove add_red_sand
