extends Effect
class_name ReactiveEffect

func _on_trigger(target: Entity):
	effectDur -= 1
	var intel = target.inte
	var healamount = 0
	match elvl:
		1: healamount = dmgstore * (35+ intel/3.0)/100
		2: healamount = dmgstore * (40+ intel/3.0)/100
		3: healamount = dmgstore * (45+ intel/3.0)/100
		_: healamount = 0
	return healamount
