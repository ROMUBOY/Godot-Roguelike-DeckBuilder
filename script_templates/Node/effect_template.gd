#meta-name: Effect
#meta-description: Create an effect which can be applied to a terget.
class_name MyAwesomeEffect
extends Effect

var member_var := 0

func execute(targets: Array[Node]) -> void:
	print("My effect targets them: %s" % targets)
	print("It does %s somethung" % member_var)
