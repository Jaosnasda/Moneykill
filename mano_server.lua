ESX = nil 
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('Mona_Moneykill')
AddEventHandler('Mona_Moneykill', function (killer)
    xSource = ESX.GetPlayerFromId(source)  
    if killer ~= nil then
        xPlayer = ESX.GetPlayerFromId(killer)    
        TriggerClientEvent("Your Notify Here", killer, "#999999", "Mona Service", 'Du hast ' .. xSource.getName() .. ' getötet')
        TriggerClientEvent("Your Notify Here", source, "#999999", "Mona Service", 'Du wurdest von ' .. xPlayer.getName() .. ' getötet')
        xPlayer.addMoney(Config.money)
        TriggerClientEvent("Your Notify Here", killer, "#999999", "Mona Service", '+ ' .. Config.money .. "$")
    end
end)

-- Hex Codes : https://www.color-hex.com/

SetConvarServerInfo('🏆 Moneykill System', 'Made by Mona Service')
SetConvarServerInfo('🏆 Mona Service', 'discord.gg/fHUfyeEhkW')

print('|--------------------------------------|')
print('|  Mona Service ~ Moneykill System     |')
print('|  Server ~ discord.gg/fHUfyeEhkW      |')
print('|--------------------------------------|')
