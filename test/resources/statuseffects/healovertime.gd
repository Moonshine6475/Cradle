extends Effect
class_name HealOverTime

func on_apply(caster: Entity):
	var healamount = 0
	var health = caster.health
	var intel = caster.inte
	match elvl:
		1: healamount = health * (5+ intel/10)/100
		2: healamount = health * (8.5+ intel/10)/100
		3: healamount = health * (12+ intel/10)/100
		_: healamount = 0
	return healamount
	
	
func on_trigger(caster: Entity):
	effectDur -= 1
	var healamount = 0
	var health = caster.health
	var intel = caster.inte
	match elvl:
		1: healamount = health * (5+ intel/10.0)/100
		2: healamount = health * (8.5+ intel/10.0)/100
		3: healamount = health * (12+ intel/10.0)/100
		_: healamount = 0
	return healamount
