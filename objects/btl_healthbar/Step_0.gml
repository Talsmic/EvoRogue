x += movement_speed*facing;
alpha += alpha_increase;

energy_cache = 0;
var i;
if ( instance_exists(btl_chain) ) {
	for ( i=1 ; i<=global.bal_chainsize ; i++ ) { 
		if ( btl_chain.chain_command[i] == 1 ) {
			var skill = 0;
			switch ( btl_chain.chain_slot[i] ) {
				case 1:		skill = global.party_skillA[1,btl_chain.chain_user[i]]; break;
				case 2:		skill = global.party_skillB[1,btl_chain.chain_user[i]]; break;
				case 3:		skill = global.party_skillC[1,btl_chain.chain_user[i]]; break;
				case 4:		skill = global.party_skillD[1,btl_chain.chain_user[i]]; break;
				case 5:		skill = global.party_skillE[1,btl_chain.chain_user[i]]; break;
				case 11:	skill = global.party_skill1[1,btl_chain.chain_user[i]]; break;
				case 12:	skill = global.party_skill2[1,btl_chain.chain_user[i]]; break;
				case 13:	skill = global.party_skill3[1,btl_chain.chain_user[i]]; break;
				case 14:	skill = global.party_skill4[1,btl_chain.chain_user[i]]; break;
				case 15:	skill = global.party_skill5[1,btl_chain.chain_user[i]]; break;
				case 16:	skill = global.party_skill6[1,btl_chain.chain_user[i]]; break;
				case 17:	skill = global.party_skill7[1,btl_chain.chain_user[i]]; break;
				case 18:	skill = global.party_skill8[1,btl_chain.chain_user[i]]; break;
				case 19:	skill = global.party_skill9[1,btl_chain.chain_user[i]]; break;		
				};			
			energy_cache += db_record_get("db_Skills",skill,"cost");
			};
		};
	};
if ( instance_exists(btl_commandbar) ) {
	btl_commandbar.energy_cache = energy_cache;
	};
	
if ( global.party_health[ref_player, ref_creature] < 1 ) {
	global.party_health[ref_player, ref_creature] = 0;
	btl_manager.event_endround = true;
	btl_manager.event_death[ref_player] = true;
	};