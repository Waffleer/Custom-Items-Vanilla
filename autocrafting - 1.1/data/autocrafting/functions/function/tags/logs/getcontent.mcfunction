execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:crimson_stem"}]} run tag @s add add_crimson_stem
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:stripped_crimson_stem"}]} run tag @s add add_stripped_crimson_stem
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:crimson_hyphae"}]} run tag @s add add_crimson_hyphae
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:stripped_crimson_hyphae"}]} run tag @s add add_stripped_crimson_hyphae
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:warped_stem"}]} run tag @s add add_warped_stem
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:stripped_warped_stem"}]} run tag @s add add_stripped_warped_stem
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:warped_hyphae"}]} run tag @s add add_warped_hyphae
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:stripped_warped_hyphae"}]} run tag @s add add_stripped_warped_hyphae
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:dark_oak_log"}]} run tag @s add add_dark_oak_log
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:dark_oak_wood"}]} run tag @s add add_dark_oak_wood
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:stripped_dark_oak_log"}]} run tag @s add add_stripped_dark_oak_log
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:stripped_dark_oak_wood"}]} run tag @s add add_stripped_dark_oak_wood
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:oak_log"}]} run tag @s add add_oak_log
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:oak_wood"}]} run tag @s add add_oak_wood
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:stripped_oak_log"}]} run tag @s add add_stripped_oak_log
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:stripped_oak_wood"}]} run tag @s add add_stripped_oak_wood
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:acacia_log"}]} run tag @s add add_acacia_log
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:acacia_wood"}]} run tag @s add add_acacia_wood
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:stripped_acacia_log"}]} run tag @s add add_stripped_acacia_log
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:stripped_acacia_wood"}]} run tag @s add add_stripped_acacia_wood
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:birch_log"}]} run tag @s add add_birch_log
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:birch_wood"}]} run tag @s add add_birch_wood
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:stripped_birch_log"}]} run tag @s add add_stripped_birch_log
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:stripped_birch_wood"}]} run tag @s add add_stripped_birch_wood
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:jungle_log"}]} run tag @s add add_jungle_log
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:jungle_wood"}]} run tag @s add add_jungle_wood
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:stripped_jungle_log"}]} run tag @s add add_stripped_jungle_log
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:stripped_jungle_wood"}]} run tag @s add add_stripped_jungle_wood
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:spruce_log"}]} run tag @s add add_spruce_log
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:spruce_wood"}]} run tag @s add add_spruce_wood
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:stripped_spruce_log"}]} run tag @s add add_stripped_spruce_log
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:stripped_spruce_wood"}]} run tag @s add add_stripped_spruce_wood

execute if entity @s[tag=add_crimson_stem] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_stripped_crimson_stem] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_crimson_hyphae] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_stripped_crimson_hyphae] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_warped_stem] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_stripped_warped_stem] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_warped_hyphae] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_stripped_warped_hyphae] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_dark_oak_log] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_dark_oak_wood] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_stripped_dark_oak_log] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_stripped_dark_oak_wood] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_oak_log] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_oak_wood] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_stripped_oak_log] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_stripped_oak_wood] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_acacia_log] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_acacia_wood] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_stripped_acacia_log] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_stripped_acacia_wood] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_birch_log] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_birch_wood] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_stripped_birch_log] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_stripped_birch_wood] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_jungle_log] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_jungle_wood] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_stripped_jungle_log] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_stripped_jungle_wood] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_spruce_log] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_spruce_wood] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_stripped_spruce_log] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_stripped_spruce_wood] store result score @s adder run data get block ~ ~ ~ Items[0].Count

execute if entity @s[tag=add_crimson_stem] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:crimson_stem"}].Count
execute if entity @s[tag=add_stripped_crimson_stem] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:stripped_crimson_stem"}].Count
execute if entity @s[tag=add_crimson_hyphae] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:crimson_hyphae"}].Count
execute if entity @s[tag=add_stripped_crimson_hyphae] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:stripped_crimson_hyphae"}].Count
execute if entity @s[tag=add_warped_stem] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:warped_stem"}].Count
execute if entity @s[tag=add_stripped_warped_stem] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:stripped_warped_stem"}].Count
execute if entity @s[tag=add_warped_hyphae] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:warped_hyphae"}].Count
execute if entity @s[tag=add_stripped_warped_hyphae] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:stripped_warped_hyphae"}].Count
execute if entity @s[tag=add_dark_oak_log] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:dark_oak_log"}].Count
execute if entity @s[tag=add_dark_oak_wood] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:dark_oak_wood"}].Count
execute if entity @s[tag=add_stripped_dark_oak_log] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:stripped_dark_oak_log"}].Count
execute if entity @s[tag=add_stripped_dark_oak_wood] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:stripped_dark_oak_wood"}].Count
execute if entity @s[tag=add_oak_log] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:oak_log"}].Count
execute if entity @s[tag=add_oak_wood] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:oak_wood"}].Count
execute if entity @s[tag=add_stripped_oak_log] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:stripped_oak_log"}].Count
execute if entity @s[tag=add_stripped_oak_wood] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:stripped_oak_wood"}].Count
execute if entity @s[tag=add_acacia_log] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:acacia_log"}].Count
execute if entity @s[tag=add_acacia_wood] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:acacia_wood"}].Count
execute if entity @s[tag=add_stripped_acacia_log] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:stripped_acacia_log"}].Count
execute if entity @s[tag=add_stripped_acacia_wood] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:stripped_acacia_wood"}].Count
execute if entity @s[tag=add_birch_log] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:birch_log"}].Count
execute if entity @s[tag=add_birch_wood] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:birch_wood"}].Count
execute if entity @s[tag=add_stripped_birch_log] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:stripped_birch_log"}].Count
execute if entity @s[tag=add_stripped_birch_wood] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:stripped_birch_wood"}].Count
execute if entity @s[tag=add_jungle_log] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:jungle_log"}].Count
execute if entity @s[tag=add_jungle_wood] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:jungle_wood"}].Count
execute if entity @s[tag=add_stripped_jungle_log] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:stripped_jungle_log"}].Count
execute if entity @s[tag=add_stripped_jungle_wood] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:stripped_jungle_wood"}].Count
execute if entity @s[tag=add_spruce_log] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:spruce_log"}].Count
execute if entity @s[tag=add_spruce_wood] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:spruce_wood"}].Count
execute if entity @s[tag=add_stripped_spruce_log] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:stripped_spruce_log"}].Count
execute if entity @s[tag=add_stripped_spruce_wood] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:stripped_spruce_wood"}].Count

execute if entity @s[tag=add_crimson_stem] store result entity @s HandItems[0].tag.content[{id:"minecraft:crimson_stem"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_stripped_crimson_stem] store result entity @s HandItems[0].tag.content[{id:"minecraft:stripped_crimson_stem"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_crimson_hyphae] store result entity @s HandItems[0].tag.content[{id:"minecraft:crimson_hyphae"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_stripped_crimson_hyphae] store result entity @s HandItems[0].tag.content[{id:"minecraft:stripped_crimson_hyphae"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_warped_stem] store result entity @s HandItems[0].tag.content[{id:"minecraft:warped_stem"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_stripped_warped_stem] store result entity @s HandItems[0].tag.content[{id:"minecraft:stripped_warped_stem"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_warped_hyphae] store result entity @s HandItems[0].tag.content[{id:"minecraft:warped_hyphae"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_stripped_warped_hyphae] store result entity @s HandItems[0].tag.content[{id:"minecraft:stripped_warped_hyphae"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_dark_oak_log] store result entity @s HandItems[0].tag.content[{id:"minecraft:dark_oak_log"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_dark_oak_wood] store result entity @s HandItems[0].tag.content[{id:"minecraft:dark_oak_wood"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_stripped_dark_oak_log] store result entity @s HandItems[0].tag.content[{id:"minecraft:stripped_dark_oak_log"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_stripped_dark_oak_wood] store result entity @s HandItems[0].tag.content[{id:"minecraft:stripped_dark_oak_wood"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_oak_log] store result entity @s HandItems[0].tag.content[{id:"minecraft:oak_log"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_oak_wood] store result entity @s HandItems[0].tag.content[{id:"minecraft:oak_wood"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_stripped_oak_log] store result entity @s HandItems[0].tag.content[{id:"minecraft:stripped_oak_log"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_stripped_oak_wood] store result entity @s HandItems[0].tag.content[{id:"minecraft:stripped_oak_wood"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_acacia_log] store result entity @s HandItems[0].tag.content[{id:"minecraft:acacia_log"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_acacia_wood] store result entity @s HandItems[0].tag.content[{id:"minecraft:acacia_wood"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_stripped_acacia_log] store result entity @s HandItems[0].tag.content[{id:"minecraft:stripped_acacia_log"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_stripped_acacia_wood] store result entity @s HandItems[0].tag.content[{id:"minecraft:stripped_acacia_wood"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_birch_log] store result entity @s HandItems[0].tag.content[{id:"minecraft:birch_log"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_birch_wood] store result entity @s HandItems[0].tag.content[{id:"minecraft:birch_wood"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_stripped_birch_log] store result entity @s HandItems[0].tag.content[{id:"minecraft:stripped_birch_log"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_stripped_birch_wood] store result entity @s HandItems[0].tag.content[{id:"minecraft:stripped_birch_wood"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_jungle_log] store result entity @s HandItems[0].tag.content[{id:"minecraft:jungle_log"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_jungle_wood] store result entity @s HandItems[0].tag.content[{id:"minecraft:jungle_wood"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_stripped_jungle_log] store result entity @s HandItems[0].tag.content[{id:"minecraft:stripped_jungle_log"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_stripped_jungle_wood] store result entity @s HandItems[0].tag.content[{id:"minecraft:stripped_jungle_wood"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_spruce_log] store result entity @s HandItems[0].tag.content[{id:"minecraft:spruce_log"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_spruce_wood] store result entity @s HandItems[0].tag.content[{id:"minecraft:spruce_wood"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_stripped_spruce_log] store result entity @s HandItems[0].tag.content[{id:"minecraft:stripped_spruce_log"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_stripped_spruce_wood] store result entity @s HandItems[0].tag.content[{id:"minecraft:stripped_spruce_wood"}].Count double 1 run scoreboard players operation @s count += @s adder

execute unless score @s adder matches 0 store result score @s count run data get entity @s HandItems[0].tag.tags[{id:"logs"}].Count
execute store result entity @s HandItems[0].tag.tags[{id:"logs"}].Count double 1 run scoreboard players operation @s count += @s adder
execute unless score @s adder matches 0 run replaceitem block ~ ~ ~ container.0 air

scoreboard players reset @s adder
scoreboard players reset @s count

execute if entity @s[tag=add_crimson_stem] run tag @s remove add_crimson_stem
execute if entity @s[tag=add_stripped_crimson_stem] run tag @s remove add_stripped_crimson_stem
execute if entity @s[tag=add_crimson_hyphae] run tag @s remove add_crimson_hyphae
execute if entity @s[tag=add_stripped_crimson_hyphae] run tag @s remove add_stripped_crimson_hyphae
execute if entity @s[tag=add_warped_stem] run tag @s remove add_warped_stem
execute if entity @s[tag=add_stripped_warped_stem] run tag @s remove add_stripped_warped_stem
execute if entity @s[tag=add_warped_hyphae] run tag @s remove add_warped_hyphae
execute if entity @s[tag=add_stripped_warped_hyphae] run tag @s remove add_stripped_warped_hyphae
execute if entity @s[tag=add_dark_oak_log] run tag @s remove add_dark_oak_log
execute if entity @s[tag=add_dark_oak_wood] run tag @s remove add_dark_oak_wood
execute if entity @s[tag=add_stripped_dark_oak_log] run tag @s remove add_stripped_dark_oak_log
execute if entity @s[tag=add_stripped_dark_oak_wood] run tag @s remove add_stripped_dark_oak_wood
execute if entity @s[tag=add_oak_log] run tag @s remove add_oak_log
execute if entity @s[tag=add_oak_wood] run tag @s remove add_oak_wood
execute if entity @s[tag=add_stripped_oak_log] run tag @s remove add_stripped_oak_log
execute if entity @s[tag=add_stripped_oak_wood] run tag @s remove add_stripped_oak_wood
execute if entity @s[tag=add_acacia_log] run tag @s remove add_acacia_log
execute if entity @s[tag=add_acacia_wood] run tag @s remove add_acacia_wood
execute if entity @s[tag=add_stripped_acacia_log] run tag @s remove add_stripped_acacia_log
execute if entity @s[tag=add_stripped_acacia_wood] run tag @s remove add_stripped_acacia_wood
execute if entity @s[tag=add_birch_log] run tag @s remove add_birch_log
execute if entity @s[tag=add_birch_wood] run tag @s remove add_birch_wood
execute if entity @s[tag=add_stripped_birch_log] run tag @s remove add_stripped_birch_log
execute if entity @s[tag=add_stripped_birch_wood] run tag @s remove add_stripped_birch_wood
execute if entity @s[tag=add_jungle_log] run tag @s remove add_jungle_log
execute if entity @s[tag=add_jungle_wood] run tag @s remove add_jungle_wood
execute if entity @s[tag=add_stripped_jungle_log] run tag @s remove add_stripped_jungle_log
execute if entity @s[tag=add_stripped_jungle_wood] run tag @s remove add_stripped_jungle_wood
execute if entity @s[tag=add_spruce_log] run tag @s remove add_spruce_log
execute if entity @s[tag=add_spruce_wood] run tag @s remove add_spruce_wood
execute if entity @s[tag=add_stripped_spruce_log] run tag @s remove add_stripped_spruce_log
execute if entity @s[tag=add_stripped_spruce_wood] run tag @s remove add_stripped_spruce_wood
