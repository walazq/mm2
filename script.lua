local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame.Parent = screenGui

-- Get Key button
local getKeyButton = Instance.new("TextButton")
getKeyButton.Size = UDim2.new(0, 250, 0, 50)
getKeyButton.Position = UDim2.new(0.5, -125, 0.5, -60)
getKeyButton.Text = "Get Key"
getKeyButton.TextSize = 20
getKeyButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
getKeyButton.Parent = frame

-- Check Key button
local checkKeyButton = Instance.new("TextButton")
checkKeyButton.Size = UDim2.new(0, 250, 0, 50)
checkKeyButton.Position = UDim2.new(0.5, -125, 0.5, 30)
checkKeyButton.Text = "Check Key"
checkKeyButton.TextSize = 20
checkKeyButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
checkKeyButton.Parent = frame

-- Key input box
local keyInput = Instance.new("TextBox")
keyInput.Size = UDim2.new(0, 250, 0, 50)
keyInput.Position = UDim2.new(0.5, -125, 0.5, -130)
keyInput.Text = "Enter Key"
keyInput.TextSize = 20
keyInput.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
keyInput.Parent = frame

-- Link to be copied
local siteLink = "https://pnd.link/MM2" -- Put your desired link here

-- When the Get Key button is clicked, copy the link to clipboard
getKeyButton.MouseButton1Click:Connect(function()
    setclipboard(siteLink) -- Copy the link to the clipboard
    print("Site link copied to clipboard: " .. siteLink)
end)

-- When the Check Key button is clicked, perform validation
checkKeyButton.MouseButton1Click:Connect(function()
    if keyInput.Text == "MM2ZAQ" then
        print("Key is correct, script is being executed and screen is closing...")
        
        -- Execute the script using loadstring
        local success, errorMessage = pcall(function()
            loadstring(game:HttpGet("loadstring(game:HttpGet('https://raw.githubusercontent.com/vertex-peak/vertex/refs/heads/main/loadstring'))()"))()
        end)

        if success then
            print("Script successfully executed!")
        else
            warn("Failed to execute the script: " .. errorMessage)
        end

        -- Close the GUI
        screenGui:Destroy()
    else
        print("Incorrect key!")
    end
end)
