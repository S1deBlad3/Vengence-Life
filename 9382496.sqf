_text = [

"Welcome to an official <t color='#9090FF'>Alpha testing</t>! Please read the news below.<br />",

"All credit for the creation of this map goes to -=Tanith 1st=- Marinesharp Mostchameleon and the genius Marre and Rob.<br/>


"<t underline='true' color='#ff0000'>Please Read the following:</t><br/>
<t color='#9090FF'>
Any problems? If there are then please visit our TS3 Server, Thank you for testing<br/>
We made it guys we made an awesome file and we are glad to be back hope you guys hope that to!<br/>
-This mission was reanimated by The Challnger Dev team (TheGreatstep and Robo), Credits go to: MostChameleon president of NSPD, -=Tanith 1st=- and Marinesharp for some help!<br/>",

"<t underline='true' color='#ff0000'>Contact Us!</t><br />
  TeamSpeak 3 Server Address: N/A<br />
  Website :N/A <br />
  Intro Song:The Arctic Monkeys- R U Mine?."

];

_t = [];
{
	_t = _t + [(parseText _x)];
} foreach _text;
_text = _t;

"Welcome to Alpha 1.0!" hintC _text;
//
