extends Ability
class_name NormalAttackAbility

# Overriding the base function with your custom formula
func get_primary_damage(attacker: Resource, target: Resource) -> float:
	var attacker2 = attacker as Entity
	var plvl = attacker2.lvl
	var str_val = attacker2.str
	var target2 = target as Entity
	if str_val <= 0: 
		str_val = 1 
		
	var log5_str = log(str_val) / log(5.0)
	
	var lvl_modifier = 0.80
	match ability_lvl:
		1: lvl_modifier = 0.80
		2: lvl_modifier = 0.95
		3: lvl_modifier = 1.10
		_: lvl_modifier = 0.80
	return lvl_modifier * (plvl * str_val * log5_str)
