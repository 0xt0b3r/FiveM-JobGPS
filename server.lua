ESX = exports["es_extended"]:getSharedObject()

CreateThread(function()
    while true do
        for _, xPlayer in pairs(ESX.GetExtendedPlayers()) do
            if xPlayer then
                local hasItem = xPlayer.hasItem(Config.Item)
                local item = xPlayer.getInventoryItem(Config.Item)
                local job = xPlayer.job.name
                local name = xPlayer.getName()
                
                for v, existingJob in pairs(Config.Jobs) do
                    if item.count >= 1 and job == existingJob.job then
                        print("1")
                        TriggerClientEvent("gpstracker:showblip", xPlayer.source, name, true)
                    else
                        print("2")
                        TriggerClientEvent("gpstracker:showblip", xPlayer.source, name, false)
                    end
                end
            end
        end
        Wait(1000)
    end
end)

