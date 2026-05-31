extends Resource
class_name Ability 

@export var name: String = "New Ability"
@export var description: String = ""
@export var ap_cost: int = 0
@export var ap_recover: int = 0
@export var ability_lvl: int = 1
@export var cooldown: int = 2
enum DamageType{CODE, FORCE, TRUE, COUNTER, HEAL}
@export var pri_damage_type: DamageType = DamageType.CODE
@export var sec_damage_type: DamageType = DamageType.CODE
enum StatusEffect {VIRAL, SLEEP, EXPOSED, BREAK, UNBALANCE, NONE, ENHANCE, FORTIFY}
@export var effect: StatusEffect = StatusEffect.NONE
@export var effectDur: int = 0

enum TargetType { ENEMY, SELF}
@export var target_type: TargetType = TargetType.ENEMY

# The core execution logic that every specific ability overrides
func get_primary_damage(caster: Entity, target: Entity) -> float:
	return 0
	
func get_secondary_damage(caster: Entity, target: Entity) -> float:
	return 0
