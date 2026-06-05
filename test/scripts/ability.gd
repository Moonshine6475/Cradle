extends Resource
class_name Ability 

@export var name: String = "New Ability"
@export var description: String = ""
@export var ap_cost: int = 0
@export var ap_recover: int = 0
@export var ability_lvl: int = 1
@export var cooldown: int = 2
@export var effect: Effect = null
enum DamageType{CODE, FORCE, TRUE, COUNTER, HEAL}
@export var pri_damage_type: DamageType = DamageType.CODE
@export var sec_damage_type: DamageType = DamageType.CODE


enum TargetType { ENEMY, SELF}
@export var target_type: TargetType = TargetType.ENEMY

# The core execution logic that every specific ability overrides
func get_primary_damage(caster: Resource, target: Resource) -> float:
	return 0
	
func get_secondary_damage(caster: Resource, target: Resource) -> float:
	return 0
func apply_effect(caster: Resource, target: Resource, effect: Effect) -> void:
	pass
