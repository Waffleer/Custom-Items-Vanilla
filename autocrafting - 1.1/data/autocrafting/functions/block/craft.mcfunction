#As Autocrafter
#At AUtocrafter

#Set crafting Recipe
execute if entity @s[tag=unset] positioned ~ ~1 ~ if entity @e[type=item, limit=1, distance=..0.5] run function autocrafting:function/setcrafting

#Crafting
execute if entity @s[tag=autocrafter, tag=!unset, type=armor_stand] as @s at @s if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} run function autocrafting:function/files/main

