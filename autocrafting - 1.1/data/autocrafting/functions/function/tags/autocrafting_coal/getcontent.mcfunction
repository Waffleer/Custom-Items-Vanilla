execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:coal"}]} run tag @s add add_coal
execute if block ~ ~ ~ dropper{Items:[{Slot:0b, id:"minecraft:charcoal"}]} run tag @s add add_charcoal

execute if entity @s[tag=add_coal] store result score @s adder run data get block ~ ~ ~ Items[0].Count
execute if entity @s[tag=add_charcoal] store result score @s adder run data get block ~ ~ ~ Items[0].Count

execute if entity @s[tag=add_coal] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:coal"}].Count
execute if entity @s[tag=add_charcoal] store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:charcoal"}].Count

execute if entity @s[tag=add_coal] store result entity @s HandItems[0].tag.content[{id:"minecraft:coal"}].Count double 1 run scoreboard players operation @s count += @s adder
execute if entity @s[tag=add_charcoal] store result entity @s HandItems[0].tag.content[{id:"minecraft:charcoal"}].Count double 1 run scoreboard players operation @s count += @s adder

execute unless score @s adder matches 0 store result score @s count run data get entity @s HandItems[0].tag.tags[{id:"autocrafting_coal"}].Count
execute store result entity @s HandItems[0].tag.tags[{id:"autocrafting_coal"}].Count double 1 run scoreboard players operation @s count += @s adder
execute unless score @s adder matches 0 run replaceitem block ~ ~ ~ container.0 air

scoreboard players reset @s adder
scoreboard players reset @s count

execute if entity @s[tag=add_coal] run tag @s remove add_coal
execute if entity @s[tag=add_charcoal] run tag @s remove add_charcoal
