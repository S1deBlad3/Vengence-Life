class CourtMap

{

idd = -1;
movingEnable = true;
controlsBackground[] = {DLG_BACK1, background};
objects[] = { };
controls[] = {button_ticket, cancel, dummybutton};

class DLG_BACK1: RscBackground                   {x = 0.40; y = 0.25;w = 0.22; h = 0.65;};
class background : RscBgRahmen                   {x = 0.40; y = 0.25;w = 0.22; h = 0.65;text = "Court Debug Screen";};
//class ticket_eingabe : RscEdit          {idc = 11;x = 0.41; y = 0.58;w = 0.20; h = 0.03;text = "1000";};
class button_ticket : RscButton                  {x = 0.41; y = 0.63;w = 0.20; h = 0.04;text = $STRD_description_civmenu_ticket;   action = "[1] execVM ""Courtinit.sqf""; closedialog 0";};
class cancel : RscButton                         {x = 0.41; y = 0.78;w = 0.20; h = 0.04;text = $STRD_description_cancel;           action = "closedialog 0";};
class dummybutton : RscDummy            {idc = 1007;};

};
