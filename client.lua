ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('gpstracker:showblip')
AddEventHandler('gpstracker:showblip', function(name, can)
  if can then
        local blipNaming = name
        local marker = GetEntityCoords(PlayerPedId())
        local blip = AddBlipForCoord(marker)
        
        SetBlipSprite (blip, Config.BlipID)
        SetBlipScale  (blip, Config.BlipSize)
        SetBlipDisplay(blip, 4)
        SetBlipColour (blip, Config.BlipColorID)
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName('STRING') 
        AddTextComponentString(blipNaming)
        EndTextCommandSetBlipName(blip)
        Citizen.Wait(100)
        RemoveBlip(blip)
  else
    RemoveBlip(blip)
  end
end)