extends Node
class_name BattleManager

@export var total_damage_this_turn: int = 0
var ability_chain: Array = [Ability]
var caster: Entity = null
var target: Entity = null
@onready var turn_manager: TurnManager = $TurnManager

func start_new_turn():
	total_damage_this_turn = 0

func execute_abilitychain():
	for ability in ability_chain:
		execute_ability(ability, caster, target)
	turn_manager.end_turn()
	ability_chain.clear()
	

func execute_ability(ability: Ability, caster: Entity, target: Entity):
	
	var pri_amount = ability.get_primary_damage(caster, target)
	
	if ability.pri_damage_type == Ability.DamageType.HEAL:
		target.heal(pri_amount)
	else:
		target.take_damage(pri_amount, ability.pri_damage_type)
		total_damage_this_turn += pri_amount
		
	#var sec_amount = ability.get_secondary_damage(caster, target)
	#if sec_amount > 0:
		#if ability.sec_damage_type != Ability.DamageType.HEAL:
			#target.take_damage(sec_amount, ability.sec_damage_type)
			#total_damage_this_turn += sec_amount
	
	# 4. Handle any status effects
	# (If your effect is created via .new() dynamically, pass it here)
	ability.apply_effect(caster, target, ability.effect)
	var reactive_effect: Reactive = null
	for status in target.status:
		if status is Reactive:
			reactive_effect = status
			break
	if reactive_effect != null:
		reactive_effect.dmgstore = pri_amount
		var heal = reactive_effect.on_trigger(target)
		print("Reactive status triggered! Heal amount: ", heal)
		target.heal(heal)
	print("Current Turn Damage Total: ", total_damage_this_turn)

# Call this at the end of the turn to log or reward data
func end_turn():
	print("Turn ended! Total damage dealt: ", total_damage_this_turn)
	# You can save this to a leaderboard, trigger passive abilities, etc.
