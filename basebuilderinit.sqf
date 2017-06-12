if (!("basebuilder" call INV_HasLicense)) exitWith {player groupChat "You no longer have this job. This option still remains until you respawn but you cannot use it."};
_start = createDialog "basebuilder";

#define BasebuildMenu 1000

lbAdd [BasebuildMenu, "Bar Gate ($5000)"];
lbAdd [BasebuildMenu, "Sign Checkpoint ($250)"];
lbAdd [BasebuildMenu, "Bunker (Small) ($1000)"];
lbAdd [BasebuildMenu, "Road cone (light) ($1000)"];
lbAdd [BasebuildMenu, "Road barrier (light) ($1000)"];
lbAdd [BasebuildMenu, "Roadblock ($1000)"];
lbAdd [BasebuildMenu, "Hideout ($1000)"];
lbAdd [BasebuildMenu, "Concrete Hedgehog ($1000)"];
lbAdd [BasebuildMenu, "Storage box ($1000)"];
lbAdd [BasebuildMenu, "Camo Net ($1000)"];
lbAdd [BasebuildMenu, "RazorWire ($1000)"];
lbAdd [BasebuildMenu, "Barricade ($1000)"];
lbAdd [BasebuildMenu, "Fireplace ($1000)"];
lbAdd [BasebuildMenu, "MTent ($1000)"];
lbAdd [BasebuildMenu, "Road Barrier ($1000)"];
lbAdd [BasebuildMenu, "Trench ($1000)"];
lbAdd [BasebuildMenu, "House ($800000)"];
lbAdd [BasebuildMenu, "Small House ($400000)"];
lbAdd [BasebuildMenu, "Warning Tape ($1000)"];
lbAdd [BasebuildMenu, "Gate ($1000)"];
lbAdd [BasebuildMenu, "Sandbag Wall ($1000)"];
lbAdd [BasebuildMenu, "Barracks ($20000)"];
lbAdd [BasebuildMenu, "Small Tower ($1000)"];
lbAdd [BasebuildMenu, "Fence ($1000)"];
lbAdd [BasebuildMenu, "Helipad ($1000)"];
lbAdd [BasebuildMenu, "Guard Post ($1000)"];
lbAdd [BasebuildMenu, "Small Land Ladder ($1000)"];
lbAdd [BasebuildMenu, "Toilet ($1000)"];