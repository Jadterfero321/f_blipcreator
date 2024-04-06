Citizen.CreateThread(function()
    for k,v in pairs(ESX.Blips) do
        local blip = AddBlipForCoord(v.Coords.x,v.Coords.y,v.Coords.z)
        SetBlipSprite(blip, v.Sprite)
        SetBlipScale(blip, v.Size)
        SetBlipFlashes(blip, v.Flash)
        SetBlipColour(blip, v.Color)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentSubstringPlayerName(k)
        EndTextCommandSetBlipName(blip)
    end
end)

