ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
local ox = exports.ox_inventory


RegisterNetEvent("fores_clothes:giveclothes")
AddEventHandler("fores_clothes:giveclothes", function(data)
	local xPlayer = ESX.GetPlayerFromId(source)
	local name
	local kon

	if xPlayer.canCarryItem(data.item, 1) then

		if data.item == 'outfit' then
			if (data['pants_1'] == 21 or data['torso_1'] == 15 or data['shoes_1'] == 34) then
				xPlayer.showNotification('You cant make a outfit without clothes')
				return false
			end

			local info = {
				sex = data.sex,
				pants_1 = data.pants_1,
				pants_2 = data.pants_2,
				torso_1 = data.torso_1,
				torso_2 = data.torso_2,
				tshirt_1 = data.tshirt_1,
				tshirt_2 = data.tshirt_2,
				arms = data.arms,
				arms_2 = data.arms_2,
				chain_1 = data.chain_1,
				chain_2 = data.chain_2,
				decals_1 = data.decals_1,
				decals_2 = data.decals_2,
				bags_1 = data.bags_1,
				bags_2 = data.bags_2,
				shoes_1 = data.shoes_1,
				shoes_2 = data.shoes_2,
			}

			TriggerEvent('esx_datastore:getDataStore', 'property', xPlayer.identifier, function(store)
				local count = store.count('dressing')
					if data.sex == 0 then kon = 'Man' else kon = 'Kvinna' end
					for i=1, count, 1 do
						local outfit = store.get('dressing', i)
						local storedata = outfit.skin
						if (storedata.pants_1 .. storedata.pants_2 .. storedata.torso_1 .. storedata.torso_2 .. storedata.tshirt_1 .. storedata.arms .. storedata.chain_1 .. storedata.decals_1 .. storedata.bags_1 .. storedata.bags_1 .. storedata.shoes_1) == (data.pants_1 .. data.pants_2 .. storedata.torso_1 .. storedata.torso_2 .. data.tshirt_1 .. data.arms .. data.chain_1 .. data.decals_1 .. data.bags_1 .. data.bags_1 .. data.shoes_1) then
							name = 'Name: '..outfit.label..' Sex: '..kon
							break
						else
							name = 'Size: '..data.pants_1..data.torso_1..' Sex: '..kon
						end
					end
			end)
			ox:AddItem(xPlayer.source, data.item, 1, {description = name, data = info})
		end

		if data.item == 'tshirt' then
			local info = {
				sex = data.sex,
				torso_1 = data.torso_1,
				torso_2 = data.torso_2,
				tshirt_1 = data.tshirt_1,
				tshirt_2 = data.tshirt_2,
				arms = data.arms,
				arms_2 = data.arms_2,
				chain_1 = data.chain_1,
				chain_2 = data.chain_2,
				decals_1 = data.decals_1,
				decals_2 = data.decals_2
			}
			if data.sex == 0 then kon = 'Man' else kon = 'Kvinna' end
			name = 'Size: '..data.torso_1..' Sex: '..kon
			ox:AddItem(xPlayer.source, data.item, 1, {description = name, data = info})
		end

		if data.item == 'byxor' then
			local info = {
				sex = data.sex,
				pants_1 = data.pants_1,
				pants_2 = data.pants_2
			}
			if data.sex == 0 then kon = 'Man' else kon = 'Kvinna' end
			name = 'Size: '..data.pants_1..' Sex: '..kon
			ox:AddItem(xPlayer.source, data.item, 1, {description = name, data = info})
		end

		if data.item == 'skor' then
			local info = {
				sex = data.sex,
				shoes_1 = data.shoes_1,
				shoes_2 = data.shoes_2
			}
			if data.sex == 0 then kon = 'Man' else kon = 'Kvinna' end
			name = 'Shoe size: '..data.shoes_1..' Sex: '..kon
			ox:AddItem(xPlayer.source, data.item, 1, {description = name, data = info})
		end

		if data.item == 'vast' then
			local info = {
				sex = data.sex,
				bproof_1 = data.bproof_1,
				bproof_2 = data.bproof_2
			}
			if data.sex == 0 then kon = 'Man' else kon = 'Kvinna' end
			name = 'Size: '..data.bproof_1..' Sex: '..kon
			if data.dur == 0 then
				ox:AddItem(xPlayer.source, data.item, 1, {description = name, data = info})
			else
				name = 'Size: '..data.bproof_1..' Sex: '..kon.. ' Hållbarhet: '..data.dur
				ox:AddItem(xPlayer.source, data.item, 1, {description = name, data = info, dur = data.dur})
			end
		end

		if data.item == 'vaska' then
			local info = {
				sex = data.sex,
				bags_1 = data.bags_1,
				bags_2 = data.bags_2
			}
			if data.sex == 0 then kon = 'Man' else kon = 'Kvinna' end
			name = 'Size: '..data.bags_1..' Sex: '..kon
			ox:AddItem(xPlayer.source, data.item, 1, {description = name, data = info})
		end

		if data.item == 'glasses' then
			local info = {
				sex = data.sex,
				glasses_1 = data.glasses_1,
				glasses_2 = data.glasses_2
			}
			if data.sex == 0 then kon = 'Man' else kon = 'Kvinna' end
			name = 'Size: '..data.glasses_1..' Sex: '..kon
			ox:AddItem(xPlayer.source, data.item, 1, {description = name, data = info})
		end

		if data.item == 'hjalm' then
			local info = {
				sex = data.sex,
				helmet_1 = data.helmet_1,
				helmet_2 = data.helmet_2
			}
			if data.sex == 0 then kon = 'Man' else kon = 'Kvinna' end
			name = 'Size: '..data.helmet_1..' Sex: '..kon
			ox:AddItem(xPlayer.source, data.item, 1, {description = name, data = info})
		end

		if data.item == 'mask' then
			local info = {
				sex = data.sex,
				mask_1 = data.mask_1,
				mask_2 = data.mask_2
			}
			if data.sex == 0 then kon = 'Man' else kon = 'Kvinna' end
			name = 'Size: '..data.mask_1..' Sex: '..kon
			ox:AddItem(xPlayer.source, data.item, 1, {description = name, data = info})
		end

		if data.item == 'klocka' then
			local info = {
				sex = data.sex,
				watches_1 = data.watches_1,
				watches_2 = data.watches_2
			}
			if data.sex == 0 then kon = 'Man' else kon = 'Kvinna' end
			name = 'Size: '..data.watches_1..' Sex: '..kon
			ox:AddItem(xPlayer.source, data.item, 1, {description = name, data = info})
		end

		if data.item == 'oronaccessoarer' then
			local info = {
				sex = data.sex,
				ears_1 = data.ears_1,
				ears_2 = data.ears_2
			}
			if data.sex == 0 then kon = 'Man' else kon = 'Kvinna' end
			name = 'Size: '..data.ears_1..' Sex: '..kon
			ox:AddItem(xPlayer.source, data.item, 1, {description = name, data = info})
		end
    else
        xPlayer.showNotification('You cant carry more')
	end
end)
