extends Resource
class_name Entity

@export var lvl: int = 1

@export var ps: int = 1
@export var def: int = 1
@export var str: int = 1
@export var inte: int = 1
@export var spd: int = 1
@export var eva: int = 1

var health: int:
	get:
		return int(floor(50.0 * lvl * ((27.0 * ps + 100.0) / 100.0)))

#skills
@export var a1: Ability = null
@export var a2: Ability = null
@export var a3: Ability = null
@export var a4: Ability = null
@export var a5: Ability = null


