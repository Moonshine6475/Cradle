extends Ability
class_name SimplePatch

# Overriding the base function with your custom formula
func get_primary_damage(attacker: Entity, target: Entity) -> float:
	var plvl = attacker.lvl
	var int_val = attacker.inte
	var php = attacker.health
	
	if int_val <= 0: 
		int_val = 1 
	
	var lvl_modifier = (0.25 + (int_val/5)/100) * php
	match ability_lvl:
		1: lvl_modifier = (0.25 + (int_val/5)/100) * php
		2: lvl_modifier = (0.30 + (int_val/5)/100) * php
		3: lvl_modifier = (0.35 + (int_val/5)/100) * php
		_: lvl_modifier = (0.25 + (int_val/5)/100) * php
	return lvl_modifier * -1

