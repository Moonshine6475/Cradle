extends Resource
class_name Entity

func _ready() -> void:
	# Spawns the entity with full health once the game starts
	curhealth = maxhealth

@export var lvl: int = 1

@export var ps: int = 1
@export var def: int = 1
@export var str: int = 1
@export var inte: int = 1
@export var spd: int = 1
@export var eva: int = 1
@export var status: Array = [Effect] 
@export var linkedEntity: Entity = null


var maxhealth: int:
	get:
		return int(floor(50.0 * lvl * ((27.0 * ps + 100.0) / 100.0)))

@export var curhealth: int = 0
@export var trueDmgTaken: int = 0
#skills
@export var a1: Ability = null
@export var a2: Ability = null
@export var a3: Ability = null
@export var a4: Ability = null
@export var a5: Ability = null

func take_damage(amount: int, type: Ability.DamageType) -> void:
	curhealth -= amount
	if type == Ability.DamageType.TRUE:
		trueDmgTaken += amount
	curhealth = max(0, curhealth) 
	if curhealth == 0:
		die()

func die() -> void:
	print("Entity has been defeated!")
	
func heal(amount: int) -> void:
	curhealth += amount
	curhealth = min(curhealth, maxhealth-trueDmgTaken)
