extends Ability
class_name Reactive



func apply_effect(attacker_entity: Resource, target: Resource, effect):
	var attacker = attacker_entity as Entity
	var heal = effect.duplicate()
	heal.elvl = ability_lvl
	heal.effectDur = 3
	
	attacker.status.append(heal)
