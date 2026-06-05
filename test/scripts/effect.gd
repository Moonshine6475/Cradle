extends Resource
class_name Effect

@export var effect: String = ""
@export var effectDur: int = 0
@export var stackable: bool = false
@export var value: float = 0.0
@export var dmgstore: float = 0.0
@export var stacks: int = 0
@export var elvl: int = 0
# Called once when the effect is applied to a target node
func on_apply(target: Entity) -> float:
	return 0

# Called every frame/tick while active
func on_trigger(target: Entity) -> float:
	effectDur -= 1
	return 0

# Called once when the duration expires or it gets cleansed
func on_remove(target: Entity) -> float:
	return 0
