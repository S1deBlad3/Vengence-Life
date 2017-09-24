class MyHelloWorldDialog {
	idd = -1;                      // set to -1, because we don't require a unique ID
	movingEnable = true;           // the dialog can be moved with the mouse (see "moving" below)
	enableSimulation = false;      // freeze the game
	controlsBackground[] = { };    // no background controls needed
	objects[] = { };               // no objects needed
	controls[] = { MyHelloText };  // our "Hello world" text as seen below:
	
	class MyHelloText {
		idc = -1;              // set to -1, unneeded
		moving = 1;            // left click (and hold) this control to move the dialog
		                       // (requires "movingEnabled" to be 1, see above)
		type = CT_STATIC;      // constant
		style = ST_LEFT;       // constant
		text = "Hello world";
		font = FontM;
		sizeEx = 0.023;

		colorBackground[] = { 1, 1, 1, 0.3 };
		colorText[] = { 0, 0, 0, 1 };

		x = 0.8;
		y = 0.1;
		w = 0.2;
		h = 0.05;
	};
};