Msg("ShopX Modular System Loaded!\n");
Entities.First().PrecacheScriptSound("Christmas.GiftPickup");
IncludeScript("ShopSaveLogic");

//────────────────────────────────────────────────────────────────────────────
// Items
//────────────────────────────────────────────────────────────────────────────
::ShopItems <- {
    //── Pistols
    pistol = {
        displayName = "Pistol",
        category = "pistols",
        price = 25,
        limit = 2,
        aliases = ["pistol", "pistols"],
        give = function(player) { player.GiveItem("weapon_pistol"); }
    },
    magnum = {
        displayName = "Magnum",
        category = "pistols",
        price = 75,
        limit = 2,
        aliases = ["magnum", "deagle", "mag"],
        give = function(player) { player.GiveItem("weapon_pistol_magnum"); }
    },

    //── SMGs
    uzi = {
        displayName = "UZI",
        category = "smgs",
        price = 150,
        limit = 2,
        aliases = ["uzi"],
        give = function(player) { player.GiveItem("weapon_smg"); }
    },
    silenced_smg = {
        displayName = "Silenced SMG",
        category = "smgs",
        price = 175,
        limit = 2,
        aliases = ["silenced smg", "silentsmg", "ssmg"],
        give = function(player) { player.GiveItem("weapon_smg_silenced"); }
    },
    mp5 = {
        displayName = "MP5",
        category = "smgs",
        price = 150,
        limit = 2,
        aliases = ["mp5"],
        give = function(player) { player.GiveItem("weapon_smg_mp5"); }
    },

    //── Shotguns
    pump_shotgun = {
        displayName = "Pump Shotgun",
        category = "shotguns",
        price = 100,
        limit = 2,
        aliases = ["pump shotgun", "pump", "pshotgun"],
        give = function(player) { player.GiveItem("weapon_pumpshotgun"); }
    },
    chrome_shotgun = {
        displayName = "Chrome Shotgun",
        category = "shotguns",
        price = 100,
        limit = 2,
        aliases = ["chrome shotgun", "chrome"],
        give = function(player) { player.GiveItem("weapon_shotgun_chrome"); }
    },
    auto_shotgun = {
        displayName = "Auto Shotgun",
        category = "shotguns",
        price = 200,
        limit = 2,
        aliases = ["auto shotgun", "auto"],
        give = function(player) { player.GiveItem("weapon_autoshotgun"); }
    },
    spas = {
        displayName = "SPAS Shotgun",
        category = "shotguns",
        price = 225,
        limit = 2,
        aliases = ["spas", "spasshotgun"],
        give = function(player) { player.GiveItem("weapon_shotgun_spas"); }
    },

    //── Rifles
    m16 = {
        displayName = "M16 Rifle",
        category = "rifles",
        price = 200,
        limit = 2,
        aliases = ["m16"],
        give = function(player) { player.GiveItem("weapon_rifle"); }
    },
    ak47 = {
        displayName = "AK47 Rifle",
        category = "rifles",
        price = 225,
        limit = 2,
        aliases = ["ak", "ak47"],
        give = function(player) { player.GiveItem("weapon_rifle_ak47"); }
    },
    desert_rifle = {
        displayName = "Desert Rifle",
        category = "rifles",
        price = 200,
        limit = 2,
        aliases = ["desert rifle", "desert", "drifle"],
        give = function(player) { player.GiveItem("weapon_rifle_desert"); }
    },
    sg552 = {
        displayName = "SG552",
        category = "rifles",
        price = 200,
        limit = 2,
        aliases = ["sg552", "sg"],
        give = function(player) { player.GiveItem("weapon_rifle_sg552"); }
    },

    //── Snipers
    hunting_rifle = {
        displayName = "Hunting Rifle",
        category = "snipers",
        price = 200,
        limit = 2,
        aliases = ["hunting rifle", "hunt", "hrifle"],
        give = function(player) { player.GiveItem("weapon_hunting_rifle"); }
    },
    military_sniper = {
        displayName = "Military Sniper",
        category = "snipers",
        price = 200,
        limit = 2,
        aliases = ["military sniper", "msniper", "military"],
        give = function(player) { player.GiveItem("weapon_sniper_military"); }
    },
    scout = {
        displayName = "Scout Sniper",
        category = "snipers",
        price = 100,
        limit = 2,
        aliases = ["scout"],
        give = function(player) { player.GiveItem("weapon_sniper_scout"); }
    },
    awp = {
        displayName = "AWP Sniper",
        category = "snipers",
        price = 150,
        limit = 2,
        aliases = ["awp"],
        give = function(player) { player.GiveItem("weapon_sniper_awp"); }
    },

    //── Heavy
    grenade_launcher = {
        displayName = "Grenade Launcher",
        category = "heavy",
        price = 300,
        limit = 1,
        aliases = ["grenade launcher", "gl"],
        give = function(player) { player.GiveItem("weapon_grenade_launcher"); }
    },
    m60 = {
        displayName = "M60",
        category = "heavy",
        price = 300,
        limit = 1,
        aliases = ["m60"],
        give = function(player) { player.GiveItem("weapon_rifle_m60"); }
    },

    //── Throwables
    molotov = {
        displayName = "Molotov",
        category = "throwables",
        price = 75,
        limit = 3,
        aliases = ["molotov", "molly"],
        give = function(player) { player.GiveItem("weapon_molotov"); }
    },
    pipe_bomb = {
        displayName = "Pipe Bomb",
        category = "throwables",
        price = 75,
        limit = 3,
        aliases = ["pipe bomb", "pipe"],
        give = function(player) { player.GiveItem("weapon_pipe_bomb"); }
    },
    vomitjar = {
        displayName = "Vomitjar",
        category = "throwables",
        price = 75,
        limit = 3,
        aliases = ["vomitjar", "bile", "vomit"],
        give = function(player) { player.GiveItem("weapon_vomitjar"); }
    },

    //── Healing & Support
    medkit = {
        displayName = "Medkit",
        category = "healing",
        price = 200,
        limit = 3,
        aliases = ["medkit", "kit", "aid"],
        give = function(player) { player.GiveItem("weapon_first_aid_kit"); }
    },
    pain_pills = {
        displayName = "Pain Pills",
        category = "healing",
        price = 75,
        limit = 3,
        aliases = ["pain pills", "pills", "p"],
        give = function(player) { player.GiveItem("weapon_pain_pills"); }
    },
    adrenaline = {
        displayName = "Adrenaline",
        category = "healing",
        price = 75,
        limit = 3,
        aliases = ["adrenaline", "adre"],
        give = function(player) { player.GiveItem("weapon_adrenaline"); }
    },
    defib = {
        displayName = "Defibrillator",
        category = "healing",
        price = 250,
        limit = 1,
        aliases = ["defib", "defibrillator"],
        give = function(player) { player.GiveItem("weapon_defibrillator"); }
    },

    //── Upgrades
    incendiary_pack = {
        displayName = "Incendiary pack",
        category = "upgrades",
        price = 100,
        limit = 2,
        aliases = ["incendiary pack", "firepack", "inc"],
        give = function(player) { player.GiveItem("weapon_upgradepack_incendiary"); }
    },
    explosive_pack = {
        displayName = "Explosive pack",
        category = "upgrades",
        price = 100,
        limit = 2,
        aliases = ["explosive pack", "exp", "explosive"],
        give = function(player) { player.GiveItem("weapon_upgradepack_explosive"); }
    },
    laser = {
        displayName = "Lasersight",
        category = "upgrades",
        price = 100,
        limit = 3,
        aliases = ["laser", "lasersight", "sight"],
        give = function(player) { if (player.IsValid() && player.IsSurvivor()) player.GiveUpgrade(2); }
    },
	laser_pack = {
        displayName = "Lasersight Pack",
        category = "upgrades",
        price = 200,
        limit = 1,
        aliases = ["laserpack", "lasersight pack", "sight pack", "laser pack"],
        give = function(player) { local laserTable = { classname = "upgrade_laser_sight", targetname = "laser", model = "models/w_models/weapons/w_laser_sights.mdl", origin = player.GetOrigin(), angles = player.GetAngles(), spawnflags = 2 }; g_ModeScript.CreateSingleSimpleEntityFromTable(laserTable); }
    },

    //── Extras
    selfrevive = {
        displayName = "Self Revive",
        category = "others",
        price = 400,
        limit = 1,
        aliases = ["selfrevive", "revive", "reviveme"],
        give = function(player) { if (player.IsValid() && player.IsSurvivor() && !player.IsDead() && player.IsIncapacitated()) player.ReviveFromIncap(); }
    },
    selfheal = {
        displayName = "Self Heal",
        category = "others",
        price = 500,
        limit = 1,
        aliases = ["selfheal", "heal", "healme"],
        give = function(player) { if (player.IsValid() && player.IsSurvivor()) player.SetHealth(player.GetMaxHealth()); }
    },
	refill_ammo = {
	    displayName = "Primary Ammo",
    	category = "others",
    	price = 150,
    	limit = 3,
    	aliases = ["ammo", "refill"],
    	give = function(player) {
       	    if (!player || !player.IsValid() || !player.IsSurvivor()) return;
      	    local invTable = {};
      	    GetInvTable(player, invTable);
      	    if (!("slot0" in invTable) || !invTable.slot0) {
      	        ClientPrint(player, 3, "x04 No primary weapon equipped!");
      	        return;
     	    }
     	    local primary = invTable.slot0;
     	    local classname = primary.GetClassname();
      	    local ammoAmount = 0;
     	    if (classname == "weapon_smg" || classname == "weapon_smg_silenced" || classname == "weapon_smg_mp5") ammoAmount = 650;
      	    else if (classname == "weapon_rifle" || classname == "weapon_rifle_ak47" || classname == "weapon_rifle_desert" || classname == "weapon_rifle_sg552") ammoAmount = 360;
    	    else if (classname == "weapon_autoshotgun" || classname == "weapon_shotgun_spas") ammoAmount = 90;
     	    else if (classname == "weapon_pumpshotgun" || classname == "weapon_shotgun_chrome") ammoAmount = 72;
     	    else if (classname == "weapon_hunting_rifle" || classname == "weapon_sniper_military" || classname == "weapon_sniper_scout" || classname == "weapon_sniper_awp") ammoAmount = 180;
     	    else return;
      	    player.GiveAmmo(ammoAmount);
    	}	
	},

    //── Melee
    baseball_bat = {
        displayName = "Baseball Bat",
        category = "melee",
        price = 100,
        limit = 2,
        aliases = ["baseball bat", "bat"],
        give = function(player) { player.GiveItem("baseball_bat"); }
    },
    katana = {
        displayName = "Katana",
        category = "melee",
        price = 100,
        limit = 2,
        aliases = ["katana", "sword"],
        give = function(player) { player.GiveItem("katana"); }
    },
    cricket_bat = {
        displayName = "Cricket Bat",
        category = "melee",
        price = 100,
        limit = 2,
        aliases = ["cricket bat", "cricket"],
        give = function(player) { player.GiveItem("cricket_bat"); }
    },
    crowbar = {
        displayName = "Crowbar",
        category = "melee",
        price = 100,
        limit = 2,
        aliases = ["crowbar"],
        give = function(player) { player.GiveItem("crowbar"); }
    },
    chainsaw = {
        displayName = "Chainsaw",
        category = "melee",
        price = 150,
        limit = 1,
        aliases = ["chainsaw", "saw"],
        give = function(player) { player.GiveItem("chainsaw"); }
    },
    golfclub = {
        displayName = "Golfclub",
        category = "melee",
        price = 100,
        limit = 2,
        aliases = ["golf club", "golfclub", "club"],
        give = function(player) { player.GiveItem("golfclub"); }
    },
    machete = {
        displayName = "Machete",
        category = "melee",
        price = 100,
        limit = 2,
        aliases = ["machete"],
        give = function(player) { player.GiveItem("machete"); }
    },
    shovel = {
        displayName = "Shovel",
        category = "melee",
        price = 100,
        limit = 2,
        aliases = ["shovel"],
        give = function(player) { player.GiveItem("shovel"); }
    },
    nightstick = {
        displayName = "Nightstick",
        category = "melee",
        price = 100,
        limit = 2,
        aliases = ["nightstick"],
        give = function(player) { player.GiveItem("nightstick"); }
    },
    electric_guitar = {
        displayName = "Guitar",
        category = "melee",
        price = 100,
        limit = 2,
        aliases = ["electric guitar", "guitar"],
        give = function(player) { player.GiveItem("electric_guitar"); }
    },
    knife = {
        displayName = "Knife",
        category = "melee",
        price = 100,
        limit = 2,
        aliases = ["knife", "dagger"],
        give = function(player) { player.GiveItem("knife"); }
    },
    fireaxe = {
        displayName = "Fireaxe",
        category = "melee",
        price = 100,
        limit = 2,
        aliases = ["fireaxe", "axe"],
        give = function(player) { player.GiveItem("fireaxe"); }
    },
    frying_pan = {
        displayName = "Frying Pan",
        category = "melee",
        price = 100,
        limit = 2,
        aliases = ["frying pan", "pan"],
        give = function(player) { player.GiveItem("frying_pan"); }
    },
    pitchfork = {
        displayName = "Pitchfork",
        category = "melee",
        price = 100,
        limit = 2,
        aliases = ["pitchfork", "fork"],
        give = function(player) { player.GiveItem("pitchfork"); }
    }
};


//────────────────────────────────────────────────────────────────────────────
// Shop logic
//────────────────────────────────────────────────────────────────────────────
::ShopX <- {
    playerPoints = {},
	playerPurchases = {},

    buyCommands = ["!b", "!s", "!buy", "!shop"],

    //────────────── Helpers ──────────────────────────────────────────────────
    function StringTrim(str) {
        while (str.len() > 0 && (str[0] == ' ' || str[0] == '\t')) str = str.slice(1);
        while (str.len() > 0 && (str[str.len() - 1] == ' ' || str[str.len() - 1] == '\t')) str = str.slice(0, str.len() - 1);
        return str;
    },

    function StringSplit(str, delimiter) {
        local result = [];
        local start = 0;
        local idx = 0;
        while ((idx = str.find(delimiter, start)) != null) {
            result.append(str.slice(start, idx));
            start = idx + delimiter.len();
        }
        result.append(str.slice(start, str.len()));
        return result;
    },

    function Normalize(str) {
        return StringTrim(str).tolower();
    },
	
	function ArrayJoin(arr, startIndex, delimiter) {
        local result = "";
        for (local i = startIndex; i < arr.len(); i++) {
            result += arr[i];
            if (i < arr.len() - 1) result += delimiter;
        }
        return result;
    },

    //────────────── Points System ────────────────────────────────────────────
    function AddPoints(player, amount, reason, silent) {
	    if (player == null || !player.IsValid() || !player.IsSurvivor() || IsPlayerABot(player)) return;
        local id = player.GetNetworkIDString();
        if (!(id in ::ShopX.playerPoints)) ::ShopX.playerPoints[id] <- 0;
        ::ShopX.playerPoints[id] += amount;
		if (silent) {
    		return;
		} else {	
       	    local total = ::ShopX.playerPoints[id];
        	local msg = "\x05+" + amount + "\x01 Points";
        	if (reason != null) msg += "\x01 For \x05" + reason;
        	msg += "\x01! Total: \x05" + total + "\x01 Points!";
        	ClientPrint(player, 3, msg);
		}	
    },

    //────────────── Item Lookup ──────────────────────────────────────────────
	FindItemByAlias = function(alias) {
   	    alias = Normalize(alias);
    	foreach (key, data in ::ShopItems) {
        	if (!("aliases" in data)) continue;
        	foreach (a in data.aliases) {
            	if (Normalize(a) == alias) {
                	return { key = key, data = data };
            	}
        	}
    	}
    	return null;
	},
	
	function OnGameEvent_player_connect_full(params) {
 	   if (!("userid" in params)) return;

  	    local player = GetPlayerFromUserID(params.userid);
   	    if (player == null || !player.IsValid() || !player.IsSurvivor() || IsPlayerABot(player)) return;

    	ClientPrint(player, 3, "\x01Use \x05!s\x01 / \x05!b\x01 / \x05!shop\x01 / \x05!buy\x01 with item name to purchase.");
    	ClientPrint(player, 3, "\x01Type \x05!list\x01 to see all available items names and prices.");
	},

    //────────────── Command Handling ─────────────────────────────────────────
    function OnGameEvent_player_say(params) {
        if (!("userid" in params) || !("text" in params)) return;
        local player = GetPlayerFromUserID(params.userid);
        if (player == null || !player.IsValid() || !player.IsSurvivor() || IsPlayerABot(player)) return;

        local text = Normalize(params.text);
	
        if (text == "!test" || text == "!t") {
            ::ShopSave.PrintPlayerPoints();
	return;
        }
	
        if (text == "!check" || text == "!points" || text == "!p") {
            local id = player.GetNetworkIDString();
            local pts = (id in ::ShopX.playerPoints) ? ::ShopX.playerPoints[id] : 0;
            ClientPrint(player, 3, "\x01You Have \x05" + pts + "\x01 Points!");
            return;
        }

        local parts = StringSplit(text, " ");
        local cmd = parts[0];

        if (cmd == "!list") {
            if (parts.len() < 2) {
                ClientPrint(player, 3, "\x01Usage: \x05!list\x01 <category>");
                ClientPrint(player, 3, "\x01" + "Categories: \x05pistols\x01, \x05shotguns\x01, \x05smgs\x01, \x05rifles\x01, \x05snipers\x01, \x05heavy\x01, \x05melee\x01, \x05healing\x01, \x05throwables\x01, \x05upgrades\x01, \x05others");
                return;
            }

            local category = Normalize(parts[1]);
            local foundCategory = false;
            local foundItems = false;
            
            foreach (name, data in ::ShopItems) {
                if (!("category" in data)) continue;
                if (Normalize(data.category) == category) {
                    foundCategory = true;
                    break;
                }
            }
            
            if (!foundCategory) {
                ClientPrint(player, 3, "\x01Invalid category: \x04" + category);
                ClientPrint(player, 3, "\x01" + "Categories: \x05pistols\x01, \x05shotguns\x01, \x05smgs\x01, \x05rifles\x01, \x05snipers\x01, \x05heavy\x01, \x05melee\x01, \x05healing\x01, \x05throwables\x01, \x05upgrades\x01, \x05others");
                return;
            }
            
            ClientPrint(player, 3, "Items in category: \x05" + category);
            
            foreach (name, data in ::ShopItems) {
                if (!("category" in data)) continue;
                if (Normalize(data.category) != category) continue;
                
                foundItems = true;
                local display = ("displayName" in data) ? data.displayName : name;
                local aliasStr = "";
                foreach (a in data.aliases) aliasStr += a + ", ";
                if (aliasStr.len() > 0) aliasStr = aliasStr.slice(0, aliasStr.len() - 2);
                
                ClientPrint(player, 3, "- \x05" + display);
                ClientPrint(player, 3, "   [ Buy Names: \x05" + aliasStr + "\x01 ]  [ Cost: \x05" + data.price + "\x01 ]  [ Limit: \x05" + data.limit + "\x01 ]");
            }
            
            if (!foundItems) {
                ClientPrint(player, 3, "\x04No items found in category: \x05" + category);
            }
            return;
        }

        if (parts.len() < 2) return;
        local aliasInput = ArrayJoin(parts, 1, " ");
        if (::ShopX.buyCommands.find(cmd) == null) return;

        local found = ::ShopX.FindItemByAlias(aliasInput);
        if (found == null) {
            ClientPrint(player, 3, "\x04Unknown Item!\x01 Type A Valid Item Name.");
            return;
        }

        local itemKey = found.key;
        local itemData = found.data;

        local id = player.GetNetworkIDString();
        local pts = (id in ::ShopX.playerPoints) ? ::ShopX.playerPoints[id] : 0;

        if (!(id in ::ShopX.playerPurchases)) ::ShopX.playerPurchases[id] <- {};
        local currentCount = (itemKey in ::ShopX.playerPurchases[id]) ? ::ShopX.playerPurchases[id][itemKey] : 0;

        if ("limit" in itemData && currentCount >= itemData.limit) {
            ClientPrint(player, 3, "\x04The Item \x05" + ("displayName" in itemData ? itemData.displayName : itemKey) + "\x04 Is Out Of Stock!");
            return;
        }

        if (pts < itemData.price) {
            ClientPrint(player, 3, "\x04Not Enough Points!\x01 You Have \x05" + pts + "\x01 Points, \x05" + ("displayName" in itemData ? itemData.displayName : itemKey) + "\x01 Cost: \x05" + itemData.price + "\x01!");
            return;
        }

        ::ShopX.playerPoints[id] = pts - itemData.price;

        itemData.give(player);

        ::ShopX.playerPurchases[id][itemKey] <- currentCount + 1;
        local remainingLimit = itemData.limit - ::ShopX.playerPurchases[id][itemKey];

        local itemDisplay = ("displayName" in itemData) ? itemData.displayName : itemKey;
        ClientPrint(player, 3, "\x01Purchased \x05" + itemDisplay + "\x01 For \x05" + itemData.price + "\x01 Points! Remaining Points: \x05" + ::ShopX.playerPoints[id] + "\x01!");
        ClientPrint(player, 3, "\x01Remaining \x05" + itemDisplay + "\x01 In Stock: \x05" + remainingLimit);

        EmitSoundOnClient("Christmas.GiftPickup", player);

    }

    //────────────── Point Events ─────────────────────────────────────────────
    function OnGameEvent_player_death(params) {
        if (!("userid" in params) || !("attacker" in params)) return;
        local vic = GetPlayerFromUserID(params.userid);
        if (vic == null || !vic.IsValid() || vic.IsSurvivor()) return;
        if (vic.GetClassname() == "witch" || vic.GetZombieType() == 8) return;
        local at = GetPlayerFromUserID(params.attacker);
		if (at == null || !at.IsValid() || !at.IsSurvivor() || IsPlayerABot(at)) return;
        AddPoints(at, 25, "Killing A Special Infected", false);
    },

    function OnGameEvent_witch_killed(params)        { local p = GetPlayerFromUserID(params.userid); if (p && p.IsValid() && p.IsSurvivor() || !IsPlayerABot(p)) AddPoints(p, 50, "Killing A Witch", false); },
	function OnGameEvent_infected_death(params)      { local p = GetPlayerFromUserID(params.attacker); if (p && p.IsValid() && p.IsSurvivor() || !IsPlayerABot(p)) AddPoints(p, 1, "Killing A Common", true); },
    function OnGameEvent_tank_killed(params)         { local p = GetPlayerFromUserID(params.attacker); if (p && p.IsValid() && p.IsSurvivor() || !IsPlayerABot(p)) AddPoints(p, 50, "Killing A Tank", false); },
    function OnGameEvent_heal_success(params)        { if (params.userid != params.subject) { local p = GetPlayerFromUserID(params.userid); if (p && p.IsValid() && p.IsSurvivor() || !IsPlayerABot(p)) AddPoints(p, 25, "Healing A Teammate", false); } },
    function OnGameEvent_revive_success(params)      { if (params.userid != params.subject) { local p = GetPlayerFromUserID(params.userid); if (p && p.IsValid() && p.IsSurvivor() || !IsPlayerABot(p)) AddPoints(p, 25, "Reviving A Teammate", false); } },
    function OnGameEvent_defibrillator_used(params)  { if (params.userid != params.subject) { local p = GetPlayerFromUserID(params.userid); if (p && p.IsValid() && p.IsSurvivor() || !IsPlayerABot(p)) AddPoints(p, 25, "Using A Defibrillator", false); } },
    function OnGameEvent_survivor_rescued(params)    { local p = GetPlayerFromUserID(params.rescuer); if (p && p.IsValid() && p.IsSurvivor() || !IsPlayerABot(p)) AddPoints(p, 25, "Rescuing A Teammate", false); },
    function OnGameEvent_tongue_pull_stopped(params) { local p = GetPlayerFromUserID(params.userid); if (p && p.IsValid() && p.IsSurvivor() || !IsPlayerABot(p)) AddPoints(p, 10, "Stopping A Smoker", false); },
    function OnGameEvent_pounce_stopped(params)      { local p = GetPlayerFromUserID(params.userid); if (p && p.IsValid() && p.IsSurvivor() || !IsPlayerABot(p)) AddPoints(p, 10, "Stopping A Hunter", false); },
    function OnGameEvent_jockey_ride_end(params)     { if (!("rescuer" in params)) return; { local p = GetPlayerFromUserID(params.rescuer); if (p && p.IsValid() && p.IsSurvivor() || !IsPlayerABot(p)) AddPoints(p, 10, "Stopping A Jockey", false); } },
    function OnGameEvent_charger_pummel_end(params)  { if (!("rescuer" in params)) return; { local p = GetPlayerFromUserID(params.rescuer); if (p && p.IsValid() && p.IsSurvivor() || !IsPlayerABot(p)) AddPoints(p, 10, "Stopping A Charger", false); } },
	
	//────────────── Save/Load Events ─────────────────────────────────────────────
    function OnGameEvent_round_start_post_nav(params){
        // This is fired after navmesh + director is ready
        printl("[ShopSave] OnGameEvent_round_start_post_nav() Started-------------------------------------------------------------------");
	    foreach(key, value in params) {
		    printl("[ShopSave] " + key + " = " + value);
	    }
        printl(".");
        MyAddon_MapStart();
    }
    function MyAddon_MapStart(){
        printl("[ShopSave] MyAddon_MapStart()");
        local mapName = Director.GetMapName();
        local mode = Director.GetGameMode();

        printl("[ShopSave] Current map: " + mapName + " | Mode: " + mode);

        // Example logic
        // Spawn items, set globals, etc.
        MyAddon_InitializeLogic();
    }

    function MyAddon_InitializeLogic(){
        printl("[ShopSave] MyAddon_InitializeLogic()");
        // One-time startup code per map load
	::ShopSave.Clear();
        printl("[ShopSave] Initialization complete.");
    }

    function OnGameEvent_player_first_spawn(params) {
		#printl("[ShopSave] Printing result of OnGameEvent_player_first_spawn()");
	    if (params.isbot == 1){
            #printl("User is a bot (UserId: " + params.userid + ")");
            return;
        }
   	    if (!("userid" in params)) return;
    	local player = GetPlayerFromUserID(params.userid);
	
        printl("Player detected: " + player.GetPlayerName());

    	/*if (player == null || !player.IsValid() || !player.IsSurvivor()) return;
	    ClientPrint(player, 3, "Points Clear :)");
        printl(".");
       #::ShopSave.Clear();*/
	},
	
	function OnGameEvent_round_start(params) {
  	    ::ShopSave.Load();
	},

	function OnGameEvent_map_transition(params) {
    	::ShopSave.Save();
	}
};

__CollectEventCallbacks(::ShopX, "OnGameEvent_", "GameEventCallbacks", RegisterScriptGameEventListener);