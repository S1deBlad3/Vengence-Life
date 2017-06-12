baseBuild = lbCurSel 1000;
alreadypressed = 0;

switch (baseBuild) do
{
	case 0: //Bar Gate
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('geld' call INV_GetItemAmount) >= 5000) then
			{
				['bargate',1] call INV_AddInventoryItem;
				['geld', -5000] call INV_addinventoryitem;
				alreadypressed = 0;
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 1: //Sign Checkpoint
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('geld' call INV_GetItemAmount) >= 250) then
			{
				['Sign_Checkpoint',1] call INV_AddInventoryItem;
				['geld', -250] call INV_addinventoryitem;
				alreadypressed = 0;
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 2: //Bunker (Small)
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('geld' call INV_GetItemAmount) >= 1000) then
			{
				['bunkersmall',1] call INV_AddInventoryItem;
				['geld', -1000] call INV_addinventoryitem;
				alreadypressed = 0;
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 3: //Road cone (light)
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('geld' call INV_GetItemAmount) >= 1000) then
			{
				['landconelight',1] call INV_AddInventoryItem;
				['geld', -1000] call INV_addinventoryitem;
				alreadypressed = 0;
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 4: //Road barrier (light)
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('geld' call INV_GetItemAmount) >= 1000) then
			{
				['roadbarrierlight',1] call INV_AddInventoryItem;
				['geld', -1000] call INV_addinventoryitem;
				alreadypressed = 0;
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 5: //Roadblock
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('geld' call INV_GetItemAmount) >= 1000) then
			{
				['roadblock',1] call INV_AddInventoryItem;
				['geld', -1000] call INV_addinventoryitem;
				alreadypressed = 0;
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 6: //Hideout
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('geld' call INV_GetItemAmount) >= 1000) then
			{
				['hideout',1] call INV_AddInventoryItem;
				['geld', -1000] call INV_addinventoryitem;
				alreadypressed = 0;
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 7: //Concrete Hedgehog
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('geld' call INV_GetItemAmount) >= 1000) then
			{
				['Hhedgehog_concrete',1] call INV_AddInventoryItem;
				['geld', -1000] call INV_addinventoryitem;
				alreadypressed = 0;
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 8: //Storage box
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 0;
			if (('geld' call INV_GetItemAmount) >= 1000) then
			{
				['LocalBasicWeaponsBox',1] call INV_AddInventoryItem;
				['geld', -1000] call INV_addinventoryitem;
				alreadypressed = 0;
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 9: //Camo Net
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('geld' call INV_GetItemAmount) >= 1000) then
			{
				['Camonet',1] call INV_AddInventoryItem;
				['geld', -1000] call INV_addinventoryitem;
				alreadypressed = 0;
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 10: //RazorWire
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('geld' call INV_GetItemAmount) >= 1000) then
			{
				['FortRazorWireCop',1] call INV_AddInventoryItem;
				['geld', -1000] call INV_addinventoryitem;
				alreadypressed = 0;
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 11: //Barricade
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('geld' call INV_GetItemAmount) >= 1000) then
			{
				['Barricade',1] call INV_AddInventoryItem;
				['geld', -1000] call INV_addinventoryitem;
				alreadypressed = 0;
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 12: //Fireplace
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('geld' call INV_GetItemAmount) >= 1000) then
			{
				['fireplace',1] call INV_AddInventoryItem;
				['geld', -1000] call INV_addinventoryitem;
				alreadypressed = 0;
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 13: //Tent
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('geld' call INV_GetItemAmount) >= 1000) then
			{
				['campeast',1] call INV_AddInventoryItem;
				['geld', -1000] call INV_addinventoryitem;
				alreadypressed = 0;
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 14: //Road Barrier
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('geld' call INV_GetItemAmount) >= 1000) then
			{
				['roadbarrierlong',1] call INV_AddInventoryItem;
				['geld', -1000] call INV_addinventoryitem;
				alreadypressed = 0;
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 15: //Trench
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('geld' call INV_GetItemAmount) >= 1000) then
			{
				['fortenvelopesmall',1] call INV_AddInventoryItem;
				['geld', -1000] call INV_addinventoryitem;
				alreadypressed = 0;
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 16: //House
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('geld' call INV_GetItemAmount) >= 800000) then
			{
				['House',1] call INV_AddInventoryItem;
				['geld', -800000] call INV_addinventoryitem;
				alreadypressed = 0;
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 17: //Small House
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('geld' call INV_GetItemAmount) >= 400000) then
			{
				['House2',1] call INV_AddInventoryItem;
				['geld', -400000] call INV_addinventoryitem;
				alreadypressed = 0;
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 18: //Warning Tape
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('geld' call INV_GetItemAmount) >= 1000) then
			{
				['signtape',1] call INV_AddInventoryItem;
				['geld', -1000] call INV_addinventoryitem;
				alreadypressed = 0;
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 19: //Gate
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('geld' call INV_GetItemAmount) >= 1000) then
			{
				['Tor',1] call INV_AddInventoryItem;
				['geld', -1000] call INV_addinventoryitem;
				alreadypressed = 0;
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 20: //Sandbag Wall
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('geld' call INV_GetItemAmount) >= 1000) then
			{
				['Sandsacke',1] call INV_AddInventoryItem;
				['geld', -1000] call INV_addinventoryitem;
				alreadypressed = 0;
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 21: //Barracks
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('geld' call INV_GetItemAmount) >= 20000) then
			{
				['Baracke',1] call INV_AddInventoryItem;
				['geld', -20000] call INV_addinventoryitem;
				alreadypressed = 0;
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 22: //Small Tower
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('geld' call INV_GetItemAmount) >= 1000) then
			{
				['Jaegerstand',1] call INV_AddInventoryItem;
				['geld', -1000] call INV_addinventoryitem;
				alreadypressed = 0;
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 23: //Fence
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('geld' call INV_GetItemAmount) >= 1000) then
			{
				['Blechzaun',1] call INV_AddInventoryItem;
				['geld', -1000] call INV_addinventoryitem;
				alreadypressed = 0;
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 24: //Helipad
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('geld' call INV_GetItemAmount) >= 1000) then
			{
				['helipad',1] call INV_AddInventoryItem;
				['geld', -1000] call INV_addinventoryitem;
				alreadypressed = 0;
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 25: //Guard Post
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('geld' call INV_GetItemAmount) >= 1000) then
			{
				['guardpost',1] call INV_AddInventoryItem;
				['geld', -1000] call INV_addinventoryitem;
				alreadypressed = 0;
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 26: //Small Land Ladder
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('geld' call INV_GetItemAmount) >= 1000) then
			{
				['ladr2',1] call INV_AddInventoryItem;
				['geld', -1000] call INV_addinventoryitem;
				alreadypressed = 0;
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
	case 27: //Toilet
	{
		if (alreadypressed == 0) then
		{
			alreadypressed = 1;
			if (('geld' call INV_GetItemAmount) >= 1000) then
			{
				['toilet',1] call INV_AddInventoryItem;
				['geld', -1000] call INV_addinventoryitem;
				alreadypressed = 0;
			}
			else
			{
				player groupChat "You do not have enough money";
				alreadypressed = 0;
			};
		}
		else
		{
			player groupChat "Transaction in progress";
		};
	};
};