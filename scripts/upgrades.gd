extends Control


const MAX_LEVEL = 5
var GLOBALS


func _ready():
	GLOBALS = get_node("/root/Globals")
	

func display_upgrades():
	get_tree().paused = true
	visible = true
	
	var button_text_cap = "/" + str(MAX_LEVEL) + ")"
	%DamageButton.text = "Damage (" + str(GLOBALS.BLASTER_DAMAGE_LEVEL) + button_text_cap
	%SpeedButton.text = "Fire Rate (" + str(GLOBALS.BLASTER_SPEED_LEVEL) + button_text_cap
	%CapacityButton.text = "Shield Capacity (" + str(GLOBALS.SHIELD_CAPACITY_LEVEL) + button_text_cap
	%RechargeButton.text = "Recharge Rate (" + str(GLOBALS.SHIELD_RECHARGE_LEVEL) + button_text_cap
	%BurstButton.text = "Shield Burst (" + str(GLOBALS.BURST_LEVEL) + button_text_cap
	%MagnetButton.text = "Magnet ("+ str(GLOBALS.MAGNET_LEVEL) + button_text_cap
	
	if GLOBALS.BLASTER_DAMAGE_LEVEL < MAX_LEVEL:
		%DamageButton.grab_focus()
	elif GLOBALS.BLASTER_SPEED_LEVEL < MAX_LEVEL:
		%SpeedButton.grab_focus()
	elif GLOBALS.SHIELD_CAPACITY_LEVEL < MAX_LEVEL:
		%CapacityButton.grab_focus()
	elif GLOBALS.SHIELD_RECHARGE_LEVEL < MAX_LEVEL:
		%RechargeButton.grab_focus()
	elif GLOBALS.BURST_LEVEL < MAX_LEVEL:
		%BurstButton.grab_focus()
	elif GLOBALS.MAGNET_LEVEL < MAX_LEVEL:
		%MagnetButton.grab_focus()
	else:
		back_to_game()
	
	if GLOBALS.BLASTER_DAMAGE_LEVEL >= MAX_LEVEL:
		%DamageButton.disabled = true
	if GLOBALS.BLASTER_SPEED_LEVEL >= MAX_LEVEL:
		%SpeedButton.disabled = true
	if GLOBALS.SHIELD_CAPACITY_LEVEL >= MAX_LEVEL:
		%CapacityButton.disabled = true
	if GLOBALS.SHIELD_RECHARGE_LEVEL >= MAX_LEVEL:
		%RechargeButton.disabled = true
	if GLOBALS.BURST_LEVEL >= MAX_LEVEL:
		%BurstButton.disabled = true
	if GLOBALS.MAGNET_LEVEL >= MAX_LEVEL:
		%MagnetButton.disabled = true


func upgrade_shield_capacity():
	GLOBALS.SHIELD_CAPACITY_LEVEL += 1
	GLOBALS.LEVEL += 1
	back_to_game()


func upgrade_shield_recharge():
	GLOBALS.SHIELD_RECHARGE_LEVEL += 1
	GLOBALS.LEVEL += 1
	back_to_game()


func upgrade_blaster_damage():
	GLOBALS.BLASTER_DAMAGE_LEVEL += 1
	GLOBALS.LEVEL += 1
	back_to_game()


func upgrade_blaster_speed():
	GLOBALS.BLASTER_SPEED_LEVEL += 1
	GLOBALS.LEVEL += 1
	back_to_game()


func upgrade_burst():
	GLOBALS.BURST_LEVEL += 1
	GLOBALS.LEVEL += 1
	back_to_game()


func upgrade_magnet():
	GLOBALS.MAGNET_LEVEL += 1
	GLOBALS.LEVEL += 1
	back_to_game()
	

func back_to_game():
	get_tree().paused = false
	visible = false
