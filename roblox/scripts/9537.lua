local pp = function(plr)
    local BRUH = game:GetService("CoreGui").PlayerList.PlayerListMaster.OffsetFrame.PlayerScrollList.SizeOffsetFrame.ScrollingFrameContainer.ScrollingFrameClippingFrame.ScollingFrame.OffsetUndoFrame["p_"..plr.UserId].ChildrenFrame.NameFrame.BGFrame.OverlayFrame.PlayerName.PlayerName
    coroutine.wrap(function()
        while true do
            for i = 0,1,0.01 do
                BRUH.TextColor3 = Color3.fromHSV(i,1,1)
                wait()
            end
        end
    end)()
end
local BRUH2 = game:GetService("Players")
for _, plr in pairs(BRUH2:GetPlayers()) do
    pp(plr)
end
BRUH2.PlayerAdded:Connect(function(plr)
    wait(3)
    pp(plr)
end)
