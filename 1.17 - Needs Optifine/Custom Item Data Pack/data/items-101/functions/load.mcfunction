
#Scoreboard Creation
scoreboard objectives add list dummy

#removes previous actions
tag @a remove user
function items-101:station/end



#Final Text
tellraw @a "Custom Items Has Loaded"
tellraw @a ["",{"text":"[Items-101] ","color":"dark_green"},{"text":"Reload Successful","color":"#EA7015"}]



