extends Node



# TODO in the endgame the upgrade menu pops up every two seconds
# consider scaling SCORE_SHOW_UPGRADE with SPEED_SCALE or just scale exponentially


const SCORE_SHOW_UPGRADE = 40
const SCORE_DOUBLED_SPEED = float(SCORE_SHOW_UPGRADE * 10.0)
const MAX_LEVELS = 30
var LAST_UPGRADE = 0
var SPEED_SCALE = 1.0
var SCORE = 0


var BURST_LEVEL = 1
var BLASTER_DAMAGE_LEVEL = 1
var BLASTER_SPEED_LEVEL = 1
var SHIELD_CAPACITY_LEVEL = 1
var SHIELD_RECHARGE_LEVEL = 1
var MAGNET_LEVEL = 1
var LEVEL = 6


const ASTEROID = preload("res://entities/asteroid.tscn")


func add_score(delta: int):
	SCORE += delta
	SPEED_SCALE = 1.0 + (float(SCORE) / SCORE_DOUBLED_SPEED)


func reset():
	SCORE = 0
	SPEED_SCALE = 1.0
	BURST_LEVEL = 1
	BLASTER_DAMAGE_LEVEL = 1
	BLASTER_SPEED_LEVEL = 1
	SHIELD_CAPACITY_LEVEL = 1
	SHIELD_RECHARGE_LEVEL = 1
	MAGNET_LEVEL = 1
	LEVEL = 6
	LAST_UPGRADE = 0
