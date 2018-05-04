team_offset = 0;

ruleset = "Standard"

opener_selection_1 = 0;
opener_selection_2 = 1;
shift_selection_1 = 0;
shift_selection_2 = 0;

battle_phase = "Setup";
battle_phase_step = 0;
battle_turn = 0;
battle_round = 0;
priority = 1;
tiebreaker = 1;
event_endround = 0;
event_forcedswitch[1] = 0;
event_forcedswitch[2] = 0;
event_death[1] = 0;
event_death[2] = 0;
victory_points[1] = 0;
victory_points[2] = 0;

battle_obj_banner = 0;
battle_obj_combatlog = 0;
battle_obj_commandbar = 0;
battle_obj_chain = 0;

lock_skillinprogress = false;
lock_switchinprogress = false;

player1_creature_sprite = 0;
player2_creature_sprite = 0;
player1_healthbar = 0;
player2_healthbar = 0;

waitingforchain = false;
var i;
for ( i=1 ; i<=global.bal_chainsize ; i++ ) {
	chain_command[1,i] = 0;
	chain_command[2,i] = 0;
	chain_slot[1,i] = 0;
	chain_slot[2,i] = 0;
	turn_resolved[1,i] = 0;
	turn_resolved[2,i] = 0;
	};