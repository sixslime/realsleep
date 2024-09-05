#>realsleep:settings

#declare storage realsleep:settings
data modify storage realsleep:settings PERSIST set value false

#>-------------------
#> setting : 
#-------------------
# ~ 
#-------------------
# - 
#-------------------
## data modify storage realsleep:settings setting set value 0
#>-------------------


data modify storage realsleep:settings uncomfy.sleep_window.start set value 12000
data modify storage realsleep:settings uncomfy.sleep_window.end set value 18000

data modify storage realsleep:settings comfy.sleep_window.start set value 12000
data modify storage realsleep:settings comfy.sleep_window.end set value 0

data modify storage realsleep:settings comfy.wakeup_radius set value 16
data modify storage realsleep:settings uncomfy.wakeup_radius set value 16

data modify storage realsleep:settings sleeps_until_comfy set value 2

data modify storage realsleep:settings sleeps_until_comfy set value 2
