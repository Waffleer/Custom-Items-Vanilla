execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:soul_sand"}]} run tag @s add add_soul_sand
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:soul_soil"}]} run tag @s add add_soul_soil

execute if entity @s[tag=add_soul_sand] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_soul_soil] store result score @s adder run data get block ~ ~ ~ Items[0].Count

execute if entity @s[tag=add_soul_sand] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:soul_sand"}].Count
execute if entity @s[tag=add_soul_soil] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:soul_soil"}].Count

execute if entity @s[tag=add_soul_sand] store result entity @s HandItems[0].tag.content[{id:"minecraft:soul_sand"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_soul_soil] store result entity @s HandItems[0].tag.content[{id:"minecraft:soul_soil"}].Count double 1 run scoreboard players operation @s count += @s adder

execute unless score @s adder matches 0 store result score @s count run data get entity @s HandItems[0].tag.tags[{id:"soul_fire_base_blocks"}].Count
execute store result entity @s HandItems[0].tag.tags[{id:"soul_fire_base_blocks"}].Count double 1 run scoreboard players operation @s count += @s adder
execute unless score @s adder matches 0 run replaceitem block ~ ~ ~ container.0 air

scoreboard players reset @s adder
scoreboard players reset @s count

execute if entity @s[tag=add_soul_sand] run tag @s remove add_soul_sand
execute if entity @s[tag=add_soul_soil] run tag @s remove add_soul_soil
