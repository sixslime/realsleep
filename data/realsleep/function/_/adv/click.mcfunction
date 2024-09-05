#> realsleep:_/adv/click
#--------------------
# @adv : _/click_bed
#--------------------

advancement revoke @s only realsleep:_/click_bed

#>---- D E B U G --------
data modify storage loggr:in log.message set from entity @s SpawnX
function loggr:api/log
#>--------------
#>---- D E B U G --------
data modify storage loggr:in log.message set from entity @s SpawnZ
function loggr:api/log
#>--------------


# TODO 
# disallow spawnpoint setting behavior