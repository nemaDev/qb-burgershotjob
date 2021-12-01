QBCore = exports['qb-core']:GetCoreObject()
isLoggedIn = true

local onDuty = false

function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end


RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
	if PlayerData.job.onduty then
	    if PlayerData.job.name == "burgershot" then
		TriggerServerEvent("QBCore:ToggleDuty")
	    end
	end
end)

RegisterNetEvent('QBCore:Client:SetDuty')
AddEventHandler('QBCore:Client:SetDuty', function(duty)
    if PlayerData.job.name == 'burgershot' then
    	onDuty = duty
    end
end)

--[[Citizen.CreateThread(function() -- Commented out by McKlean
    BurgerShot = AddBlipForCoord(-1197.32, -897.655, 13.995)
    SetBlipSprite (BurgerShot, 106)
    SetBlipDisplay(BurgerShot, 4)
    SetBlipScale  (BurgerShot, 0.5)
    SetBlipAsShortRange(BurgerShot, true)
    SetBlipColour(BurgerShot, 75)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("BurgerShot")
    EndTextCommandSetBlipName(BurgerShot)
end)]]

RegisterNetEvent("qb-burgershotjob:DutyB")
AddEventHandler("qb-burgershotjob:DutyB", function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)

RegisterNetEvent("qb-burgershotjob:Tray1")
AddEventHandler("qb-burgershotjob:Tray1", function()
    TriggerEvent("inventory:client:SetCurrentStash", "burgertray1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "burgertray1", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-burgershotjob:Tray4")
AddEventHandler("qb-burgershotjob:Tray4", function()
    TriggerEvent("inventory:client:SetCurrentStash", "burgertray4")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "burgertray4", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-burgershotjob:Tray3")
AddEventHandler("qb-burgershotjob:Tray3", function()
    TriggerEvent("inventory:client:SetCurrentStash", "burgertray3")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "burgertray3", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-burgershotjob:Storage")
AddEventHandler("qb-burgershotjob:Storage", function()
    TriggerEvent("inventory:client:SetCurrentStash", "burgerstorage")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "burgerstorage", {
        maxweight = 250000,
        slots = 40,
    })
end)

RegisterNetEvent("qb-burgershotjob:Storage2")
AddEventHandler("qb-burgershotjob:Storage2", function()
    TriggerEvent("inventory:client:SetCurrentStash", "burgerstorage2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "burgerstorage2", {
        maxweight = 250000,
        slots = 40,
    })
end)

--Meal Creations
RegisterNetEvent("qb-burgershotjob:MurderMeal")
AddEventHandler("qb-burgershotjob:MurderMeal", function()
		local randomToy = math.random(1,10)
		--remove box
		TriggerServerEvent('QBCore:Server:RemoveItem', "burger-murdermeal", 1)
		--add items from box
		TriggerServerEvent('QBCore:Server:AddItem', "burger-heartstopper", 1)
		TriggerServerEvent('QBCore:Server:AddItem', "burger-softdrink", 1)
		TriggerServerEvent('QBCore:Server:AddItem', "burger-fries", 1)

		if randomToy < 4 then
			QBCore.Functions.Notify("No toy in Box Looool", "error")
		elseif randomToy == 4 then
			TriggerServerEvent('QBCore:Server:AddItem', "burger-toy1", 1)
            		TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["burger-toy1"], "add")
		elseif randomToy < 10 and randomToy > 4 then
			QBCore.Functions.Notify("No toy in Box Looool", "error")
		elseif randomToy == 10 then
			TriggerServerEvent('QBCore:Server:AddItem', "burger-toy2", 1)
            		TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["burger-toy2"], "add")
		else
            		QBCore.Functions.Notify("No toy in Box Looool", "error")
        	end
end)

RegisterNetEvent("qb-burgershotjob:CreateMurderMeal")
AddEventHandler("qb-burgershotjob:CreateMurderMeal", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-burgershotjob:server:get:ingredientMurderMeal', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making A Murder Meal..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "burger-fries", 1)
                    			TriggerServerEvent('QBCore:Server:RemoveItem', "burger-heartstopper", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "burger-softdrink", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "burger-murdermeal", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["burger-murdermeal"], "add")
                    			QBCore.Functions.Notify("You made a A Murder Meal", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the items to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end  
end)

RegisterNetEvent("qb-burgershotjob:BleederBurger")
AddEventHandler("qb-burgershotjob:BleederBurger", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-burgershotjob:server:get:ingredientBurger', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Burgers..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "burger-meat", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "burger-lettuce", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "burger-bun", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "burger-tomato", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "burger-bleeder", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["burger-bleeder"], "add")
                    			QBCore.Functions.Notify("You made a Bleeder Burger", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("qb-burgershotjob:MoneyShot")
AddEventHandler("qb-burgershotjob:MoneyShot", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-burgershotjob:server:get:ingredientBurger', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Burgers..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "burger-meat", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "burger-lettuce", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "burger-bun", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "burger-tomato", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "burger-moneyshot", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["burger-moneyshot"], "add")
                    			QBCore.Functions.Notify("You made a MoneyShot Burger", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("qb-burgershotjob:HeartStopper")
AddEventHandler("qb-burgershotjob:HeartStopper", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-burgershotjob:server:get:ingredientBurger', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Burgers..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "burger-meat", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "burger-lettuce", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "burger-bun", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "burger-tomato", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "burger-heartstopper", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["burger-heartstopper"], "add")
                    			QBCore.Functions.Notify("You made a Heart Stopper", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)


RegisterNetEvent("qb-burgershotjob:Torpedo")
AddEventHandler("qb-burgershotjob:Torpedo", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-burgershotjob:server:get:ingredientTorpedo', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making A Torpedo..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "burger-meat", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "burger-bun", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "burger-torpedo", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["burger-torpedo"], "add")
                    			QBCore.Functions.Notify("You made a Torpedo Roll", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end  
end)

RegisterNetEvent("qb-burgershotjob:MeatFree")
AddEventHandler("qb-burgershotjob:MeatFree", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-burgershotjob:server:get:ingredientMeatfree', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making A Meat Free Burger..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "burger-tomato", 1)
                    			TriggerServerEvent('QBCore:Server:RemoveItem', "burger-lettuce", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "burger-bun", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "burger-meatfree", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["burger-meatfree"], "add")
                   			QBCore.Functions.Notify("You made a Meat Free Burger", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end  
end)



RegisterNetEvent("qb-burgershotjob:SoftDrink")
AddEventHandler("qb-burgershotjob:SoftDrink", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           MakeSoftDrink()
        else
            QBCore.Functions.Notify("You don't have any soda syrup..", "error")
        end
      end, 'burger-sodasyrup')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

RegisterNetEvent("qb-burgershotjob:mShake")
AddEventHandler("qb-burgershotjob:mShake", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           MakeMShake()
        else
            QBCore.Functions.Notify("You don't have any Milkshake Formula..", "error")
        end
      end, 'burger-mshakeformula')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

RegisterNetEvent("qb-burgershotjob:Fries")
AddEventHandler("qb-burgershotjob:Fries", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           MakeFries()
        else
            QBCore.Functions.Notify("You don't have any potatoes..", "error")
        end
      end, 'burger-potato')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)


RegisterNetEvent("qb-burgershotjob:PattyFry")
AddEventHandler("qb-burgershotjob:PattyFry", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           MakePatty()
        else
            QBCore.Functions.Notify("You don't have any raw patties..", "error")
        end
      end, 'burger-raw')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

-- Functions --
function MakeFries()
	TriggerServerEvent('QBCore:Server:RemoveItem', "burger-potato", 1)
	QBCore.Functions.Progressbar("pickup", "Frying the fries..", 4000, false, true, {
	    disableMovement = true,
	    disableCarMovement = true,
	    disableMouse = false,
	    disableCombat = true,
	},{
	    animDict = "amb@prop_human_bbq@male@base",
	    anim = "base",
	    flags = 8,
	    }, {
		model = "prop_cs_fork",
		bone = 28422,
		coords = vector3(-0.005, 0.00, 0.00),
		rotation = vector3(175.0, 160.0, 0.0),
	    }
	)
	Citizen.Wait(4000)
	TriggerServerEvent('QBCore:Server:AddItem', "burger-fries", 4)
	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["burger-fries"], "add")
	QBCore.Functions.Notify("You made 4 fries", "success")
	StopAnimTask(PlayerPedId(), "amb@prop_human_bbq@male@base", "base", 1.0)
end


function MakePatty()
    TriggerServerEvent('QBCore:Server:RemoveItem', "burger-raw", 1)
    QBCore.Functions.Progressbar("pickup", "Cooking the Patty..", 4000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    },{
        animDict = "amb@prop_human_bbq@male@base",
        anim = "base",
        flags = 8,
    }, {
        model = "prop_cs_fork",
        bone = 28422,
        coords = vector3(-0.005, 0.00, 0.00),
        rotation = vector3(175.0, 160.0, 0.0),
    }    
)
    Citizen.Wait(4000)
    TriggerServerEvent('QBCore:Server:AddItem', "burger-meat", 1)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["burger-meat"], "add")
    QBCore.Functions.Notify("You cooked the meat", "success")
    StopAnimTask(PlayerPedId(), "amb@prop_human_bbq@male@base", "base", 1.0)
end

function MakeSoftDrink()
    TriggerServerEvent('QBCore:Server:RemoveItem', "burger-sodasyrup", 1)
    QBCore.Functions.Progressbar("pickup", "Filling a cup..", 4000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    })
    Citizen.Wait(4000)
    TriggerServerEvent('QBCore:Server:AddItem', "burger-softdrink", 1)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["burger-softdrink"], "add")
    QBCore.Functions.Notify("You made a Soda", "success")
end  


function MakeMShake()
    TriggerServerEvent('QBCore:Server:RemoveItem', "burger-mshakeformula", 1)
    QBCore.Functions.Progressbar("pickup", "Filling up a cup..", 4000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    })
    Citizen.Wait(4000)
    TriggerServerEvent('QBCore:Server:AddItem', "burger-mshake", 1)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["burger-mshake"], "add")
    QBCore.Functions.Notify("You made a Milkshake", "success")
end  
   
RegisterNetEvent("qb-burgershotjob:shop")
AddEventHandler("qb-burgershotjob:shop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "burgershot", Config.Items)
end)
