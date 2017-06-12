_array = _this select 3;
_art   = _array select 0;

if (_art == "TV") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["TV"];
    hint "License added.";
};

if (_art == "car") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["car"];
    hint "License added.";
};

if (_art == "air") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["air"];
    hint "License added.";
};


if (_art == "boat") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["boat"];
    hint "License added.";
};

if (_art == "truck") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["truck"];
    hint "License added.";
};

if (_art == "item") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["oil"];
    INV_LizenzOwner = INV_LizenzOwner + ["Baker"];
    INV_LizenzOwner = INV_LizenzOwner + ["Diamond"];
    INV_LizenzOwner = INV_LizenzOwner + ["kaviar"];
	hint "License's added.";
};

if (_art == "Gangs") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["cocaine ga1"];
	INV_LizenzOwner = INV_LizenzOwner + ["lsd ga1"];
	INV_LizenzOwner = INV_LizenzOwner + ["heroin ga2"];
	INV_LizenzOwner = INV_LizenzOwner + ["lsd ga2"];
	INV_LizenzOwner = INV_LizenzOwner + ["heroin ga3"];
	INV_LizenzOwner = INV_LizenzOwner + ["marijuana ga3"];
    hint "Licenses added.";
};

if (_art == "Gun") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["semiautomatic"];
	INV_LizenzOwner = INV_LizenzOwner + ["gunprobationpistol"];
	INV_LizenzOwner = INV_LizenzOwner + ["riflelicense"];
    hint "Licenses added.";
};

if (_art == "Police") then 
{
	INV_LizenzOwner = INV_LizenzOwner + ["probator"];
	INV_LizenzOwner = INV_LizenzOwner + ["patrol_training"];
	INV_LizenzOwner = INV_LizenzOwner + ["response_training"];
	INV_LizenzOwner = INV_LizenzOwner + ["sobr_training"];
	INV_LizenzOwner = INV_LizenzOwner + ["air_support_training"];
    hint "Licenses added.";
};

if (_art == "Terror") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["terror"];
	INV_LizenzOwner = INV_LizenzOwner + ["terrorVeh"];
    hint "Licenses added.";
};

if (_art == "Bounty") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["Bounty"];
    hint "License added.";
};

if (_art == "Notforcivs") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["Notforcivs"];
    hint "License added.";
};

if (_art == "Notforcops") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["Notforcops"];
    hint "License added.";
};
if (_art == "engineer") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["engineer"];
    hint "License added.";
};
if (_art == "all") then 
{
    INV_LizenzOwner = INV_LizenzOwner + ["engineer"];
	INV_LizenzOwner = INV_LizenzOwner + ["Bounty"];
	INV_LizenzOwner = INV_LizenzOwner + ["TV"];
	INV_LizenzOwner = INV_LizenzOwner + ["car"];
	INV_LizenzOwner = INV_LizenzOwner + ["air"];
	INV_LizenzOwner = INV_LizenzOwner + ["boat"];
	INV_LizenzOwner = INV_LizenzOwner + ["truck"];
    INV_LizenzOwner = INV_LizenzOwner + ["Oil"];
    INV_LizenzOwner = INV_LizenzOwner + ["Baker"];
    INV_LizenzOwner = INV_LizenzOwner + ["Diamond"];
    INV_LizenzOwner = INV_LizenzOwner + ["kaviar"];
    INV_LizenzOwner = INV_LizenzOwner + ["cocaine ga1"];
	INV_LizenzOwner = INV_LizenzOwner + ["lsd ga1"];
	INV_LizenzOwner = INV_LizenzOwner + ["heroin ga2"];
	INV_LizenzOwner = INV_LizenzOwner + ["lsd ga2"];
	INV_LizenzOwner = INV_LizenzOwner + ["heroin ga3"];
	INV_LizenzOwner = INV_LizenzOwner + ["marijuana ga3"];
    INV_LizenzOwner = INV_LizenzOwner + ["semiautomatic"];
	INV_LizenzOwner = INV_LizenzOwner + ["gunprobationpistol"];
	INV_LizenzOwner = INV_LizenzOwner + ["riflelicense"];
	INV_LizenzOwner = INV_LizenzOwner + ["probator"];
	INV_LizenzOwner = INV_LizenzOwner + ["patrol_training"];
	INV_LizenzOwner = INV_LizenzOwner + ["response_training"];
	INV_LizenzOwner = INV_LizenzOwner + ["sobr_training"];
	INV_LizenzOwner = INV_LizenzOwner + ["air_support_training"];
	INV_LizenzOwner = INV_LizenzOwner + ["terror"];
	INV_LizenzOwner = INV_LizenzOwner + ["terrorVeh"];
    hint "License added.";
};
else
hint "NO SCRIPT";
