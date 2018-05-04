/// @desc Phase Index
if ( lock_skillinprogress ) { return };
if ( lock_switchinprogress ) { return };

switch ( battle_phase )    {
    case "Setup":
        event_user(1);
        break;
    case "Command":
        event_user(2);
        break;
    case "Combat":
        event_user(3);
        break;
    case "End":
        event_user(4);
        break;
    case "Victory":
        event_user(5);
        break;
    case "Defeat":
        event_user(6);
        break;
    };