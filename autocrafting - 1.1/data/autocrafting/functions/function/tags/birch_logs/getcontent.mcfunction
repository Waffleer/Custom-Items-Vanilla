execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:birch_log"}]} run tag @s add add_birch_log
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:birch_wood"}]} run tag @s add add_birch_wood
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:stripped_birch_log"}]} run tag @s add add_stripped_birch_log
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:stripped_birch_wood"}]} run tag @s add add_stripped_birch_wood

execute if entity @s[tag=add_birch_log] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_birch_wood] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_stripped_birch_log] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_stripped_birch_wood] store result score @s adder run data get block ~ ~ ~ Items[0].Count

execute if entity @s[tag=add_birch_log] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:birch_log"}].Count
execute if entity @s[tag=add_birch_wood] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:birch_wood"}].Count
execute if entity @s[tag=add_stripped_birch_log] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:stripped_birch_log"}].Count
execute if entity @s[tag=add_stripped_birch_wood] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:stripped_birch_wood"}].Count

execute if entity @s[tag=add_birch_log] store result entity @s HandItems[0].tag.content[{id:"minecraft:birch_log"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_birch_wood] store result entity @s HandItems[0].tag.content[{id:"minecraft:birch_wood"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_stripped_birch_log] store result entity @s HandItems[0].tag.content[{id:"minecraft:stripped_birch_log"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_stripped_birch_wood] store result entity @s HandItems[0].tag.content[{id:"minecraft:stripped_birch_wood"}].Count double 1 run scoreboard players operation @s count += @s adder

execute unless score @s adder matches 0 store result score @s count run data get entity @s HandItems[0].tag.tags[{id:"birch_logs"}].Count
execute store result entity @s HandItems[0].tag.tags[{id:"birch_logs"}].Count double 1 run scoreboard players operation @s count += @s adder
execute unless score @s adder matches 0 run replaceitem block ~ ~ ~ container.0 air

scoreboard players reset @s adder
scoreboard players reset @s count

execute if entity @s[tag=add_birch_log] run tag @s remove add_birch_log
execute if entity @s[tag=add_birch_wood] run tag @s remove add_birch_wood
execute if entity @s[tag=add_stripped_birch_log] run tag @s remove add_stripped_birch_log
execute if entity @s[tag=add_stripped_birch_wood] run tag @s remove add_stripped_birch_wood
