writefile("notahub.txt",syn.request({Url="https://9u3.github.io/roblox/cuphub.rbxm"}).Body)
function wrap(script)
    f,e = loadstring(script.Source)
    print(f,e)
    env = setmetatable({},{__index= function(self,key) if key == "script" then return script end return getfenv()[key] end})
    setfenv(f,env)
    return f
end
e = game:GetObjects(getsynasset("notahub.txt"))[1]
e.Parent=game.CoreGui
for i,v in pairs(e:GetDescendants()) do
    if v.ClassName:match("Script") then
        spawn(wrap(v))
    end
end
