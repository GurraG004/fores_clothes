Add this in data/items.lua
```lua
  ['outfit'] = {
		label = 'Outfit',
		weight = 4000,
		stack = false,
		client = {
			usetime = 1500
		}
	},
	['vaska'] = {
		label = 'Bag',
		weight = 300,
		stack = false,
		client = {
			usetime = 1500
		}
	},
	['vast'] = {
		label = 'Armour',
		weight = 3000,
		stack = false,
		client = {
			usetime = 1500
		}
	},
	['skor'] = {
		label = 'Shoees',
		weight = 500,
		stack = false,
		client = {
			usetime = 1500
		}
	},
	['byxor'] = {
		label = 'Byxor',
		weight = 500,
		stack = false,
		client = {
			usetime = 1500
		}
	},
	['tshirt'] = {
		label = 'T-shirt',
		weight = 250,
		stack = false,
		client = {
			usetime = 1500
		}
	},

	['glasses'] = {
		label = 'Glasses',
		weight = 250,
		stack = false,
		client = {
			usetime = 1500
		}
	},
	['mask'] = {
		label = 'Mask',
		weight = 750,
		stack = false,
		client = {
			usetime = 1500
		}
	},
	['hjalm'] = {
		label = 'Helmet',
		weight = 1500,
		stack = false,
		client = {
			usetime = 1500
		}
	},
	['klocka'] = {
		label = 'Watch',
		weight = 500,
		stack = false,
		client = {
			usetime = 1500
		}
	},
	['oronaccessoarer'] = {
		label = 'Ears accessories',
		weight = 100,
		stack = false,
		client = {
			usetime = 1500
		}
	},	
```

And this is modules/items/client.lua

```lua
Item('outfit', function(data, slot)
	ox_inventory:useItem(data, function(data)
		if data then
			TriggerEvent('skinchanger:getSkin', function(skin)
				local a = data.metadata.data
				if skin['sex'] ~= a.sex then
					print("Inte samma kön")
					return
				end
				LoadDict("missmic4")
				TaskPlayAnim(cache.ped, "missmic4", "michael_tux_fidget", 5.0, 1.0, -1, 50, 0, 0, 0, 0 )

				if skin['pants_1'] == 21 and skin['torso_1'] == 15 and skin['shoes_1'] == 34 and skin['bags_1'] == 0 then

				else
					skin.item = 'outfit'
					TriggerServerEvent('fores_clothes:giveclothes', skin)
				end
				
				TriggerEvent('skinchanger:loadClothes', skin, a)
			end)
			Citizen.Wait(3500)
			ClearPedTasks(cache.ped)
			saveclothes()
		end
	end)
end)



Item('tshirt', function(data, slot)
	ox_inventory:useItem(data, function(data)
		if data then
			TriggerEvent('skinchanger:getSkin', function(skin)
				local a = data.metadata.data
				if skin['sex'] ~= a.sex then
					print("Inte samma kön")
					return
				end
				LoadDict("missmic4")
				TaskPlayAnim(cache.ped, "missmic4", "michael_tux_fidget", 5.0, 1.0, -1, 50, 0, 0, 0, 0 )

				if skin['torso_1'] == 15 then

				else
					skin.item = 'tshirt'
					TriggerServerEvent('fores_clothes:giveclothes', skin)
				end
				
				TriggerEvent('skinchanger:loadClothes', skin, a)
			end)
			Citizen.Wait(3500)
			ClearPedTasks(cache.ped)
			saveclothes()
		end
	end)
end)

Item('byxor', function(data, slot)
	ox_inventory:useItem(data, function(data)
		if data then
			TriggerEvent('skinchanger:getSkin', function(skin)
				local a = data.metadata.data
				if skin['sex'] ~= a.sex then
					print("Inte samma kön")
					return
				end
				LoadDict("missmic4")
				TaskPlayAnim(cache.ped, "missmic4", "michael_tux_fidget", 5.0, 1.0, -1, 50, 0, 0, 0, 0 )

				if skin['pants_1'] == 21 then

				else
					skin.item = 'byxor'
					TriggerServerEvent('fores_clothes:giveclothes', skin)
				end
				
				TriggerEvent('skinchanger:loadClothes', skin, a)
			end)
			Citizen.Wait(3500)
			ClearPedTasks(cache.ped)
			saveclothes()
		end
	end)
end)

Item('skor', function(data, slot)
	ox_inventory:useItem(data, function(data)
		if data then
			TriggerEvent('skinchanger:getSkin', function(skin)
				local a = data.metadata.data
				if skin['sex'] ~= a.sex then
					print("Inte samma kön")
					return
				end
				LoadDict("missmic4")
				TaskPlayAnim(cache.ped, "missmic4", "michael_tux_fidget", 5.0, 1.0, -1, 50, 0, 0, 0, 0 )

				if skin['shoes_1'] == 34 then

				else
					skin.item = 'skor'
					TriggerServerEvent('fores_clothes:giveclothes', skin)
				end
				
				TriggerEvent('skinchanger:loadClothes', skin, a)
			end)
			Citizen.Wait(3500)
			ClearPedTasks(cache.ped)
			saveclothes()
		end
	end)
end)

Item('vast', function(data, slot)
	ox_inventory:useItem(data, function(data)
		if data then
			TriggerEvent('skinchanger:getSkin', function(skin)
				local a = data.metadata.data
				if skin['sex'] ~= a.sex then
					print("Inte samma kön")
					return
				end
				LoadDict("missmic4")
				TaskPlayAnim(cache.ped, "missmic4", "michael_tux_fidget", 5.0, 1.0, -1, 50, 0, 0, 0, 0 )

				if skin['bproof_1'] == 0 then

				else
					skin.item = 'vast'
					TriggerServerEvent('fores_clothes:giveclothes', skin)
				end

				if data.metadata.dur then
					SetPedArmour(cache.ped, data.metadata.dur)
				end

				
				TriggerEvent('skinchanger:loadClothes', skin, a)
			end)
			Citizen.Wait(3500)
			ClearPedTasks(cache.ped)
			saveclothes()
		end
	end)
end)

Item('vaska', function(data, slot)
	ox_inventory:useItem(data, function(data)
		if data then
			TriggerEvent('skinchanger:getSkin', function(skin)
				local a = data.metadata.data
				if skin['sex'] ~= a.sex then
					print("Inte samma kön")
					return
				end
				LoadDict("missmic4")
				TaskPlayAnim(cache.ped, "missmic4", "michael_tux_fidget", 5.0, 1.0, -1, 50, 0, 0, 0, 0 )

				if skin['bags_1'] == 0  then

				else
					skin.item = 'vaska'
					TriggerServerEvent('fores_clothes:giveclothes', skin)
				end
				
				TriggerEvent('skinchanger:loadClothes', skin, a)
			end)
			Citizen.Wait(3500)
			ClearPedTasks(cache.ped)
			saveclothes()
		end
	end)
end)

Item('glasses', function(data, slot)
	ox_inventory:useItem(data, function(data)
		if data then
			TriggerEvent('skinchanger:getSkin', function(skin)
				local a = data.metadata.data
				if skin['sex'] ~= a.sex then
					print("Inte samma kön")
					return
				end
				LoadDict("missmic4")
				TaskPlayAnim(cache.ped, "missmic4", "michael_tux_fidget", 5.0, 1.0, -1, 50, 0, 0, 0, 0 )

				if skin['glasses_1'] == -1 then

				else
					skin.item = 'glasses'
					TriggerServerEvent('fores_clothes:giveclothes', skin)
				end
				
				TriggerEvent('skinchanger:loadClothes', skin, a)
			end)
			Citizen.Wait(3500)
			ClearPedTasks(cache.ped)
			saveclothes()
		end
	end)
end)

Item('hjalm', function(data, slot)
	ox_inventory:useItem(data, function(data)
		if data then
			TriggerEvent('skinchanger:getSkin', function(skin)
				local a = data.metadata.data
				if skin['sex'] ~= a.sex then
					print("Inte samma kön")
					return
				end
				LoadDict("missmic4")
				TaskPlayAnim(cache.ped, "missmic4", "michael_tux_fidget", 5.0, 1.0, -1, 50, 0, 0, 0, 0 )

				if skin['helmet_1'] == -1 then

				else
					skin.item = 'hjalm'
					TriggerServerEvent('fores_clothes:giveclothes', skin)
				end
				
				TriggerEvent('skinchanger:loadClothes', skin, a)
			end)
			Citizen.Wait(3500)
			ClearPedTasks(cache.ped)
			saveclothes()
		end
	end)
end)

Item('mask', function(data, slot)
	ox_inventory:useItem(data, function(data)
		if data then
			TriggerEvent('skinchanger:getSkin', function(skin)
				local a = data.metadata.data
				if skin['sex'] ~= a.sex then
					print("Inte samma kön")
					return
				end
				LoadDict("missmic4")
				TaskPlayAnim(cache.ped, "missmic4", "michael_tux_fidget", 5.0, 1.0, -1, 50, 0, 0, 0, 0 )

				if skin['mask_1'] == 0 then

				else
					skin.item = 'mask'
					TriggerServerEvent('fores_clothes:giveclothes', skin)
				end
				
				TriggerEvent('skinchanger:loadClothes', skin, a)
			end)
			Citizen.Wait(3500)
			ClearPedTasks(cache.ped)
			saveclothes()
		end
	end)
end)

Item('klocka', function(data, slot)
	ox_inventory:useItem(data, function(data)
		if data then
			TriggerEvent('skinchanger:getSkin', function(skin)
				local a = data.metadata.data
				if skin['sex'] ~= a.sex then
					print("Inte samma kön")
					return
				end
				LoadDict("missmic4")
				TaskPlayAnim(cache.ped, "missmic4", "michael_tux_fidget", 5.0, 1.0, -1, 50, 0, 0, 0, 0 )

				if skin['watches_1'] == -1 then

				else
					skin.item = 'klocka'
					TriggerServerEvent('fores_clothes:giveclothes', skin)
				end
				
				TriggerEvent('skinchanger:loadClothes', skin, a)
			end)
			Citizen.Wait(3500)
			ClearPedTasks(cache.ped)
			saveclothes()
		end
	end)
end)

Item('oronaccessoarer', function(data, slot)
	ox_inventory:useItem(data, function(data)
		if data then
			TriggerEvent('skinchanger:getSkin', function(skin)
				local a = data.metadata.data
				if skin['sex'] ~= a.sex then
					print("Inte samma kön")
					return
				end
				LoadDict("missmic4")
				TaskPlayAnim(cache.ped, "missmic4", "michael_tux_fidget", 5.0, 1.0, -1, 50, 0, 0, 0, 0 )

				if skin['ears_1'] == -1 then

				else
					skin.item = 'oronaccessoarer'
					TriggerServerEvent('fores_clothes:giveclothes', skin)
				end
				
				TriggerEvent('skinchanger:loadClothes', skin, a)
			end)
			Citizen.Wait(3500)
			ClearPedTasks(cache.ped)
			saveclothes()
		end
	end)
end)



function saveclothes()
	Citizen.Wait(5000)
	TriggerEvent('skinchanger:getSkin', function(skin)
		TriggerServerEvent('esx_skin:save', skin)
	end)
end
```
