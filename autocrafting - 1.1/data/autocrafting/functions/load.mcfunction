forceload add 635421 635421 635421 635421
setblock 635421 0 635421 air
setblock 635421 1 635421 bedrock


#Create Scoreboards
scoreboard objectives add count dummy
scoreboard objectives add type dummy
scoreboard objectives add dummy dummy
scoreboard objectives add adder dummy
scoreboard objectives add count_in1 dummy
scoreboard objectives add count_in2 dummy
scoreboard objectives add count_in3 dummy
scoreboard objectives add count_in4 dummy
scoreboard objectives add count_in5 dummy
scoreboard objectives add count_in6 dummy
scoreboard objectives add count_in7 dummy
scoreboard objectives add count_in8 dummy
scoreboard objectives add count_in9 dummy
scoreboard objectives add gamerule dummy
scoreboard objectives add version dummy
execute unless score #useCustomModeldata gamerule matches 1.. run scoreboard players set #useCustomModeldata gamerule 0


#Debug
#scoreboard objectives setdisplay sidebar count

#Tellraw Message
execute unless score first count matches 1 run tellraw @a ["",{"text":"[Autocrafter] ","color":"dark_green"},{"text":"Thanks for installing my Autocrafting Data pack","color":"#EA7015"}]
execute if score first count matches 1 run tellraw @a ["",{"text":"[Autocrafter] ","color":"dark_green"},{"text":"Autocrafting Data pack installed","color":"#EA7015"}]
tellraw @a ["",{"text":"[Autocrafter] ","color":"dark_green"},{"text":"All credits belong to Hasenzahn1","color":"#EA7015"}]
tellraw @a ["",{"text":"[Autocrafter]","color":"dark_green"},{"text":" For help click here","color":"#EA7015","clickEvent":{"action":"run_command","value":"/function autocrafting:help/help"}}]
scoreboard players set first count 1

#Updater
execute unless score #version version matches 1.. run schedule function autocrafting:updater/updater 30t

schedule function autocrafting:block/delete 10t