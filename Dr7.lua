-- زر لفتح و إغلاق الواجهة
local Button = Instance.new("ImageButton")
Button.Image = "rbxassetid://14441019536" -- الصورة اللي انت بعتها
Button.Size = UDim2.new(0, 60, 0, 60)
Button.Position = UDim2.new(0, 10, 0.4, 0)
Button.BackgroundTransparency = 1
Button.ZIndex = 1000
Button.Parent = game.CoreGui

-- الواجهة الرئيسية
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
ScreenGui.Name = "Dr7GUI"
ScreenGui.Enabled = false

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 500, 0, 300)
MainFrame.Position = UDim2.new(0.5, -250, 0.5, -150)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.Visible = true
MainFrame.Parent = ScreenGui

-- UIGrid لتابز عمودي
local TabList = Instance.new("UIListLayout")
TabList.FillDirection = Enum.FillDirection.Vertical
TabList.SortOrder = Enum.SortOrder.LayoutOrder
TabList.Padding = UDim.new(0, 5)
TabList.Parent = MainFrame

-- جدول التابز و السكربتات
local tabs = {
    ["القتال"] = {
        {"Aimbot", "https://rawscripts.net/raw/Universal-Script-Aimbot-10371"},
        {"ESP", "https://rawscripts.net/raw/Universal-Script-ESP-5749"}
    },
    ["السرقه"] = {
        {"Rob All", "https://rawscripts.net/raw/Brookhaven-Rob-All-10612"}
    },
    ["بروكهافن"] = {
        {"تخفي", "https://rawscripts.net/raw/Brookhaven-Invisible-6902"},
        {"سرقة السيارات", "https://rawscripts.net/raw/Brookhaven-Car-Steal-10484"}
    },
    ["تحكم"] = {
        {"طيران", "https://rawscripts.net/raw/Universal-Script-Fly-GUI-10665"},
        {"فلينق", "https://rawscripts.net/raw/Universal-Script-Fling-GUI-10989"},
        {"وول هوب", "https://rawscripts.net/raw/Universal-Script-wallhop-42706"}
    }
}

-- إنشاء التابز و الأزرار
for tabName, scripts in pairs(tabs) do
    local tabLabel = Instance.new("TextLabel")
    tabLabel.Text = "— " .. tabName .. " —"
    tabLabel.Size = UDim2.new(1, -20, 0, 30)
    tabLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    tabLabel.BackgroundTransparency = 1
    tabLabel.Font = Enum.Font.SourceSansBold
    tabLabel.TextSize = 20
    tabLabel.Parent = MainFrame

    for _, scriptData in pairs(scripts) do
        local name, url = scriptData[1], scriptData[2]
        local button = Instance.new("TextButton")
        button.Text = name
        button.Size = UDim2.new(1, -20, 0, 30)
        button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        button.TextColor3 = Color3.fromRGB(255, 255, 255)
        button.Font = Enum.Font.SourceSans
        button.TextSize = 18
        button.Parent = MainFrame

        button.MouseButton1Click:Connect(function()
            pcall(function()
                loadstring(game:HttpGet(url))()
            end)
        end)
    end
end

-- إظهار/إخفاء الواجهة عند الضغط على الزر
Button.MouseButton1Click:Connect(function()
    ScreenGui.Enabled = not ScreenGui.Enabled
end)
