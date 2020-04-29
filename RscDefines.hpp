
#define FontM 			"TahomaB"

#define FontHTML 		"TahomaB"

#define CT_STATIC 		0

#define CT_BUTTON		1

#define CT_EDIT			2

#define CT_SLIDER		3

#define CT_COMBO		4

#define CT_LISTBOX		5

#define CT_TOOLBOX 		6

#define CT_CHECKBOXES 		7

#define CT_PROGRESS 		8

#define CT_HTML 		9

#define CT_STATIC_SKEW 		10

#define CT_ACTIVETEXT		11

#define CT_TREE 		12

#define CT_STRUCTURED_TEXT 	13

#define CT_CONTEXT_MENU 	14

#define CT_CONTROLS_GROUP 	15

#define CT_XKEYDESC 		40

#define CT_XBUTTON 		41

#define CT_XLISTBOX 		42

#define CT_XSLIDER 		43

#define CT_XCOMBO 		44

#define CT_ANIMATED_TEXTURE	45

#define CT_OBJECT 		80

#define CT_OBJECT_ZOOM 		81

#define CT_OBJECT_CONTAINER	82

#define CT_OBJECT_CONT_ANIM	83

#define CT_LINEBREAK		98

#define CT_USER			99

#define CT_MAP 			100

#define CT_MAP_MAIN		101

#define ST_LEFT			0

#define ST_RIGHT		1

#define ST_CENTER		2

#define ST_MULTI		16

#define ST_PICTURE		48

#define ST_FRAME		64

#define ST_SHADOW		256

#define ST_NO_RECT		512



#define GUI_GRID_X	(0)
#define GUI_GRID_Y	(0)
#define GUI_GRID_W	(0.025)
#define GUI_GRID_H	(0.04)
#define GUI_GRID_WAbs	(1)
#define GUI_GRID_HAbs	(1)

//=====================================================================================

class IGUIBack
{
	type = 0;
	idc = 124;
	style = 128;
	text = "";
	colorText[] =
	{
		0,
		0,
		0,
		0
	};
	font = "default";
	sizeEx = 0;
	shadow = 0;
	x = 0.1;
	y = 0.1;
	w = 0.1;
	h = 0.1;
	colorbackground[] =
	{
		"(profilenamespace getvariable ['IGUI_BCG_RGB_R',0])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_G',1])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_B',1])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_A',0.8])"
	};
};
//topside infobar
class RPP_BackgroundFill
{
    idc = -1;
    type = CT_STATIC;
    //style = ST_SHADOW;
	style = ST_PICTURE;
    x = 0.13;
    y = 0.24;
    w = 1.2549;
    h = 0.418301;
    colorText[] = {1, 1, 1, 1};
    colorBackground[] = {0.1,0.1,0.1,1};
    font = "Zeppelin32";
    sizeEx = 0.032;
};
class RPP_StructuredText
{
	access = ReadAndWrite;
	type = CT_STRUCTURED_TEXT;
	idc = -1;
	style = ST_LEFT;

	x = 0.1;
	y = 0.1;
	w = 0.2;
	h = 0.2;
	sizeEx = 0.027;
	size = 0.027;
	lineSpacing = 1;

	colorBackground[] = {0,0,0,0};
	colorText[] = {0.6, 0.8392, 0.4706, 0};

	text = "";

	class Attributes
	{
		font  = "Zeppelin32";
		color = "#FF6600";
		align = "left";
		shadow = false;
	};
};
//inforbar end


class RscText

{

type              = CT_STATIC;
idc               = -1;
style             = ST_LEFT;
colorBackground[] = {0, 0, 0, 0};
colorText[]       = {0, 0, 0, 1};
font              = FontM;
sizeEx            = 0.02;
text              = "";

};

class RscBgRahmen

{

type              = CT_STATIC;
idc               = -1;
style             = ST_FRAME;
colorBackground[] = {1.0, 1.0, 1.0, 0.75};
colorText[]       = {0, 0, 0, 1};
font              = FontM;
SizeEX            = 0.025;
text              = "";

};

class RscBackground

{

colorBackground[] = {1.0, 1.0, 1.0, 0.75};
text              = "";
type              = CT_STATIC;
idc               = -1;
style             = ST_LEFT;
colorText[]       = {1, 1, 1, 1};
font              = FontM;
sizeEx            = 0.04;

};

class RscPicture

{

type              = CT_STATIC;
idc               =  -1;
style             = ST_PICTURE;
colorBackground[] = {0, 0, 0, 0};
colorText[]       = {1, 1, 1, 1};
font              = FontM;
sizeEx            = 0.02;
text              = "";

};

class RscBackgroundPicture

{

type              = CT_STATIC;
idc               =  -1;
style             = ST_PICTURE;
colorBackground[] = {0, 0, 0, 0};
colorText[]       = {0, 0, 0, 1};
font              = FontM;
sizeEx            = 0.02;
text              = "dbg.pac";

};

class RscButton

{

type                      = CT_BUTTON;
idc                       = -1;
style                     = ST_CENTER;
colorText[]               = {0, 0, 0, 1};
font                      = FontHTML;
sizeEx                    = 0.025;
soundPush[]               = {, 0.2, 1};
soundClick[]              = {"ui\ui_ok", 0.2, 1};
soundEscape[]             = {"ui\ui_cc", 0.2, 1};
default                   = false;
text                      = "";
action                    = "";
colorActive[]             = {0, 0, 0, 0};
colorDisabled[]           = {0, 0, 0, 0.1};
colorBackground[]         = {0.8,0.8,0.8,0.3};
colorBackgroundActive[]   = {0.7,0.7,0.7,1};
colorBackgroundDisabled[] = {1,1,1,0.3};
colorFocused[]            = {0.84,1,0.55,1};
colorShadow[]             = {0, 0, 0, 0.1};
colorBorder[]             = {1, 1, 1, 0.1};
offsetX                   = 0;
offsetY                   = 0;
offsetPressedX            = 0;
offsetPressedY            = 0;
borderSize                = 0;
soundEnter[]              = {"", 0.15, 1};

};

class RscDummy : RscButton

{

x   = -1.0;
y   = -1.0;
idc = -1;
w   = 0.01;
h   = 0.01;
default = true;

};

class RscEdit

{

type = CT_EDIT;
idc = -1;
style = ST_LEFT;
font = FontHTML;
sizeEx = 0.02;
colorText[] = {0, 0, 0, 1};
colorSelection[] = {0.5, 0.5, 0.5, 1};
autocomplete = false;text = "";

};

class RscLB_C

{

style                   = ST_LEFT;
idc                     = -1;
colorSelect[]           = {0, 0, 0, 1.0};
colorSelectBackground[] = {0.7, 0.7, 0.7, 1};
colorText[]             = {0, 0, 0, 1};
colorBackground[]       = {0.8, 0.8, 0.8, 0.3};
colorScrollbar[] 	= {Dlg_Color_White,1};
font                    = FontHTML;
sizeEx                  = 0.025;
rowHeight               = 0.04;
period 			= 1.200000;
maxHistoryDelay 	= 1.000000;
autoScrollSpeed 	= -1;
autoScrollDelay 	= 5;
autoScrollRewind 	= 0;

class ScrollBar {};

};

class RscListBox: RscLB_C

{

soundSelect[] = {"", 0.1, 1};
type          = CT_LISTBOX;

};

class RscCombo: RscLB_C

{

type            = CT_COMBO;
wholeHeight     = 0.3;
soundSelect[]   = {"", 0.15, 1};
soundExpand[]   = {"", 0.15, 1};
soundCollapse[] = {"", 0.15, 1};
arrowEmpty = "\ca\ui\data\ui_arrow_combo_ca.paa";
arrowFull = "\ca\ui\data\ui_arrow_combo_active_ca.paa";

};

class RscSliderH

{

access  = ReadandWrite;
type    = CT_SLIDER;
idc     = -1;
sizeEx  = 0.025;
style   = 1024;
color[] = {0.2, 0.2, 0.2, 1};
colorActive[] = {1, 1, 1, 1};

};

class RscSliderV

{

access  = ReadandWrite;
type    = CT_SLIDER;
idc     = -1;
sizeEx  = 0.025;
style   = 0;
color[] = {0.2, 0.2, 0.2, 1};
colorActive[] = {1, 1, 1, 1};

};