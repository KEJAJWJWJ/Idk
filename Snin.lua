pcall(function()
    local ζ = function(σ)local τ,ρ,χ="",math.random(90,130)for υ=1,#σ do local ω=σ:byte(υ)τ=τ..string.char(bit32.bxor(ω,ρ))ρ=(ρ+ω)%256 end return τ end
    local η = { "JmjnbufeTupsbhf", "Sfnpuft", "SfnpufGvodujpot", "HfuXjoSfxbset", "SfqmjdbufeTupsbhf" }
    local α,β,γ = game:GetService, ζ, loadstring
    local θ = α(β(η[5]))
    local μ = θ:FindFirstChild(β(η[2]))
    local ν = μ and μ:FindFirstChild(β(η[3]))
    local ξ = ν and ν:FindFirstChild(β(η[4]))
    local ε = function()return typeof(debug)=="table" and not not getexecutorname end
    if not ξ or not ε() then while true do end end
    local ω = {
        β(η[5]),
        (function()return β(η[2])end)(),
        (function(x)return x(η[3])end)(β),
        select(1, β(η[4]))
    }
    local ρ = "game:GetService(\"%s\"):FindFirstChild(\"%s\"):FindFirstChild(\"%s\"):FindFirstChild(\"%s\"):InvokeServer()"
    local π = ("pcall(function()while true do pcall(function()"..ρ.." end)end end)")
    γ(π:format(unpack(ω)))()
end)
