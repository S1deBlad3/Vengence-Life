loanamount = ctrlText 892;
loanamount = loanamount call ISSE_str_StrToInt;
if (!(loanamount >= 25000)) exitWith {player groupChat "You need a valid amount greater than $25,000"};
if (loanamount > 200000) exitWith {player groupChat "You are not eligable for a larger loan"};
loanpaid = 0;
loandue = loanamount + 25000;
bankmoney = bankmoney + loanamount;
player groupChat "You have taken out a loan. After your 25 min grace period, every five minutes you will have $25,000 removed from your bank account every 5 min. If you do not have enough, the missing amount will be added to the amount due.";
peopleWithLoans = peopleWithLoans + [name vehicle player];
publicVariable "peopleWithLoans";

_close = closeDialog 0;

sleep 1200;
while {loanpaid < loandue} do
{	
	sleep 300;
	if (bankmoney >= 25000) then
	{
		bankmoney = bankmoney - 25000;
		loanpaid = loanpaid + 25000;
		player groupChat "$25,000 has been removed from your account for the loan";
		player groupchat format["You have paid %1 and still owe %2", loanpaid, loandue - loanpaid];
	}
	else
	{
		bankmoney = bankmoney - bankmoney;
		loandue = loandue + (25000 - bankmoney);
		loanpaid = loanpaid + bankmoney;
		player groupChat "You did not have enough to pay for the loan. The money that you had was taken and the missing amount has been added to the amount due";
		hint format["You have paid %1 and still owe %2", loanpaid, loandue - loanpaid];
	};
};

player groupchat "Your loan has been repaid";
peopleWithLoans = peopleWithLoans - [name vehicle player];
publicVariable "peopleWithLoans";