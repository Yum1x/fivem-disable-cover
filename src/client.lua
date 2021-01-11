CreateThread(function()
    --LAZY LOADING
    local GetRoomKeyFromEntity = GetRoomKeyFromEntity
    local PlayerPedId = PlayerPedId
    local SetPlayerCanUseCover = SetPlayerCanUseCover
    local PlayerId = PlayerId

    while true do
        if GetRoomKeyFromEntity(PlayerPedId()) ~= 0 then
            SetPlayerCanUseCover(PlayerId(), false) -- Disable cover when ped are inside an interior
        else
            SetPlayerCanUseCover(PlayerId(), true) -- Enable cover when ped are outside an interior.
        end
        Wait(2000) -- 2 seconds is a fine delay for preserve user/pc performance.
    end
end)

--[[

    !!! OPTIONAL !!!
    If you want disable Cover permanently remove the code above and uncomment the code below

    CreateThread(function()
        SetPlayerCanUseCover(PlayerId(), false)
    end)

]]