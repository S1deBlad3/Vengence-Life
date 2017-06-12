_selection = ((_this select 3) select 0);
_selection = ((player select 1) select 0);

(format ['server globalChat "The plauge is comming!";', _selection]) call broadcast;
sleep 5;

player setdamage 1;
