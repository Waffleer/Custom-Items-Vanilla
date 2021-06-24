#Main
#Place
execute as @e[type=firework_rocket, nbt={FireworksItem:{tag:{autocrafter:1b}}}] at @s if block ~ ~ ~ minecraft:air run function autocrafting:block/place

#If not placable
execute as @e[nbt={FireworksItem:{tag:{autocrafter:1b}}}, type=firework_rocket, nbt={Life:2}] at @s run function autocrafting:item/give
execute as @e[nbt={FireworksItem:{tag:{autocrafter:1b}}}, type=firework_rocket, nbt={Life:2}] run kill @s

#Delete Autocrafter
execute as @e[type=minecraft:armor_stand, tag=autocrafter] at @s unless block ~ ~ ~ minecraft:dropper run function autocrafting:block/destroy

#Gui
execute as @e[tag=autocrafter, type=armor_stand] at @s run function autocrafting:block/gui

#Autocrafting
execute as @e[type=armor_stand, tag=autocrafter] at @s run function autocrafting:block/craft
