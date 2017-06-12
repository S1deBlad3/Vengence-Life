robpoolsafe1 		 = 0; 
robpoolsafe2 		 = 0;
robpoolsafe3 		 = 0;
robpoolsafe4         = 0;

if(debug)then

{

robpoolsafe1 		 = 5000; 
robpoolsafe2 		 = 5000;
robpoolsafe3 		 = 5000;
robpoolsafe4         = 5000;

};

while{true} do

{

if(robpoolsafe1 < maxinsafe)then{robpoolsafe1 = robpoolsafe1 + round random 2000; publicvariable "robpoolsafe1"};
if(robpoolsafe2 < maxinsafe)then{robpoolsafe2 = robpoolsafe2 + round random 2000; publicvariable "robpoolsafe2"};
if(robpoolsafe3 < maxinsafe)then{robpoolsafe3 = robpoolsafe3 + round random 2000; publicvariable "robpoolsafe3"};
if(robpoolsafe4 < maxinsafe)then{robpoolsafe4 = robpoolsafe4 + round random 2000; publicvariable "robpoolsafe4"};

sleep 30;

};
