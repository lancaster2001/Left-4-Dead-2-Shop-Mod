::ShopSave <- {
    FILE = "ShopPoints.txt",

    function Save() {
        printl("[ShopSave] Saving points");
        local out = "";
        foreach (id, pts in ::ShopX.playerPoints) {
            out += id + "=" + pts + "\n";
        }
        printl("[ShopSave] Saving points to " + ::ShopSave.FILE);
        StringToFile(::ShopSave.FILE, out);
        printl("[ShopSave] Points saved");
    },

    function Load() {
        printl("[ShopSave] Loading points");
        local txt = FileToString(::ShopSave.FILE);
        printl("Printing save file: " + txt);
        if (txt == null) {
            printl("[ShopSave] No save file found, starting fresh.");
            return;
        }
        printl("[ShopSave] Save found");

        ::ShopX.playerPoints.clear();
        foreach (line in split(txt, "\n")) {
            
            local parts = split(line, ":");
            if (parts.len() > 2) {
                parts[1] = "0";
            }
            local line2 = parts[0] + ":" + parts[1] + ":" + parts[2];
            
            if (line.len() < 1) continue;
            local kv = split(line, "=");
            if (kv.len() != 2) continue;
            
            local id = strip(kv[0]);
            local pts = kv[1].tointeger();
            ::ShopX.playerPoints[id] <- pts;
        }

        printl("[ShopSave] Loaded " + ::ShopX.playerPoints.len() + " player entries.");
        ::ShopSave.PrintPlayerPoints();
        printl("[ShopSave] Points have been loaded clearing save.");
        StringToFile(::ShopSave.FILE, "");
        printl(".");
    },

    function Clear() {
        printl("[ShopSave] Clearing points.");
        ::ShopX.playerPoints.clear();
        #StringToFile(::ShopSave.FILE, "");
        printl(".");
    },
    function PrintPlayerPoints(){
	printl("printing Points:")
        foreach(key, value in ::ShopX.playerPoints) {
            printl("-"+key + " = " + value);
	    }
    }
};