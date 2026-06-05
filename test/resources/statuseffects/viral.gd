extends Effect
class_name Viral

func on_trigger(caster: Entity):
	var val = 0
	match elvl:
		1: val = 0.65*caster.ps*20
		2: val = 0.7*caster.ps*30
		3: val = 0.75*caster.ps*40
		_: val = 0
	return val*stacks
