#> realsleep:_/attempt/do
#--------------------
# _/adv/use
#--------------------

data modify storage realsleep:var attempt.player set from entity @s UUID

execute unless entity @n[type=marker,tag=realsleep-bed,distance=0..0.5] summon marker run function realsleep:_/bed/init

data modify storage realsleep:var attempt.data set from entity @n[type=marker,tag=realsleep-bed,distance=0..0.5] data.realsleep

execute if data storage realsleep:var attempt.data.occupied_by run return run function realsleep:_/attempt/occupied

scoreboard players set *attempt.times_slept -realsleep 0
function realsleep:_/attempt/do.1 with storage realsleep:var attempt

execute store result score *attempt.times_required -realsleep run data get storage realsleep:settings sleeps_until_comfy

execute if score *attempt.times_slept -realsleep < *attempt.times_required -realsleep store result score *attempt.window_start -realsleep run data get storage realsleep:settings uncomfy.sleep_window.start
execute if score *attempt.times_slept -realsleep < *attempt.times_required -realsleep store result score *attempt.window_end -realsleep run data get storage realsleep:settings uncomfy.sleep_window.end

execute if score *attempt.times_slept -realsleep >= *attempt.times_required -realsleep store result score *attempt.window_start -realsleep run data get storage realsleep:settings comfy.sleep_window.start
execute if score *attempt.times_slept -realsleep >= *attempt.times_required -realsleep store result score *attempt.window_end -realsleep run data get storage realsleep:settings comfy.sleep_window.end

execute store result score *attempt.time -realsleep run time query daytime

execute if score *attempt.time -realsleep >= *attempt.window_start -realsleep if score *attempt.time -realsleep <= *attempt.window_end -realsleep store success score *attempt.success -realsleep run function realsleep:_/attempt/success

execute unless score *attempt.success -realsleep matches 1.. run function realsleep:_/attempt/outside_window

data remove storage realsleep:var attempt
scoreboard players reset *attempt.time -realsleep
scoreboard players reset *attempt.window_end -realsleep
scoreboard players reset *attempt.window_start -realsleep
scoreboard players reset *attempt.times_slept -realsleep