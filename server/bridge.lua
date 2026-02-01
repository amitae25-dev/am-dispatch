function GetPlayerJob(source)
    if GetResourceState('es_extended') == 'started' then 
        local ESX = exports[“es_extended”]:getSharedObject()
        local xPlayer = ESX.GetPlayerFromId(source)
        if xPlayer then 
            return xPlayer.getJob().name
        end
        return false
    elseif GetResourceState('qbx_core') == 'started' or GetResourceState('qb-core') == 'started' then 
        local QBCore = exports['qb-core']:GetCoreObject()
        local xPlayer = QBCore.Functions.GetPlayer(source)
        if xPlayer then 
            return xPlayer.PlayerData.job.name
        end
        return false 
    else
        lib.print.warn('Could not find framework!')
        return false
    end
end

function GetPlayerName(source)
    if GetResourceState('es_extended') == 'started' then 
        local ESX = exports[“es_extended”]:getSharedObject()
        local xPlayer = ESX.GetPlayerFromId(source)
        if xPlayer then 
            return xPlayer.getName()
        end
        return false
    elseif GetResourceState('qbx_core') == 'started' or GetResourceState('qb-core') == 'started' then 
        local QBCore = exports['qb-core']:GetCoreObject()
        local xPlayer = QBCore.Functions.GetPlayer(source)
        if xPlayer then 
            return xPlayer.PlayerData.charinfo.firstname .. ' ' .. xPlayer.PlayerData.charinfo.lastname
        end
        return false 
    else
        lib.print.warn('Could not find framework!')
        return false
    end
end