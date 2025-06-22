-- 🛡️ Simple Anti-Tamper
if not game or not game.GetService then
    error("Execution blocked.")
end

local a = game:GetService("Players")
local b = game:GetService("ReplicatedStorage")
local c = loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\115\105\114\105\117\115\46\109\101\110\117\47\114\97\121\102\105\101\108\100"))()

local d = c:CreateWindow({
    Name = "\226\154\148 Anime Tower UI",
    LoadingTitle = "\76\111\97\100\105\110\103\32\85\73\46\46\46",
    LoadingSubtitle = "\98\121\32\68\97\110\122\122",
    ConfigurationSaving = {Enabled = false},
    Discord = {Enabled = false},
    KeySystem = false,
})

local e = d:CreateTab("\226\154\161 Skills", 4483362458)
local f = d:CreateTab("\240\159\148\181 Target", 4483362458)

local g = {
    "\90\101\110\105\116\115\117", "\83\117\107\117\110\97", "\72\105\110\97\116\97", "\83\97\105\116\97\109\97",
    "\65\107\97\122\97", "\83\104\105\110\114\97", "\77\97\100\97\114\97", "\83\104\97\110\107\115",
    "\75\97\107\97\115\104\105", "\71\97\97\114\97", "\83\117\110\103\74\105\110\87\111\111",
    "\72\97\115\104\105\114\97\109\97\65\108\105\118\101", "\72\101\105\97\110\83\117\107\117\110\97",
    "\66\108\97\99\107\66\101\97\114\100", "\65\111\107\105\106\105", "\86\101\103\101\116\97",
    "\86\101\103\101\116\97\83\83\74", "\84\111\107\105\116\111", "\67\114\111\99\111\100\105\108\101", "\75\97\115\104\105\109\111"
}

local h = {
    "\71\111\106\111", "\77\105\110\97\116\111", "\83\117\112\101\114\71\111\106\111", "\71\111\107\117",
    "\80\97\105\110", "\89\117\116\97", "\82\101\110\103\111\107\117", "\73\116\97\99\104\105",
    "\89\117\116\97\71\111\106\111", "\83\97\115\117\107\101\54\80\97\116\104", "\73\110\117\109\97\107\105"
}

local i = nil

local function j(k, l)
    local m = {k}
    if l then table.insert(m, l) end
    local n, o = pcall(function()
        b:WaitForChild("SkillEvent"):FireServer(unpack(m))
    end)
    c:Notify({
        Title = n and "\226\156\133 Skill Used" or "\226\157\140 Failed",
        Content = n and (k .. " used") or tostring(o),
        Duration = 4,
        Image = n and 77339698 or 77340579
    })
end

e:CreateSection("No Target")
for _, p in ipairs(g) do
    e:CreateButton({
        Name = p,
        Callback = function()
            j(p)
        end
    })
end

f:CreateInput({
    Name = "\240\159\148\181 Target Player",
    PlaceholderText = "Example: Showcaser or bujang(Showcaser)",
    RemoveTextAfterFocusLost = false,
    Callback = function(q)
        i = nil
        local r = q:lower():gsub("%s+", "")
        for _, s in ipairs(a:GetPlayers()) do
            local t = s.Name:lower()
            local u = s.DisplayName:lower():gsub("%s+", "")
            local v = (t .. "(" .. u .. ")"):lower()
            if r == t or r == u or r == v then
                i = s
                c:Notify({
                    Title = "\226\156\133 Target Set",
                    Content = s.DisplayName .. " (" .. s.Name .. ")",
                    Duration = 4,
                    Image = 77339698
                })
                return
            end
        end
        c:Notify({
            Title = "\226\157\140 Player Not Found",
            Content = "Try typing correct username or display name",
            Duration = 4,
            Image = 77340579
        })
    end
})

f:CreateSection("Targeted Skills")
for _, w in ipairs(h) do
    f:CreateButton({
        Name = w,
        Callback = function()
            if i then
                j(w, i)
            else
                c:Notify({
                    Title = "\226\156\161 No Player Selected",
                    Content = "Please enter a target player first.",
                    Duration = 4,
                    Image = 77340579
                })
            end
        end
    })
end
