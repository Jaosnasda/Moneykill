ESX = nil 
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('mona_kill')
AddEventHandler('mona_kill', function (killer)
    xSource = ESX.GetPlayerFromId(source)  
    if killer ~= nil then
        xPlayer = ESX.GetPlayerFromId(killer)    
        TriggerClientEvent("Your Notify" ,killer, "#7e0000", "Mona Service", 'Du hast ' .. xSource.getName() .. ' getötet')
        TriggerClientEvent("Your Notify" ,source, "#7e0000", "Mona Service", 'Du wurdest von ' .. xPlayer.getName() .. ' getötet')

        xPlayer.addMoney(Config.money)
        TriggerClientEvent("Your Notify" ,killer, "#7e0000", "Mona Service", '+ ' .. Config.money .. "$")
    end
end)
