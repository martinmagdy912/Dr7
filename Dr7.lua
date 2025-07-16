-- ✅ تحميل مكتبة Rayfield (الإصدار الجديد)
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- ✅ إنشاء الواجهة الرئيسية بدون KeySystem
local Window = Rayfield:CreateWindow({
    Name = "DR7 MARTIN",
    LoadingTitle = "جارٍ التحميل...",
    LoadingSubtitle = "By DR7",
    Theme = "Ocean",
    ShowText = "DR7 MENU",
    ToggleUIKeybind = "K",
    ConfigurationSaving = {
        Enabled = true,
        FileName = "DR7Settings"
    }
})

-- ✅ تبويب: القتال
local MainTab = Window:CreateTab("القتال", "swords")
MainTab:CreateButton({
    Name = "Murder vs Sheriff Duel",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubMurdervssheriff"))()
    end
})

-- ✅ تبويب: السرقة
local RobberyTab = Window:CreateTab("السرقه", "briefcase")
RobberyTab:CreateButton({
    Name = "ماب السرقه",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DoliScriptz/loader/refs/heads/main/main.lua"))()
    end
})
RobberyTab:CreateButton({
    Name = "ماب السرقه 2",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Gregy677/Gunmods-strucid/main/Steal%20a%20brain%20rot"))()
    end
})

-- ✅ تبويب: بروكهافن
local HousesTab = Window:CreateTab("بروكهافن", "building")
HousesTab:CreateButton({
    Name = "ماب البيوت مارتن",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Brookhaven-RP-MARTIN-IRAQ-31476"))()
    end
})
HousesTab:CreateButton({
    Name = "ماب البيوت الفا",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-ALFA-IRAQ-34036"))()
    end
})
HousesTab:CreateButton({
    Name = "ماب البيوت خليفه",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Brookhaven-RP-MS13-IRAQ-44980"))()
    end
})

-- ✅ تبويب: تحكم
local MovementTab = Window:CreateTab("تحكم", "move")
MovementTab:CreateButton({
    Name = "طيران",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FE-FLY-MOBILE-SCRIPT-23875"))()
    end
})
MovementTab:CreateButton({
    Name = "فلينق",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Touch-fling-41998"))()
    end
})

-- التحكم في اللاعب
local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")

-- السرعة
local speedValue = 16
MovementTab:CreateInput({
    Name = "تحديد السرعة (1 - 200)",
    PlaceholderText = "اكتب السرعة هنا",
    RemoveTextAfterFocusLost = false,
    Callback = function(text)
        speedValue = tonumber(text) or 16
    end
})
MovementTab:CreateToggle({
    Name = "تشغيل / إيقاف السرعة",
    CurrentValue = false,
    Callback = function(state)
        if state then Humanoid.WalkSpeed = math.clamp(speedValue, 1, 200)
        else Humanoid.WalkSpeed = 16 end
    end
})

-- النط
local jumpValue = 50
MovementTab:CreateInput({
    Name = "تحديد قوة النط (1 - 500)",
    PlaceholderText = "اكتب قوة النط هنا",
    RemoveTextAfterFocusLost = false,
    Callback = function(text)
        jumpValue = tonumber(text) or 50
    end
})
MovementTab:CreateToggle({
    Name = "تشغيل / إيقاف قوة النط",
    CurrentValue = false,
    Callback = function(state)
        if state then Humanoid.JumpPower = math.clamp(jumpValue, 1, 500)
        else Humanoid.JumpPower = 50 end
    end
})

-- الجاذبية
local gravityValue = 196.2
MovementTab:CreateInput({
    Name = "تحديد الجاذبية (0 - 200)",
    PlaceholderText = "اكتب الجاذبية هنا",
    RemoveTextAfterFocusLost = false,
    Callback = function(text)
        gravityValue = tonumber(text) or 196.2
    end
})
MovementTab:CreateToggle({
    Name = "تشغيل / إيقاف الجاذبية",
    CurrentValue = false,
    Callback = function(state)
        if state then game.Workspace.Gravity = math.clamp(gravityValue, 0, 200)
        else game.Workspace.Gravity = 196.2 end
    end
})

-- ✅ تحميل الإعدادات المحفوظة
Rayfield:LoadConfiguration()
