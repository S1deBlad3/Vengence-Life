if (player in coparray) then 

{
["Landmine",1] call INV_AddInventoryItem;
hint "You have disabled a IED! Take it to the disposal unit!";
mine1 hideObject true;
sleep 50;
mine1 hideObject false;
};
