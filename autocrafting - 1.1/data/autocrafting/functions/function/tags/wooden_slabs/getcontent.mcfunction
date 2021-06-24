execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:oak_slab"}]} run tag @s add add_oak_slab
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:spruce_slab"}]} run tag @s add add_spruce_slab
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:birch_slab"}]} run tag @s add add_birch_slab
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:jungle_slab"}]} run tag @s add add_jungle_slab
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:acacia_slab"}]} run tag @s add add_acacia_slab
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:dark_oak_slab"}]} run tag @s add add_dark_oak_slab
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:crimson_slab"}]} run tag @s add add_crimson_slab
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:warped_slab"}]} run tag @s add add_warped_slab

execute if entity @s[tag=add_oak_slab] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_spruce_slab] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_birch_slab] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_jungle_slab] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_acacia_slab] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_dark_oak_slab] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_crimson_slab] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_warped_slab] store result score @s adder run data get block ~ ~ ~ Items[0].Count

execute if entity @s[tag=add_oak_slab] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:oak_slab"}].Count
execute if entity @s[tag=add_spruce_slab] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:spruce_slab"}].Count
execute if entity @s[tag=add_birch_slab] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:birch_slab"}].Count
execute if entity @s[tag=add_jungle_slab] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:jungle_slab"}].Count
execute if entity @s[tag=add_acacia_slab] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:acacia_slab"}].Count
execute if entity @s[tag=add_dark_oak_slab] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:dark_oak_slab"}].Count
execute if entity @s[tag=add_crimson_slab] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:crimson_slab"}].Count
execute if entity @s[tag=add_warped_slab] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:warped_slab"}].Count

execute if entity @s[tag=add_oak_slab] store result entity @s HandItems[0].tag.content[{id:"minecraft:oak_slab"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_spruce_slab] store result entity @s HandItems[0].tag.content[{id:"minecraft:spruce_slab"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_birch_slab] store result entity @s HandItems[0].tag.content[{id:"minecraft:birch_slab"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_jungle_slab] store result entity @s HandItems[0].tag.content[{id:"minecraft:jungle_slab"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_acacia_slab] store result entity @s HandItems[0].tag.content[{id:"minecraft:acacia_slab"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_dark_oak_slab] store result entity @s HandItems[0].tag.content[{id:"minecraft:dark_oak_slab"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_crimson_slab] store result entity @s HandItems[0].tag.content[{id:"minecraft:crimson_slab"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_warped_slab] store result entity @s HandItems[0].tag.content[{id:"minecraft:warped_slab"}].Count double 1 run scoreboard players operation @s count += @s adder

execute unless score @s adder matches 0 store result score @s count run data get entity @s HandItems[0].tag.tags[{id:"wooden_slabs"}].Count
execute store result entity @s HandItems[0].tag.tags[{id:"wooden_slabs"}].Count double 1 run scoreboard players operation @s count += @s adder
execute unless score @s adder matches 0 run replaceitem block ~ ~ ~ container.0 air

scoreboard players reset @s adder
scoreboard players reset @s count

execute if entity @s[tag=add_oak_slab] run tag @s remove add_oak_slab
execute if entity @s[tag=add_spruce_slab] run tag @s remove add_spruce_slab
execute if entity @s[tag=add_birch_slab] run tag @s remove add_birch_slab
execute if entity @s[tag=add_jungle_slab] run tag @s remove add_jungle_slab
execute if entity @s[tag=add_acacia_slab] run tag @s remove add_acacia_slab
execute if entity @s[tag=add_dark_oak_slab] run tag @s remove add_dark_oak_slab
execute if entity @s[tag=add_crimson_slab] run tag @s remove add_crimson_slab
execute if entity @s[tag=add_warped_slab] run tag @s remove add_warped_slab
