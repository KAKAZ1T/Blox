getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Inicializador Kakah Menu",
    LoadingTitle = "Inicializando",
    LoadingSubtitle = "by KakahMenuTeam",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Big Hub"
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "Kakah Menu",
       Subtitle = "Acesso",
       Note = "Colocar a Chave Fornecida na Compra!",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"4349349pd0VB"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 local Tab = Window:CreateTab("Acesso", 4483362458) -- Title, Image
 local Section = Tab:CreateSection("Kakah Menu's")





local Button = Tab:CreateButton({
   Name = "Kakah Menu V3",
   Info = "Para Inicializar o Menu V3", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KAKAZ1T/testvideo/main/deixa%20salvo.txt"))()
   end,

})

local Button = Tab:CreateButton({
    Name = "Kakah Menu V2",
    Info = "Para inicializar o Menu V2.", -- Speaks for itself, Remove if none.
    Interact = 'Changable',
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/KAKAZ1T/testvideo/main/Kakah_Menu_V2_Blox.lua"))()
    end,
 })

 Rayfield:Notify({
    Title = "Importante",
    Content = "Seu HWID foi registrado no nosso Banco de Dados, caso você mude de Dispositivo avise-nós: kakazitscripts.com",
    Duration = 6.5,
    Image = 4483362458,
    Actions = { -- Notification Buttons
       Ignore = {
          Name = "Okay!",
          Callback = function()
          print("O user tocou em Okay!")
       end
    },
 },
 })
 
 local Tab = Window:CreateTab("Configurações", 4483362458) -- Title, Image
 local Section = Tab:CreateSection("Configurações")
 
 local Keybind = Tab:CreateKeybind({
    Name = "Encerrar o Inicializador KakahMenu",
    CurrentKeybind = "RightCtrl",
    HoldToInteract = false,
    Flag = "Keybind1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Keybind)
    Rayfield:Destroy()
    -- The function that takes place when the keybind is pressed
    -- The variable (Keybind) is a boolean for whether the keybind is being held or not (HoldToInteract needs to be true)
    end,
 })