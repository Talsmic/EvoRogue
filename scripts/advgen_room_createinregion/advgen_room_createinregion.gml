///advgen_room_createinregion(RegionID,RoomID,ForcePlace);
/// @arg RegionID
/// @arg RoomID
/// @arg ForcePlace

var RegionID = argument0;
var Xmin = adv_RegionXmin[RegionID];
var Xmax = adv_RegionXmax[RegionID];
var Ymin = adv_RegionYmin[RegionID];
var Ymax = adv_RegionYmax[RegionID];
var RoomID = argument1;
var ForcePlace = argument2;

advgen_room_create(Xmin,Xmax,Ymin,Ymax,RoomID,ForcePlace);