execute store result score @s count run data get entity @s HandItems[0].tag.tags[{id:"stone_crafting_materials"}].Count
execute store result entity @s HandItems[0].tag.tags[{id:"stone_crafting_materials"}].Count double 1 run scoreboard players operation @s count -= @s adder

execute unless score @s adder matches ..0 store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:cobblestone"}].Count
execute unless score @s count matches 0 unless score @s adder matches ..0 run scoreboard players operation @s dummy = @s count
execute unless score @s count matches 0 unless score @s adder matches ..0 store result entity @s HandItems[0].tag.content[{id:"minecraft:cobblestone"}].Count double 1 run scoreboard players operation @s count -= @s adder
execute unless score @s adder matches ..0 if score @s count matches ..-1 run data modify entity @s HandItems[0].tag.content[{id:"minecraft:cobblestone"}].Count set value 0d
execute unless score @s adder matches ..0 if score @s count matches ..-1 run scoreboard players operation @s adder -= @s dummy

execute unless score @s adder matches ..0 store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:blackstone"}].Count
execute unless score @s count matches 0 unless score @s adder matches ..0 run scoreboard players operation @s dummy = @s count
execute unless score @s count matches 0 unless score @s adder matches ..0 store result entity @s HandItems[0].tag.content[{id:"minecraft:blackstone"}].Count double 1 run scoreboard players operation @s count -= @s adder
execute unless score @s adder matches ..0 if score @s count matches ..-1 run data modify entity @s HandItems[0].tag.content[{id:"minecraft:blackstone"}].Count set value 0d
execute unless score @s adder matches ..0 if score @s count matches ..-1 run scoreboard players operation @s adder -= @s dummy

scoreboard players reset @s adder
scoreboard players reset @s count
scoreboard players reset @s dummy
