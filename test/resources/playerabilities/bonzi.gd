extends Ability
class_name Bonzi

func get_primary_damage(caster: Resource, target: Resource):
	var attacker = caster as Entity
	var enemy = target as Entity
	var valu: int
	match ability_lvl:
		1: valu = 1*30* (attacker.lvl + 2*attacker.stre) 
		2: valu = 1.4*45*(attacker.lvl + 2*attacker.stre) 
		3: valu = 1.8 * 60*(attacker.lvl + 2*attacker.stre) 
		_: valu = 0
	return valu

func apply_effect(caster: Resource, target: Resource, effect):
	
	var enemy = target as Entity
	
	var status = enemy.status
	var found = false
	for stateff in status:
		if stateff is Viral:
			stateff.stacks += 1
			found = true
			break
	if not found:
		var viral = effect.duplicate()
		viral.elvl = ability_lvl
		viral.effectDur = 3
		enemy.status.append(viral)
