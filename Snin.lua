pcall(function()
local _____=loadstring
local ___=game:GetService;local ______=___("ReplicatedStorage")
local function __________(____)return ____["WaitForChild"](____)end
local function ________()return ______ end
local ___________=loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\115\105\114\105\117\115\46\109\101\110\117\47\114\97\121\102\105\101\108\100"))()

local function ____GIGADEWA()
    return ___________:CreateWindow({
        Name="\226\154\129 1+ Speed | Flash InfMoney",
        LoadingTitle="Memuat Flash Speed...",
        LoadingSubtitle="by bujang gila",
        ConfigurationSaving={Enabled=false},
        Discord={Enabled=false},
        KeySystem=false
    })
end

local function ______BUATDEWA(_)
    return _:CreateTab("\226\154\129 Gila Duit", 4483362458)
end

local function ________FLASH(_,_F)
    local ________FLAG=false
    return _:CreateToggle({
        Name="FLASH INF MONEY GILA \226\152\160",
        CurrentValue=false,
        Flag="xFlashInfToggle",
        Callback=function(_ON)
            ________FLAG=_ON
            if _ON then
                task.spawn(function()
                    while ________FLAG do
                        pcall(function()
                            local ___r=__________(__________("Remotes"))
                            local ___f=__________(__________(___r,"RemoteFunctions"))
                            local _gi=__________(__________(___f,"GetWinRewards"))
                            _gi:InvokeServer()
                        end)
                    end
                end)
            else
                ________FLAG=false
            end
        end
    })
end

local _W=____GIGADEWA()
local _T=______BUATDEWA(_W)
________FLASH(_T)

end)
