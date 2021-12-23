local QBCore = exports['qb-core']:GetCoreObject()

-- target

Citizen.CreateThread(function()
    exports['qb-target']:AddBoxZone("BurgerShotDuty", vector3(-1193.3, -898.13, 15.49), 1, 1.2, {
        name = "BurgerShotDuty",
        heading = 32,
        debugPoly = false,
        minZ=14.48,
        maxZ=14.9,
    }, {
        options = {
            {  
            event = "qb-menu:burgershotDutyMenu",
            icon = "far fa-clipboard",
            label = "Clock On/Off",
            job = "burgershot",
            },
        },
        distance = 2.0
    })

    exports['qb-target']:AddBoxZone("burger_tray_1", vector3(-1193.57, -894.59, 13.98), 0.5, 0.7, {
        name = "burger_tray_1",
        heading = 317,
        debugPoly = false,
        minZ=13.8,
        maxZ=14.3,
    }, {
        options = {
            {
            event = "qb-burgershotjob:Tray1",
            icon = "far fa-clipboard",
            label = "Tray 1",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("burger_tray_2", vector3(-1194.93, -892.64, 14.02), 0.5, 0.7, {
        name="burger_tray_2",
        heading=321,
        debugPoly=false,
        minZ=13.8,
        maxZ=14.3,
    }, {
        options = {
            {
            event = "qb-burgershotjob:Tray4",
            icon = "far fa-clipboard",
            label = "Tray 2",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("burger_tray_3", vector3(-1195.57, -891.82, 14.3), 0.5, 0.7, {
        name="burger_tray_3",
        heading=290,
        debugPoly=false,
        minZ=13.8,
        maxZ=14.3,
    }, {
        options = {
            {
            event = "qb-burgershotjob:Tray3",
            icon = "far fa-clipboard",
            label = "Tray 3",
            },
        },
        distance = 3.5
    })


    exports['qb-target']:AddBoxZone("burgershotcooker", vector3(-1200.54, -900.92, 14.0), 1.8, 1.0, {
        name="burgershotcooker",
        heading=34,
        debugPoly=false,
        minZ=13.0,
        maxZ=14.4,
    }, {
        options = {
            {
            event = "qb-burgershotjob:PattyFry",
            icon = "fas fa-hamburger",
            label = "Burger Cook Station",
            job = "burgershot",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("burgershotcooker2 ", vector3(-1202.94, -897.38, 14.0), 1.7, 1, {
        name="burgershotcooker2 ",
        heading=34,
        debugPoly=false,
        minZ=13.0,
        maxZ=14.3,
    }, {
        options = {
            {
            event = "qb-burgershotjob:PattyFry",
            icon = "fas fa-hamburger",
            label = "Burger Cook Station 2",
            job = "burgershot",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("burgershotfryer", vector3(-1202.01, -899.27, 14.0), 2.5, 1.5, {
        name="burgershotfryer",
        heading=35,
        debugPoly=false,
        minZ=13.0,
        maxZ=14.4,
    }, {
        options = {
            {
            event = "qb-burgershotjob:Fries",
            icon = "fas fa-box",
            label = "Make Fries",
            job = "burgershot",
            },
        },
        distance = 1.5
    })


    exports['qb-target']:AddBoxZone("burgershotdrinks", vector3(-1199.54, -895.52, 14.0), 2.2, 0.6, {
        name="burgershotdrinks",
        heading=34,
        debugPoly=false,
        minZ=13.8,
        maxZ=14.8,
    }, {
        options = {
            {
            event = "qb-menu:DrinkMenu",
            icon = "fas fa-filter",
            label = "Make Some Drinks",
            job = "burgershot",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("burgershotdrinks2", vector3(-1189.08, -905.28, 14.0), 1.15, 0.7, {
        name="burgershotdrinks2",
        heading=33,
        debugPoly=false,
        minZ=13.8,
        maxZ=14.8,
    }, {
        options = {
            {
            event = "qb-menu:DrinkMenu",
            icon = "fas fa-filter",
            label = "Make Some Drinks",
            job = "burgershot",
            },
        },
        distance = 1.5
    })


     exports['qb-target']:AddBoxZone("burgerfridge", vector3(-1203.71, -895.86, 14.0), 1.6, 1, {
        name="burgerfridge",
        heading=35,
        debugPoly=false,
        minZ=13.0,
        maxZ=15.6,
    }, {
        options = {
            {
            event = "qb-menu:OrderMenu",
            icon = "fas fa-laptop",
            label = "Order Ingredients!",
            job = "burgershot",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("burgershotdisplay", vector3(-1197.78, -894.45, 14.0), 4.6, 1.2, {
        name="burgershotdisplay",
        heading=34,
        debugPoly=false,
        minZ=13.0,
        maxZ=14.8,
    }, {
        options = {
            {
            event = "qb-burgershotjob:Storage",
            icon = "fas fa-box",
            label = "Storage",
            job = "burgershot",
            },
        },
        distance = 1.5
    })


    exports['qb-target']:AddBoxZone("craftburger", vector3(-1197.57, -899.41, 14.0), 1.8, 0.7, {
        name="craftburger",
        heading=304,
        debugPoly=false,
        minZ=13.0,
        maxZ=14.4,
    }, {
        options = {
            {
            event = "qb-menu:Burgers",
            icon = "fas fa-cheeseburger",
            label = "Burger Work Station",
            job = "burgershot",
            },
        },
        distance = 1.5
    })


    exports['qb-target']:AddBoxZone("BurgerShot_register_1", vector3(-1196.01, -891.34, 14.0), 0.5, 0.4, {
        name="BurgerShot_register_1",
        debugPoly=false,
        heading=125,
        minZ=14.0,
        maxZ=14.5,
    }, {
        options = {
            {
            event = "qb-burgershotjob:bill",
            parms = "1",
            icon = "fas fa-credit-card",
            label = "Charge Customer",
            job = "burgershot",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("BurgerShot_register_2", vector3(-1194.65, -893.3, 14.0), 0.6, 0.5, {
        name="BurgerShot_register_2",
        debugPoly=false,
        heading=302,
        minZ=14.1,
        maxZ=14.5,
    }, {
        options = {
            {
            event = "qb-burgershotjob:bill",
            parms = "2",
            icon = "fas fa-credit-card",
            label = "Charge Customer",
            job = "burgershot",
            },
        },
        distance = 1.5
    })  


    exports['qb-target']:AddBoxZone("BurgerShot_register_3", vector3(-1193.39, -895.22, 14.0), 0.6, 0.4, {
        name="BurgerShot_register_3",
        debugPoly=false,
        heading=125,
        minZ=14.0,
        maxZ=14.4,
    }, {
        options = {
            {
            event = "qb-burgershotjob:bill",
            parms = "3",
            icon = "fas fa-credit-card",
            label = "Charge Customer",
            job = "burgershot",
            },
        },
        distance = 1.5
    })  

    exports['qb-target']:AddBoxZone("BurgerShot_register_4", vector3(-1192.52, -906.65, 14.0), 0.5, 0.5, {
        name="BurgerShot_register_4",
        heading=0,
        debugPoly=false,
        minZ=13.8,
        maxZ=14.2,
    }, {
        options = {
            {
            event = "qb-burgershotjob:bill",
            parms = "4",
            icon = "fas fa-credit-card",
            label = "Charge Customer",
            job = "burgershot",
            },
        },
        distance = 1.5
    })

end)


-- qb-menu --

RegisterNetEvent('qb-menu:Burgers', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "| Available Burgers |",
            isMenuHeader = true
        },
        {
            header = "• Moneyshot Burger",
            txt = "Bun , Cooked Patty , Tomato , Lettuce",
            params = {
                event = "qb-burgershotjob:MoneyShot"
            }
        },
        {
            header = "• Meat Free Burger",
            txt = "Bun , Tomato , Lettuce",
            params = {
                event = "qb-burgershotjob:MeatFree"
            }
        },
        {
            header = "• Bleeder Burger",
            txt = "Bun , Cooked Patty , Tomato , Lettuce",
            params = {
                event = "qb-burgershotjob:BleederBurger"
            }
        },
        {
            header = "• The Heart Stopper",
            txt = "Bun , Cooked Patty , Tomato , Lettuce",
            params = {
                event = "qb-burgershotjob:HeartStopper"
            }
        },
        {
            header = "• Torpedo Roll",
            txt = "Bun , Cooked Meat",
            params = {
                event = "qb-burgershotjob:Torpedo"
            }
        },
        {
            header = "• Murder Meal",
            txt = "The Heart Stopper, Fries and SoftDrink",
            params = {
                event = "qb-burgershotjob:CreateMurderMeal"
            }
        },
        {
            header = "• Close Menu",
            txt = "", 
            params = { 
                event = "qb-menu:client:closeMenu"
            }
        },
    })
end)


RegisterNetEvent('qb-menu:OrderMenu', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "| Fridge |",
            isMenuHeader = true
        },
        {
            header = "• Order Items",
            txt = "Order New Ingredients!",
            params = {
                event = "qb-burgershotjob:shop"
            }
        },
        {
            header = "• Open Fridge",
            txt = "See what you have in storage",
            params = {
                event = "qb-burgershotjob:Storage2"
            }
        },
        {
            header = "• Close Menu",
            txt = "", 
            params = { 
                event = "qb-menu:client:closeMenu"
            }
        },
    })
end)

RegisterNetEvent('qb-menu:DrinkMenu', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "| Drink Menu |",
            isMenuHeader = true
        },
        {
            header = "• Soft Drink",
            txt = "Soda Syrup",
            params = {
                event = "qb-burgershotjob:SoftDrink"
            }
        },
        {
            header = "• Milkshake",
            txt = "Milkshake Formula",
            params = {
                event = "qb-burgershotjob:mShake"
            }
        },
        {
            header = "• Close Menu",
            txt = "", 
            params = { 
                event = "qb-menu:client:closeMenu"
            }
        },
    })
end)

RegisterNetEvent('qb-menu:burgershotDutyMenu', function(data)
    exports['qb-menu']:openMenu({
        { 
            header = "| Clocking in/Off work |",
            isMenuHeader = true
        },
        { 
            header = "• Sign In/Off",
            txt = "",
            params = {
                event = "qb-burgershotjob:DutyB",
            }
        },
        {
            header = "• Close Menu",
            txt = "", 
            params = { 
                event = "qb-menu:client:closeMenu"
            }
        },
    })
end)

local function closeMenuFull()
    exports['qb-menu']:closeMenu()
end


-- Register Stuff --
RegisterNetEvent("qb-burgershotjob:bill", function()
    local dialog = exports['qb-input']:ShowInput({
        header = "Till",
        submitText = "Bill Person",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'id',
                text = 'paypal id'
            },
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = '$ amount!'
            }
        }
    })
    if dialog then
        if not dialog.id or not dialog.amount then return end
        TriggerServerEvent("qb-burgershotjob:bill:player", dialog.id, dialog.amount)
    end
end)
