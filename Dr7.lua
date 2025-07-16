local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
    Name = "DR7 MARTIN",
    LoadingTitle = "جارٍ التحميل...",
    LoadingSubtitle = "By DR7",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil,
        FileName = "DR7Settings"
    },
    Discord = {
        Enabled = false,
        Invite = "",
        RememberJoins = false
    },
    KeySystem = true,
    KeySettings = {
        Title = "DR7 MARTIN",
        Subtitle = "أدخل المفتاح لتشغيل السكربتات",
        Note = "🎯 صانع السكربت: مارتن\n📌 تابع حسابي: martinmoka5nd",
        FileName = "DR7Key",
        SaveKey = false,
        GrabKeyFromSite = false,
        Key = {"DR7"}
    }
})

local ScriptsTab = Window:CreateTab("سكربتات DR7", 4483362458)

ScriptsTab:CreateButton({
    Name = "Murder vs Sheriff Duel",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubMurdervssheriff"))()
    end,
})

ScriptsTab:CreateButton({
    Name = "ماب السرقه",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DoliScriptz/loader/refs/heads/main/main.lua", true))()
    end,
})

ScriptsTab:CreateButton({
    Name = "ماب البيوت مارتن",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Brookhaven-RP-MARTIN-IRAQ-31476"))()
    end,
})

ScriptsTab:CreateButton({
    Name = "ماب البيوت الفا",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-ALFA-IRAQ-34036"))()
    end,
})

ScriptsTab:CreateButton({
    Name = "ماب البيوت خليفه",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Brookhaven-RP-MS13-IRAQ-44980"))()
    end,
})

ScriptsTab:CreateButton({
    Name = "طيران",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FE-FLY-MOBILE-SCRIPT-23875"))()
    end,
})

ScriptsTab:CreateButton({
    Name = "فلينق",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Touch-fling-41998"))()
    end,
})
ScriptsTab:CreateButton({
    Name = "ماب السرقه 2",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Gregy677/Gunmods-strucid/main/Steal%20a%20brain%20rot", true))()
    end,
})
