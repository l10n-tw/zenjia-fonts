#!/usr/bin/env fontforge

if ($version < "20080330")
    Error("Your version of FontForge is too old - 20080330 or newer is required");
endif

SetPref("FoundryName", "ZenjiaNormHei")
SetPref("TTFFoundry", "ZenjiaNormHei")

i = 1
while (i < $argc)
    Open($argv[i], 1)
    SelectAll()
    Simplify()
    AddExtrema()
    RoundToInt()
    CorrectDirection()
    Generate($fontname + ".otf")
    Close()
    i++
endloop
