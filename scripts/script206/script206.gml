///var_battle();
/*
	[Edited 11/7/2017]
	Variables to be created when a battle starts
*/

/*

//=[Party Data](party)================================================
global.party_skillA_recharge = 0;
global.party_skillB_recharge = 0;
global.party_skillC_recharge = 0;	
global.party_skillD_recharge = 0;
global.party_skillE_recharge = 0;	

global.party_skill1_recharge = 0;
global.party_skill2_recharge = 0;
global.party_skill3_recharge = 0;
global.party_skill4_recharge = 0;	
global.party_skill5_recharge = 0;	
global.party_skill6_recharge = 0;
global.party_skill7_recharge = 0;	
global.party_skill8_recharge = 0;
global.party_skill9_recharge = 0;

global.party_buff1 = 0;
global.party_buff1_duration = 0;
global.party_buff1_potency = 0;
global.party_buff1_element = 0;
global.party_buff2 = 0;
global.party_buff2_duration = 0;
global.party_buff2_potency = 0;
global.party_buff2_element = 0;
global.party_buff3 = 0;
global.party_buff3_duration = 0;
global.party_buff3_potency = 0;
global.party_buff3_element = 0;
global.party_buff4 = 0;
global.party_buff4_duration = 0;
global.party_buff4_potency = 0;
global.party_buff4_element = 0;
global.party_buff5 = 0;
global.party_buff5_duration = 0;
global.party_buff5_potency = 0;
global.party_buff5_element = 0;

global.party_debuff1 = 0;
global.party_debuff1_duration = 0;
global.party_debuff1_potency = 0;
global.party_debuff1_element = 0;
global.party_debuff2 = 0;
global.party_debuff2_duration = 0;
global.party_debuff2_potency = 0;
global.party_debuff2_element = 0;
global.party_debuff3 = 0;
global.party_debuff3_duration = 0;
global.party_debuff3_potency = 0;
global.party_debuff3_element = 0;
global.party_debuff4 = 0;
global.party_debuff4_duration = 0;
global.party_debuff4_potency = 0;
global.party_debuff4_element = 0;
global.party_debuff5 = 0;
global.party_debuff5_duration = 0;
global.party_debuff5_potency = 0;
global.party_debuff5_element = 0;
global.party_stance = 0;
global.party_stance_duration = 0;

var i; var j;
for ( j=1 ; j<=2 ; j++ ) {							//j = player
	for ( i=1 ; i<=global.gps_partysize ; i++ ) {	//i = partymember
		global.party_skillA_recharge[j, i]		= 0;	//skill A-E are core abilities
		global.party_skillB_recharge[j, i]		= 0;	
		global.party_skillC_recharge[j, i]		= 0;	
		global.party_skillD_recharge[j, i]		= 0;	
		global.party_skillE_recharge[j, i]		= 0;	
		
		global.party_skill1_recharge[j, i]		= 0;	//skill 1-9 are optional abilities
		global.party_skill2_recharge[j, i]		= 0;	
		global.party_skill3_recharge[j, i]		= 0;	
		global.party_skill4_recharge[j, i]		= 0;	
		global.party_skill5_recharge[j, i]		= 0;	
		global.party_skill6_recharge[j, i]		= 0;	
		global.party_skill7_recharge[j, i]		= 0;	
		global.party_skill8_recharge[j, i]		= 0;	
		global.party_skill9_recharge[j, i]		= 0;	
		
		global.party_buff1[j, i]				= 0;
		global.party_buff1_duration[j, i]		= 0;
		global.party_buff1_potency[j, i]		= 0;
		global.party_buff1_element[j, i]		= 0;
		global.party_buff2[j, i]				= 0;
		global.party_buff2_duration[j, i]		= 0;
		global.party_buff2_potency[j, i]		= 0;
		global.party_buff2_element[j, i]		= 0;
		global.party_buff3[j, i]				= 0;
		global.party_buff3_duration[j, i]		= 0;
		global.party_buff3_potency[j, i]		= 0;
		global.party_buff3_element[j, i]		= 0;
		global.party_buff4[j, i]				= 0;
		global.party_buff4_duration[j, i]		= 0;
		global.party_buff4_potency[j, i]		= 0;
		global.party_buff4_element[j, i]		= 0;
		global.party_buff5[j, i]				= 0;
		global.party_buff5_duration[j, i]		= 0;
		global.party_buff5_potency[j, i]		= 0;
		global.party_buff5_element[j, i]		= 0;

		global.party_debuff1[j, i]				= 0;
		global.party_debuff1_duration[j, i]		= 0;
		global.party_debuff1_potency[j, i]		= 0;
		global.party_debuff1_element[j, i]		= 0;
		global.party_debuff2[j, i]				= 0;
		global.party_debuff2_duration[j, i]		= 0;
		global.party_debuff2_potency[j, i]		= 0;
		global.party_debuff2_element[j, i]		= 0;
		global.party_debuff3[j, i]				= 0;
		global.party_debuff3_duration[j, i]		= 0;
		global.party_debuff3_potency[j, i]		= 0;
		global.party_debuff3_element[j, i]		= 0;
		global.party_debuff4[j, i]				= 0;
		global.party_debuff4_duration[j, i]		= 0;
		global.party_debuff4_potency[j, i]		= 0;
		global.party_debuff4_element[j, i]		= 0;
		global.party_debuff5[j, i]				= 0;
		global.party_debuff5_duration[j, i]		= 0;
		global.party_debuff5_potency[j, i]		= 0;
		global.party_debuff5_element[j, i]		= 0;
		
		global.party_stance[j, i]				= 0;
		global.party_stance_duration[j, i]		= 0;
		
		if ( global.party_status[j, i] ) { party_coreskills(j, i) };
		};
	};
//====================================================================
		
//=[Battle References]================================================
global.active_creature = 0;
global.active_creature[1, 1] = 0;
global.active_creature[2, 1] = 0;

global.active_boost_power = 0;
global.active_boost_power[1] = 0;
global.active_boost_power[2] = 0;
global.active_boost_fortitude = 0;
global.active_boost_fortitude[1] = 0;
global.active_boost_fortitude[2] = 0;
global.active_boost_speed = 0;
global.active_boost_speed[1] = 0;
global.active_boost_speed[2] = 0;
global.active_boost_recovery = 0;
global.active_boost_recovery[1] = 0;
global.active_boost_recovery[2] = 0;
global.active_boost_potency = 0;
global.active_boost_potency[1] = 0;
global.active_boost_potency[2] = 0;
//====================================================================
