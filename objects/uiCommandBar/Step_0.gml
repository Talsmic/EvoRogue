/// @desc Calculate Recharges

/* LEGACY CODE
var ref_party = global.active_creature[1, 1];

recharge[2] = global.party_skillB_recharge[1, ref_party];
recharge[3] = global.party_skillC_recharge[1, ref_party];
recharge[4] = global.party_skillD_recharge[1, ref_party];
recharge[5] = global.party_skillE_recharge[1, ref_party];
recharge[11] = global.party_skill1_recharge[1, ref_party];
recharge[12] = global.party_skill2_recharge[1, ref_party];
recharge[13] = global.party_skill3_recharge[1, ref_party];
recharge[14] = global.party_skill4_recharge[1, ref_party];
recharge[15] = global.party_skill5_recharge[1, ref_party];
recharge[16] = global.party_skill6_recharge[1, ref_party];
recharge[17] = global.party_skill7_recharge[1, ref_party];
recharge[18] = global.party_skill8_recharge[1, ref_party];
recharge[19] = global.party_skill9_recharge[1, ref_party];

var i;
for ( i=1 ; i<=global.bal_chainsize ; i++ ) {
	if ( btl_chain.chain_command[i] ) {
		recharge[btl_chain.chain_slot[i]] += btl_chain.chain_recharge[i];
		};
	};
