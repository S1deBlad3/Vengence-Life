if (player in coparray) then 

{
["Landmine",1] call INV_AddInventoryItem;
hint "You have disabled a IED! Take it to the disposal unit!";
mine4 hideObject true;
sleep 50;
mine4 hideObject false;
};