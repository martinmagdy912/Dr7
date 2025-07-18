-- تحميل مكتبة Rayfield
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- إنشاء النافذة
local Window = Rayfield:CreateWindow({
   Name = "DR7 HUB",
   LoadingTitle = "DR7 HUB",
   LoadingSubtitle = "by Martin",
   ConfigurationSaving = {
      Enabled = false
   },
   Discord = {
      Enabled = false,
   },
   KeySystem = false,
})

-- التاب: قتال
local Combat = Window:CreateTab("قتال", 4483362458)
Combat:CreateButton({
   Name = "murder vs sheriff duel",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubMurdervssheriff"))()
   end,
})
Combat:CreateButton({
   Name = "mm2",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Au0yX/Community/main/XhubMM2"))()
   end,
})

-- التاب: بروكهافن
local Brookhaven = Window:CreateTab("بروكهافن", 4483362458)
Brookhaven:CreateButton({
   Name = "مارتن",
   Callback = function()
       loadstring(game:HttpGet("https://rawscripts.net/raw/Brookhaven-RP-MARTIN-IRAQ-31476"))()
   end,
})
Brookhaven:CreateButton({
   Name = "الفا",
   Callback = function()
       loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-ALFA-IRAQ-34036"))()
   end,
})
Brookhaven:CreateButton({
   Name = "خليفه",
   Callback = function()
       loadstring(game:HttpGet("https://rawscripts.net/raw/Brookhaven-RP-MS13-IRAQ-44980"))()
   end,
})

-- التاب: ماب السرقه
local Robbery = Window:CreateTab("ماب السرقه", 4483362458)
Robbery:CreateButton({
   Name = "ماب السرقه",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/DoliScriptz/loader/refs/heads/main/main.lua",true))()
   end,
})
Robbery:CreateButton({
   Name = "ماب السرقه 2",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()
   end,
})

-- التاب: أخرى
local Others = Window:CreateTab("أخرى", 4483362458)
Others:CreateButton({
   Name = "طيران",
   Callback = function()
       loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FE-FLY-MOBILE-SCRIPT-23875"))()
   end,
})
Others:CreateButton({
   Name = "فلينق",
   Callback = function()
       loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Touch-fling-41998"))()
   end,
})
Others:CreateButton({
   Name = "وول هوب",
   Callback = function()
       loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-wallhop-42706"))()
   end,
})
Others:CreateButton({
   Name = "رقصات مجانية",
   Callback = function()
       loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Fe-emotes-15813"))()
   end,
})

-- زر الفتح والإغلاق (أحمر مربع)
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 50, 0, 50)
button.Position = UDim2.new(0, 10, 0.5, -25)
button.Text = ""
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.TextColor3 = Color3.new(1, 1, 1)
button.BorderSizePixel = 0
button.BackgroundTransparency = 0
button.Name = "ToggleUI"
button.Parent = game:GetService("CoreGui")
button.AutoButtonColor = true

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 0)
corner.Parent = button

-- إخفاء / إظهار الواجهة
button.MouseButton1Click:Connect(function()
    Rayfield:Toggle()
end)