ESX = exports["es_extended"]:getSharedObject()

ESX.RegisterServerCallback("foltone_shop:buyItem", function(source, cb, item, amount)
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = item.price * amount
    if xPlayer.getMoney() >= price then
        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem(item.name, amount)
        cb(true)
    else
        cb(false)
    end
end)
