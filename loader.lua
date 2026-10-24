task.spawn(function()
    task.wait(1)

    local PlaceID = game.PlaceId
    local Player = game:GetService("Players").LocalPlayer

    print("Current PlaceId:", PlaceID)

    local scripts = {
        [93201274415679] = "https://raw.githubusercontent.com/s5yu/67scriptnew/refs/heads/main/ff3main.lua"
    }

    local url = scripts[PlaceID]

    if url then
        local success, result = pcall(function()
            return game:HttpGet(url)
        end)

        if success and result then
            loadstring(result)()
        else
            warn("Failed to fetch script:", result)
        end
    else
        Player:Kick("Join For Help! https://discord.gg/67scripts Unauthorized game. PlaceId: " .. PlaceID)
    end
end)
