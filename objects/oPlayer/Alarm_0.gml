/// @desc Updates (Every Update Window)
alarm[0] = global.UpdateWindow;
//==============================================================================



if ( !OptionalUpdates ) { return } //===========================================
//Condense Party and Storage
party_condense(id);
storage_condense(id);
