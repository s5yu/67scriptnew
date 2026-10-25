task.spawn(function()
    task.wait(1)

    local PlaceID = game.PlaceId
    local Player = game:GetService("Players").LocalPlayer

    print("Current PlaceId:", PlaceID)

    local scripts = {
        [4] = "https://raw.githubusercontent.com/s5yu/67scriptnew/refs/heads/main/ff3main.lua", -- 82866880824588
        [3] = "https://raw.githubusercontent.com/s5yu/67scriptnew/refs/heads/main/ff3main.lua", -- 81310542478972
        [2] = "https://raw.githubusercontent.com/s5yu/67scriptnew/refs/heads/main/ff3main.lua", -- 140541044364039
        [1] = "https://raw.githubusercontent.com/s5yu/67scriptnew/refs/heads/main/ff3main.lua" -- 93201274415679
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
