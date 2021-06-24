execute store result score @s count run data get entity @s HandItems[0].tag.tags[{id:"autocrafting_sandstone"}].Count
execute store result entity @s HandItems[0].tag.tags[{id:"autocrafting_sandstone"}].Count double 1 run scoreboard players operation @s count -= @s adder

execute unless score @s adder matches ..0 store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:sandstone"}].Count
execute unless score @s count matches 0 unless score @s adder matches ..0 run scoreboard players operation @s dummy = @s count
execute unless score @s count matches 0 unless score @s adder matches ..0 store result entity @s HandItems[0].tag.content[{id:"minecraft:sandstone"}].Count double 1 run scoreboard players operation @s count -= @s adder
execute unless score @s adder matches ..0 if score @s count matches ..-1 run data modify entity @s HandItems[0].tag.content[{id:"minecraft:sandstone"}].Count set value 0d
execute unless score @s adder matches ..0 if score @s count matches ..-1 run scoreboard players operation @s adder -= @s dummy

execute unless score @s adder matches ..0 store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:chiseled_sandstone"}].Count
execute unless score @s count matches 0 unless score @s adder matches ..0 run scoreboard players operation @s dummy = @s count
execute unless score @s count matches 0 unless score @s adder matches ..0 store result entity @s HandItems[0].tag.content[{id:"minecraft:chiseled_sandstone"}].Count double 1 run scoreboard players operation @s count -= @s adder
execute unless score @s adder matches ..0 if score @s count matches ..-1 run data modify entity @s HandItems[0].tag.content[{id:"minecraft:chiseled_sandstone"}].Count set value 0d
execute unless score @s adder matches ..0 if score @s count matches ..-1 run scoreboard players operation @s adder -= @s dummy

execute unless score @s adder matches ..0 store result score @s count run data get entity @s HandItems[0].tag.content[{id:"minecraft:cut_sandstone"}].Count
execute unless score @s count matches 0 unless score @s adder matches ..0 run scoreboard players operation @s dummy = @s count
execute unless score @s count matches 0 unless score @s adder matches ..0 store result entity @s HandItems[0].tag.content[{id:"minecraft:cut_sandstone"}].Count double 1 run scoreboard players operation @s count -= @s adder
execute unless score @s adder matches ..0 if score @s count matches ..-1 run data modify entity @s HandItems[0].tag.content[{id:"minecraft:cut_sandstone"}].Count set value 0d
execute unless score @s adder matches ..0 if score @s count matches ..-1 run scoreboard players operation @s adder -= @s dummy

scoreboard players reset @s adder
scoreboard players reset @s count
scoreboard players reset @s dummy
