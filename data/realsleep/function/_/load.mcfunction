#>realsleep:_/load
#--------------------
# @LOAD
#--------------------

# load
scoreboard players set *realsleep load-status 1

# settings
execute unless data storage realsleep:settings {PERSIST:true} run function realsleep:settings

#declare storage realsleep:var
#declare storage realsleep:in
#declare storage realsleep:out
#declare storage realsleep:data
#declare storage realsleep:hook
#declare storage realsleep:implement

# scoreboards
scoreboard objectives add -realsleep dummy
scoreboard objectives add --realsleep dummy
#scoreboard objectives add realsleep-scoreboard dummy

# tick
schedule clear realsleep:_/tick
function realsleep:_/tick