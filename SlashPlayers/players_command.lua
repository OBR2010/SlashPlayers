-- players_command.lua
local Player = nil

ESX.RegisterCommand('players', 'moderator', function(xPlayer)
    Player = xPlayer
    TriggerEvent('esx_show_players')
end, true)

RegisterNetEvent('esx_show_players')
AddEventHandler('esx_show_players', function()
    local players = ESX.GetPlayers()
    local output = ''

    for i=1, #players, 1 do
        local xPlayer = ESX.GetPlayerFromId(players[i])
        output = output .. xPlayer.getName() .. '\n'
    end

    print('^5[Players]^7:')
    print(output)
end)
