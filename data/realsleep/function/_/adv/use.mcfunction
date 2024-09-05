#> realsleep:_/adv/use
#--------------------
# @adv : _/use_bed
#--------------------

advancement revoke @s only realsleep:_/use_bed

# disallow actual sleeping
tp @s ~ ~ ~

execute align xyz positioned ~.5 ~.5 ~.5 run function realsleep:_/attempt/do