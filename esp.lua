local holder = game.CoreGui:FindFirstChild("ESPHolder") or Instance.new("Folder")
if enabled == false then
    holder:Destroy()
    else
if holder.Name == "Folder" then
    holder.Name = "ESPHolder"
    holder.Parent = game.CoreGui
end
end
if getgenv().enabled == true then 
    getgenv().enabled = false
    getgenv().enabled = true
end
while getgenv().enabled do
    task.wait()
    for i,v in pairs(game.Players:GetChildren()) do
        print("checked")
        local chr = v.Character
        if chr ~= nil then
        local esp = holder:FindFirstChild(v.Name) or Instance.new("Highlight")
        esp.Name = v.Name
        esp.Parent = holder
        if filluseteamcolor then
            esp.FillColor = v.TeamColor.Color
        else
            esp.FillColor = fillcolor 
        end
        if outlineuseteamcolor then
            esp.OutlineColor = v.TeamColor.Color
        else
            esp.OutlineColor = outlinecolor    
        end
        esp.FillTransparency = filltrans
        esp.OutlineTransparency = outlinetrans
        esp.Adornee = chr
        esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        end
    end
end
