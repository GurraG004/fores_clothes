ESX = nil

CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Wait(0)
	end
end)

function Clothe(type)
	if type == 'glasses' then
		TriggerEvent('skinchanger:getSkin', function(skin)
			if skin['glasses_1'] == -1 then
                ESX.ShowNotification('You cant take of clothes if you dont have any')
                return false
			else
				loadAnimDict("missmic4")
				TaskPlayAnim(cache.ped, "missmic4", "michael_tux_fidget", 5.0, 1.0, -1, 50, 0, 0, 0, 0 )

				local clothesSkin = {
					['glasses_1'] = -1, ['glasses_2'] = 0
				}
				TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
				skin.item = 'glasses'
				TriggerServerEvent('fores_clothes:giveclothes', skin)
			end
		end)

		Wait(3500)
        ClearPedTasks(cache.ped)
	end

	if type == 'hjalm' then
		TriggerEvent('skinchanger:getSkin', function(skin)
			if skin['helmet_1'] == -1 then
                ESX.ShowNotification('You cant take of clothes if you dont have any')
                return false
			else
				loadAnimDict("missmic4")
				TaskPlayAnim(cache.ped, "missmic4", "michael_tux_fidget", 5.0, 1.0, -1, 50, 0, 0, 0, 0 )

				local clothesSkin = {
					['helmet_1'] = -1, ['helmet_2'] = 0
				}
				TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
				skin.item = 'hjalm'
				TriggerServerEvent('fores_clothes:giveclothes', skin)
			end
		end)

		Wait(3500)
        ClearPedTasks(cache.ped)
	end

	if type == 'mask' then
		TriggerEvent('skinchanger:getSkin', function(skin)
			if skin['mask_1'] == 0 then
                ESX.ShowNotification('You cant take of clothes if you dont have any')
                return false
			else
				loadAnimDict("missmic4")
				TaskPlayAnim(cache.ped, "missmic4", "michael_tux_fidget", 5.0, 1.0, -1, 50, 0, 0, 0, 0 )

				local clothesSkin = {
					['mask_1'] = 0, ['mask_2'] = 0
				}
				TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
				skin.item = 'mask'
				TriggerServerEvent('fores_clothes:giveclothes', skin)
			end
		end)

		Wait(3500)
        ClearPedTasks(cache.ped)
	end

	if type == 'klocka' then
		TriggerEvent('skinchanger:getSkin', function(skin)
			if skin['watches_1'] == -1 then
                ESX.ShowNotification('You cant take of clothes if you dont have any')
                return false
			else
				loadAnimDict("missmic4")
				TaskPlayAnim(cache.ped, "missmic4", "michael_tux_fidget", 5.0, 1.0, -1, 50, 0, 0, 0, 0 )

				local clothesSkin = {
					['watches_1'] = -1, ['watches_2'] = 0
				}
				TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
				skin.item = 'klocka'
				TriggerServerEvent('fores_clothes:giveclothes', skin)
			end
		end)

		Wait(3500)
        ClearPedTasks(cache.ped)
	end

	if type == 'oronaccessoarer' then
		TriggerEvent('skinchanger:getSkin', function(skin)
			if skin['ears_1'] == -1 then
                ESX.ShowNotification('You cant take of clothes if you dont have any')
                return false
			else
				loadAnimDict("missmic4")
				TaskPlayAnim(cache.ped, "missmic4", "michael_tux_fidget", 5.0, 1.0, -1, 50, 0, 0, 0, 0 )

				local clothesSkin = {
					['ears_1'] = -1, ['ears_2'] = 0
				}
				TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
				skin.item = 'oronaccessoarer'
				TriggerServerEvent('fores_clothes:giveclothes', skin)
			end
		end)

		Wait(3500)
        ClearPedTasks(cache.ped)
	end

	if type == 'tshirt' then
		TriggerEvent('skinchanger:getSkin', function(skin)
			if skin['torso_1'] == 15 then
                ESX.ShowNotification('You cant take of clothes if you dont have any')
                return false
			else
				loadAnimDict("missmic4")
				TaskPlayAnim(cache.ped, "missmic4", "michael_tux_fidget", 5.0, 1.0, -1, 50, 0, 0, 0, 0 )

				local clothesSkin = {
					['tshirt_1'] = 15, ['tshirt_2'] = 0,
					['torso_1'] = 15, ['torso_2'] = 0,
					['arms'] = 15, ['arms_2'] = 0,
					['chain_1'] = 0, ['chain_2'] = 0,
					['decals_1'] = 0, ['decals_2'] = 0
				}
				TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
				skin.item = 'tshirt'
				TriggerServerEvent('fores_clothes:giveclothes', skin)
			end
		end)

		Wait(3500)
        ClearPedTasks(cache.ped)
	end

	if type == 'byxor' then
		TriggerEvent('skinchanger:getSkin', function(skin)
			if skin['pants_1'] == 21 then
                ESX.ShowNotification('You cant take of clothes if you dont have any')
                return false
			else
				loadAnimDict("missmic4")
				TaskPlayAnim(cache.ped, "missmic4", "michael_tux_fidget", 5.0, 1.0, -1, 50, 0, 0, 0, 0 )

				local clothesSkin = {
					['pants_1'] = 21, ['pants_2'] = 0
				}
				TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
				skin.item = 'byxor'
				TriggerServerEvent('fores_clothes:giveclothes', skin)
			end
		end)

		Wait(3500)
        ClearPedTasks(cache.ped)
	end

	if type == 'skor' then
		TriggerEvent('skinchanger:getSkin', function(skin)
			if skin['shoes_1'] == 34 then
                ESX.ShowNotification('You cant take of clothes if you dont have any')
                return false
			else
				loadAnimDict("missmic4")
				TaskPlayAnim(cache.ped, "missmic4", "michael_tux_fidget", 5.0, 1.0, -1, 50, 0, 0, 0, 0 )

				local clothesSkin = {
					['shoes_1'] = 34, ['shoes_2'] = 0
				}
				TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
				skin.item = 'skor'
				TriggerServerEvent('fores_clothes:giveclothes', skin)
			end
		end)

		Wait(3500)
        ClearPedTasks(cache.ped)
	end

	if type == 'vast' then
		TriggerEvent('skinchanger:getSkin', function(skin)
			if skin['bproof_1'] == 0 then
                ESX.ShowNotification('You cant take of clothes if you dont have any')
                return false
			else
				loadAnimDict("missmic4")
				TaskPlayAnim(cache.ped, "missmic4", "michael_tux_fidget", 5.0, 1.0, -1, 50, 0, 0, 0, 0 )

				local clothesSkin = {
					['bproof_1'] = 0, ['bproof_2'] = 0
				}
				TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
				skin.item = 'vast'
				skin.dur = GetPedArmour(PlayerPedId())
				SetPedArmour(PlayerPedId(), 0)
				TriggerServerEvent('fores_clothes:giveclothes', skin)
			end
		end)

		Wait(3500)
        ClearPedTasks(cache.ped)
	end

	if type == 'vaska' then
		TriggerEvent('skinchanger:getSkin', function(skin)
			if skin['bags_1'] == 0 then
                ESX.ShowNotification('You cant take of clothes if you dont have any')
                return false
			else
				loadAnimDict("missmic4")
				TaskPlayAnim(cache.ped, "missmic4", "michael_tux_fidget", 5.0, 1.0, -1, 50, 0, 0, 0, 0 )

				local clothesSkin = {
					['bags_1'] = 0, ['bags_2'] = 0
				}
				TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
				skin.item = 'vaska'
				TriggerServerEvent('fores_clothes:giveclothes', skin)
			end
		end)

		Wait(3500)
        ClearPedTasks(cache.ped)
	end

	if type == 'outfit' then
		TriggerEvent('skinchanger:getSkin', function(skin)

			if (skin['pants_1'] == 21 or skin['torso_1'] == 15 or skin['shoes_1'] == 34) then
                ESX.ShowNotification('You cant take of clothes if you dont have any')
                return false
			else
				loadAnimDict("missmic4")
				TaskPlayAnim(cache.ped, "missmic4", "michael_tux_fidget", 5.0, 1.0, -1, 50, 0, 0, 0, 0 )

				local clothesSkin = {
				['pants_1'] = 21, ['pants_2'] = 0,
				['tshirt_1'] = 15, ['tshirt_2'] = 0,
				['torso_1'] = 15, ['torso_2'] = 0,
				['arms'] = 15, ['arms_2'] = 0,
				['chain_1'] = 0, ['chain_2'] = 0,
				['decals_1'] = 0, ['decals_2'] = 0,
				['shoes_1'] = 34, ['shoes_2'] = 0,
				['bags_1'] = 0, ['bags_2'] = 0
				}
				TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
				skin.item = 'outfit'
				TriggerServerEvent('fores_clothes:giveclothes', skin)
			end
			Wait(3500)
			ClearPedTasks(cache.ped)
		end)
	end

end

function loadAnimDict(dict)
	while ( not HasAnimDictLoaded(dict)) do
		RequestAnimDict(dict)
		Wait(0)
	end
end

exports("Clothe", Clothe)