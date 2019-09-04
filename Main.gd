extends Node2D

export (PackedScene) var Mob
#onready var Mob = preload("res://Mob.tscn")

func _ready():
	for monster in range(3):
		var mob = Mob.instance()
		add_child(mob)
	
	
func _on_MonsterButton_pressed(monster):
	monster.mobHp -= Global.heroDmg
	if monster.mobHp < 0:
		monster.mobHp = 0
		
	if monster.mobHp == 0:
		monster.DeathAnimation()
		
	var monstersAlive = len($Mob)

		
		

	