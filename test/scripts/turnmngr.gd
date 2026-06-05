extends Node
class_name TurnManager

# Signals to alert UI or AI managers when a new turn begins
signal player_turn_started(player_entity: Entity)
signal enemy_turn_started(enemy_entity: Entity)

@onready var battle_manager: BattleManager = get_parent()

var combatants: Array[Entity] = []
var speed: Dictionary = {}
var active_unit: Entity = null
const TURN = 30.0

# 1. BattleManager calls this at the very start of combat
func initialize_battle(all_fighters: Array[Entity]):
	combatants = all_fighters
	start_turn()

# 2. Sets up the active entity and alerts the game
func start_turn():
	if combatants.is_empty():
		return
		
	var active_entity: Entity = null
	
	while active_entity == null:
		for fighter in combatants:
			if not is_instance_valid(fighter) or fighter.health <= 0:
				continue
			speed[fighter] += fighter.spd
			if speed[fighter] >= TURN:
				active_entity = fighter
				break 

	speed[active_entity] -= TURN
	
	print("\n--- It is ", active_entity.name, "'s Turn! ---")
	print("Current CTB Meters: ", speed)
	prepare_entity_turn(active_entity)

# 3. Called when an entity is finished stacking their choices
func prepare_entity_turn(entity: Entity):
	battle_manager.start_new_turn()
	battle_manager.caster = entity
	for status in entity.status:
		var val = status.on_trigger(entity)
		print(status.effect)
		if status is HealOverTime:
			entity.heal(val)
	if entity.is_in_group("players"):
		print("Waiting for player input selection...")
		# Example UI pop up trigger:
		# battle_manager.combat_ui.show_ability_selection_menu()
