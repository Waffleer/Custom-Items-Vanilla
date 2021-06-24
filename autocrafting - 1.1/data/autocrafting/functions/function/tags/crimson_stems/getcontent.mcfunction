execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:crimson_stem"}]} run tag @s add add_crimson_stem
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:stripped_crimson_stem"}]} run tag @s add add_stripped_crimson_stem
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:crimson_hyphae"}]} run tag @s add add_crimson_hyphae
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:stripped_crimson_hyphae"}]} run tag @s add add_stripped_crimson_hyphae

execute if entity @s[tag=add_crimson_stem] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_stripped_crimson_stem] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_crimson_hyphae] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_stripped_crimson_hyphae] store result score @s adder run data get block ~ ~ ~ Items[0].Count

execute if entity @s[tag=add_crimson_stem] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:crimson_stem"}].Count
execute if entity @s[tag=add_stripped_crimson_stem] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:stripped_crimson_stem"}].Count
execute if entity @s[tag=add_crimson_hyphae] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:crimson_hyphae"}].Count
execute if entity @s[tag=add_stripped_crimson_hyphae] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:stripped_crimson_hyphae"}].Count

execute if entity @s[tag=add_crimson_stem] store result entity @s HandItems[0].tag.content[{id:"minecraft:crimson_stem"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_stripped_crimson_stem] store result entity @s HandItems[0].tag.content[{id:"minecraft:stripped_crimson_stem"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_crimson_hyphae] store result entity @s HandItems[0].tag.content[{id:"minecraft:crimson_hyphae"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_stripped_crimson_hyphae] store result entity @s HandItems[0].tag.content[{id:"minecraft:stripped_crimson_hyphae"}].Count double 1 run scoreboard players operation @s count += @s adder

execute unless score @s adder matches 0 store result score @s count run data get entity @s HandItems[0].tag.tags[{id:"crimson_stems"}].Count
execute store result entity @s HandItems[0].tag.tags[{id:"crimson_stems"}].Count double 1 run scoreboard players operation @s count += @s adder
execute unless score @s adder matches 0 run replaceitem block ~ ~ ~ container.0 air

scoreboard players reset @s adder
scoreboard players reset @s count

execute if entity @s[tag=add_crimson_stem] run tag @s remove add_crimson_stem
execute if entity @s[tag=add_stripped_crimson_stem] run tag @s remove add_stripped_crimson_stem
execute if entity @s[tag=add_crimson_hyphae] run tag @s remove add_crimson_hyphae
execute if entity @s[tag=add_stripped_crimson_hyphae] run tag @s remove add_stripped_crimson_hyphae
