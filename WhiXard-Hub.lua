-- init
local library =
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("WhiXard Hub", 5013109572)

-- themes
local themes = {
    Background = Color3.fromRGB(24, 24, 24),
    Glow = Color3.fromRGB(0, 0, 0),
    Accent = Color3.fromRGB(10, 10, 10),
    LightContrast = Color3.fromRGB(20, 20, 20),
    DarkContrast = Color3.fromRGB(14, 14, 14),
    TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local page = venyx:addPage("Player Config", 5012544693)
local section1 = page:addSection("Tools")
local section2 = page:addSection("Player Settings")

section1:addButton(
    "Give Builder Tools",
    function()
        local tool1 = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
        local tool2 = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
        local tool3 = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
        local tool4 = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
        local tool5 = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
        tool1.BinType = "Clone"
        tool2.BinType = "GameTool"
        tool3.BinType = "Hammer"
        tool4.BinType = "Script"
        tool5.BinType = "Grab"
        venyx:Notify("Run it one time only", "You can get builder tools only 1 time", callback)
    end
)

section1:addButton(
    "Give delete tool (useful for tycoons)",
    function()
        local tool1 = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
        tool1.BinType = "Hammer"
    end
)

section1:addButton(
    "Rejoin Place",
    function()
        local ts = game:GetService("TeleportService")
        local p = game:GetService("Players").LocalPlayer
        ts:Teleport(game.PlaceId, p)
    end
)

section2:addButton(
    "Sonic Speed",
    function()
        local player = game.Players.LocalPlayer
        local char = player.CharacterAdded:wait()
        local h = char.Humanoid

        h.WalkSpeed = 100
    end
)

section2:addButton(
    "Tycoon Speed",
    function()
        local player = game.Players.LocalPlayer
        local char = player.CharacterAdded:wait()
        local h = char.Humanoid

        h.WalkSpeed = 50
    end
)

section2:addButton(
    "Default Speed",
    function()
        local player = game.Players.LocalPlayer
        local char = player.CharacterAdded:wait()
        local h = char.Humanoid

        h.WalkSpeed = 32
    end
)

-- second page
local config = venyx:addPage("Config", 5012544693)
local section3 = config:addSection("Keybind")

section3:addKeybind(
    "Toggle Keybind",
    Enum.KeyCode.One,
    function()
        print("Activated Keybind")
        venyx:toggle()
    end,
    function()
        print("Changed Keybind")
    end
)

-- Scripts Page
local scripts = venyx:addPage("Scripts Hub", 5012544693)
local scriptsui = scripts:addSection("Universal Scripts")
local gamesui = scripts:addSection("Game-Specific Scripts")

scriptsui:addButton(
    "InfiniteYield",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end
)

scriptsui:addButton(
    "DomainHub",
    function()
        loadstring(game:HttpGet(("https://shlex.dev/domain_v2"), true))()
    end
)

scriptsui:addButton(
    "DomainX",
    function()
        loadstring(game:HttpGet('https://shlex.dev/release/domainx/latest.lua',true))()
    end
)

scriptsui:addButton(
    "EzHub",
    function()
        loadstring(
            game:HttpGet(
                ("https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua"),
                true
            )
        )()
    end
)

gamesui:addButton(
    "Piggy Script",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Piggy/Piggy"))()
    end
)

gamesui:addButton(
    "Broken Bone Script",
    function()
        loadstring(game:HttpGet("https://pastebin.com/raw/5rEAVmcC"))()
    end
)

gamesui:addButton(
    "ShattredSouls",
    function()
        --// ur mom //--
        --// ur mom //--
        repeat
            wait()
        until game
        local LP = game:GetService("Players").LocalPlayer
        local repstog = game:GetService("ReplicatedStorage")
        local lght = game:GetService("Lighting")
        local rems = repstog:WaitForChild("Remotes")
        local map = workspace:WaitForChild("Map")
        local ts = game:GetService("TweenService")
        local CharaMoves = rems:WaitForChild("CharaMoves")
        local BettyMoves = rems:WaitForChild("BettyMoves")
        local SFCharaMoves = rems:WaitForChild("SFCharaMoves")
        local SansMoves = rems:WaitForChild("SansMoves")
        rems = nil
        local function GetLockInfo()
            local val = LP.Backpack:WaitForChild("Main"):WaitForChild("LockOnScript"):WaitForChild("LockOn")
            if not val.Value then
                return
            end
            local hrp = val.Value:FindFirstChild("HumanoidRootPart")
            if not hrp then
                return
            end
            local frm = hrp.CFrame
            return {hrp, frm}
        end
        local function GetKey()
            return getrenv()._G.Pass
        end
        local function ChangeFrame(prt, frm)
            if not prt or not frm then
                return
            end
            local tbl = {
                GetKey(),
                "Knives",
                "AirHit",
                prt,
                frm,
                prt
            }
            SFCharaMoves:InvokeServer(tbl)
        end
        local function makedumspear(name)
            local dum = Instance.new("Part")
            dum.Anchored = true
            dum.Name = name
            dum.CanCollide = false
            dum.CFrame = CFrame.new(0, 0, 0)
            dum.Transparency = 1
            dum.Parent = chr
            return dum
        end
        _G.cd = false
        _G.stam = false
        _G.bot = false
        _G.heal = false
        _G.spear_found = false
        _G.noobs = {}
        local NOOB_MT = {
            ["__newindex"] = function(tbl, idx, val)
                if val == true or val == false then
                    table.insert(_G.noobs, tbl)
                end
                return rawset(tbl, idx, val)
            end
        }
        local function UpdateNoobs()
            for i, v in pairs(getgc()) do
                if
                    type(v) == "function" and not is_synapse_function(v) and getfenv(v)["script"] and
                        getfenv(v)["script"].Parent and
                        getfenv(v)["script"].Parent.Name == "Main"
                 then
                    for i2, v2 in pairs(debug.getupvalues(v)) do
                        if type(v2) == "table" then
                            debug.setmetatable(v2, NOOB_MT)
                            for i3, v3 in pairs(v2) do
                                if v3 == false or v3 == true then
                                    table.insert(_G.noobs, v2)
                                end
                            end
                        end
                    end
                end
            end
        end
        local function hecc()
            spawn(
                function()
                    local chr = nil
                    repeat
                        chr = LP.Character
                        wait()
                    until chr ~= nil
                    local spear = chr:WaitForChild("BettySpear")
                    local hrp = chr:WaitForChild("HumanoidRootPart")
                    spear:BreakJoints()
                    spear.Anchored = false
                    repeat
                        wait()
                    until spear:FindFirstChild("SpearString")
                    if not GetLockInfo() then
                        return
                    end
                    local tab = {
                        GetKey(),
                        "Spear",
                        "Hit",
                        spear,
                        GetLockInfo()[2],
                        GetLockInfo()[1]
                    }
                    if not tab then
                        return
                    end
                    repeat
                        wait()
                    until (spear.Position - hrp.Position).magnitude > 10
                    BettyMoves:InvokeServer(tab)
                end
            )
        end
        local mt = getrawmetatable(game)
        setreadonly(mt, false)
        local backup2 = rawget(mt, "__namecall")
        local random_random = function(self, ...)
            if checkcaller() then
                return backup2(self, ...)
            end
            local args = {...}
            if getnamecallmethod() == "InvokeServer" or getnamecallmethod() == "FireServer" then
                local tbl = args[1]
                if type(tbl) == "table" then
                    if tbl[2] == "TakeStamina" and _G.stam == true then
                        return wait(0)
                    end
                end
                if type(args[3]) == "table" and args[3]["Damage"] ~= nil then
                    local fake = args[3]
                    if fake["Damage"] < 10 then
                        fake["Damage"] = 10
                    end
                    return backup2(self, args[1], args[2], fake)
                end
            end
            if self == ts and getnamecallmethod() == "Create" then
                pcall(
                    function()
                        if args[1].Parent == map then
                            return
                        end
                        if args[1].Parent.Parent == map then
                            return
                        end
                        if args[1].Parent.Parent.Parent == map then
                            return
                        end
                        if args[1].Parent.Parent.Parent.Parent == map then
                            return
                        end
                        if args[1].Parent.Parent.Parent.Parent.Parent == map then
                            return
                        end
                        if args[1].Parent.Parent.Parent.Parent.Parent.Parent == map then
                            return
                        end
                        if args[1].Parent.Parent.Parent.Parent.Parent.Parent.Parent == map then
                            return
                        end
                    end
                )
            end
            return backup2(self, ...)
        end
        local ignored = {}
        spawn(
            function()
                while wait() do
                    if _G.bot and LP.Character and LP.Character:FindFirstChild("BettySpear") and GetLockInfo() then
                        local SPR = LP.Character:FindFirstChild("BettySpear")
                        local hrp = GetLockInfo()[1]
                        wait(4)
                        if SPR and hrp then
                            spawn(
                                function()
                                    while SPR do
                                        SPR.CFrame = hrp.CFrame
                                        wait()
                                    end
                                end
                            )
                            spawn(
                                function()
                                    wait(5)
                                    SPR:Destroy()
                                end
                            )
                        end
                    end
                end
            end
        )

        if LP.Character then
            UpdateNoobs()
            LP.Character:WaitForChild("Attacks").DescendantAdded:Connect(
                function(v)
                    if not GetLockInfo() then
                        return
                    end
                    if not _G.bot then
                        return
                    end
                    local hrp = GetLockInfo()[1]
                    if v:FindFirstChildOfClass("TouchTransmitter") then
                        spawn(
                            function()
                                while v do
                                    v.CFrame = hrp.CFrame
                                    wait()
                                end
                            end
                        )
                    end
                end
            )
        end
        LP.CharacterAdded:Connect(
            function()
                spawn(
                    function()
                        local oof = LP.Backpack:WaitForChild("Main")
                        repeat
                            wait(0.1)
                        until #oof:GetChildren() == 2
                        UpdateNoobs()
                    end
                )
                LP.Character:WaitForChild("Attacks").DescendantAdded:Connect(
                    function(v)
                        if not GetLockInfo() then
                            return
                        end
                        if not _G.bot then
                            return
                        end
                        local hrp = GetLockInfo()[1]
                        wait()
                        if v:IsA("BasePart") then
                            v.Anchored = true
                            spawn(
                                function()
                                    while v do
                                        v.CFrame = hrp.CFrame
                                        wait()
                                    end
                                end
                            )
                        end
                        if v:IsA("BodyVelocity") then
                            v:Destroy()
                        end
                    end
                )
            end
        )

        mt.__namecall = random_random
        local backup3 = mt.__newindex
        mt.__newindex =
            newcclosure(
            function(tbl, idx, val)
                if checkcaller() then
                    return backup3(tbl, idx, val)
                end
                if tbl == lght or tbl:IsDescendantOf(lght) then
                    return
                end
                if
                    tbl:IsDescendantOf(workspace) and idx == "Material" or idx == "Color" or idx == "BrickColor" or
                        idx == "Color3" or
                        idx == "Transparency"
                 then
                    return
                end
                return backup3(tbl, idx, val)
            end
        )
        local backup4 = mt.__index
        mt.__index =
            newcclosure(
            function(tbl, idx)
                if idx == "BettySpear" or idx == "SpearString" and backup4(tbl, idx) == nil then
                    local probably = makedumspear(idx)
                    return probably
                end
                return backup4(tbl, idx)
            end
        )
        spawn(
            function()
                while wait(0.1) do
                    if _G.cd and #_G.noobs > 0 then
                        for i, v in pairs(_G.noobs) do
                            for i2, v2 in pairs(v) do
                                v[i2] = nil
                            end
                        end
                    end
                end
            end
        )
        setreadonly(mt, true)
        spawn(
            function()
                for i, v in pairs(lght:GetChildren()) do
                    v:Destroy()
                end
                lght.DescendantAdded:Connect(
                    function(t)
                        wait()
                        t:Destroy()
                    end
                )
                repstog["Ban Remote"]:Destroy()
            end
        )

        -- old here

        spawn(
            function()
                while wait(0.1) do
                    if _G.spear_found then
                        spawn(
                            function()
                                _G.spear_found = false
                                wait(5.2)
                                hecc()
                            end
                        )
                    end
                    pcall(
                        function()
                            local tbl = string.split(LP.Character.Head.HealthBar.Frame.HealthLabel.Text, "/")
                            if _G.heal and tbl[1] ~= 0 and tbl[1] ~= tbl[2] then
                                CharaMoves:InvokeServer({GetKey(), "KnifeHeal"})
                                wait(5)
                            end
                        end
                    )
                end
            end
        )
        print("lol")
        local library = loadstring(game:HttpGet("https://pastebin.com/raw/eKwyeQa0", true))()

        local tab1 = library:CreateTab("lol", true)
        local toggle =
            library:MakeToggle(
            tab1,
            "No Cooldown",
            false,
            function(thingo)
                if thingo.Text == "ON" then
                    _G.cd = true
                else
                    _G.cd = false
                end
            end
        )
        local toggle2 =
            library:MakeToggle(
            tab1,
            "Inf Stamina",
            false,
            function(thingo)
                if thingo.Text == "ON" then
                    _G.stam = true
                else
                    _G.stam = false
                end
            end
        )
        local toggle3 =
            library:MakeToggle(
            tab1,
            "Aimbot",
            false,
            function(thingo)
                if thingo.Text == "ON" then
                    _G.bot = true
                else
                    _G.bot = false
                end
            end
        )
        local text = library:MakeLabel(tab1, "ur mom")
    end
)
-- credits page
local about = venyx:addPage("About", 5012544693)
local aboutsc = about:addSection("Who made this shit")

aboutsc:addButton(
    "Coder/UI: WhiXard",
    function()
        print("whixard wuz here")
    end
)

aboutsc:addButton(
    "UI Library: Venyx UI",
    function()
        print("whixard wuz here")
    end
)

aboutsc:addButton(
    "Exploits: A lot of them are just skids from InfiniteYield",
    function()
        print("whixard wuz here")
    end
)

-- load
venyx:SelectPage(venyx.pages[1], true)
