Config = {}

Config.GaragePedLocations = {
    {coords = vector4(-1177.44, -892.2, 13.77, 339.95)},
}

Config.SQL = 'oxmysql' --- oxmysql or ghmattisql

--if u are not using qb-target uncomment this.
--si no está utilizando qb-target, descomente esto

 --[[Config.Locations = {
     ["duty"] = {
         [1] = vector4(-1192.95, -898.51, 14.0, 33.64),
     },    
     ["tray1"] = {
         [1] = vector4(0 , 0 , 0, 0),
     },
     ["tray2"] = {
         [1] = vector4(0 , 0 , 0, 0),
     },
     ["tray3"] = {
         [1] = vector4(0 , 0 , 0, 0),
     },  
     ["pattycooker"] = {
         [1] = vector4(0 , 0 , 0, 0),
         [2] = vector4(0 , 0 , 0, 0),
     }, 
     ["fryer"] = {
         [1] = vector4(0 , 0 , 0, 0),
     }, 
     ["drinks"] = {
         [1] = vector4(0 , 0 , 0, 0),
         [2] = vector4(0 , 0 , 0, 0),
     },   
     ["fridge"] = {
         [1] = vector4(0 , 0 , 0, 0),
     },      
     ["storage"] = {
         [1] = vector4(0 , 0 , 0, 0),
     },
     ["craftburger"] = {
         [1] = vector4(0 , 0 , 0, 0),
     },    
     ["cashregister"] = {
         [1] = vector4(0 , 0 , 0, 0),
         [2] = vector4(0 , 0 , 0, 0),
         [3] = vector4(0 , 0 , 0, 0),
         [4] = vector4(0 , 0 , 0, 0),
     },   
     ["garage"] = {
         [1] = vector4(0 , 0 , 0, 0),
     },
  }]]


Config.Items = {
label = "Shop",
    slots = 7,
    items = {
        [1] = {
            name = "burger-bun",
            price = 0,
            amount = 5,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "burger-raw",
            price = 0,
            amount = 5,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "burger-tomato",
            price = 0,
            amount = 5,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "burger-lettuce",
            price = 0,
            amount = 5,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "burger-potato",
            price = 0,
            amount = 2,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "burger-mshakeformula",
            price = 0,
            amount = 5,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "burger-sodasyrup",
            price = 0,
            amount = 5,
            info = {},
            type = "item",
            slot = 7,
        },
    }
}
