local UiMakeLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Msunehub/Uilm/refs/heads/main/UiMat1.lua"))()
local Notify = UiMakeLib:MakeNotify({
	["Title"] = "Nhân Dz Hub",
	["Description"] = "Notification",
	["Color"] = Color3.fromRGB(151, 207, 23),
	["Content"] = "Welcome to Nhân Dz Hub",
	["Time"] = 1,
	["Delay"] = 10
})
local Window = UiMakeLib:MakeGui({
	["NameHub"] = "Nhân Dz Hub",
	["Description"] = "Phiên Bản V1 Auto Hop",
	["Color"] = Color3.fromRGB(151, 207, 23),
	["Logo Player"] = "https://www.roblox.com/headshot-thumbnail/image?userId="..game:GetService("Players").LocalPlayer.UserId .."&width=420&height=420&format=png",
	["Name Player"] = tostring(game:GetService("Players").LocalPlayer.Name),
	["Tab Width"] = 140
})
local Tab1 = Window:CreateTab({
	["Name"] = "Auto Hop",
	["Icon"] = "rbxassetid://121798282953737"
})
local Section = Tab1:AddSection("Mở Các Loại Hack")
local Paragraph = Section:AddParagraph({
	["Title"] = "Paragraph",
	["Content"] = "This is a Paragraph"
})
Paragraph:Set({
	["Title"] = "Paragraph",
	["Content"] = "This is a Paragraph"
})
local Toggle = Section:AddToggle({
	["Title"]= "Toggle",
	["Content"] = "This is a Toggle",
	["Default"] = false,
	["Multi"] = true,
	["Options"] = {"Option 1", "Option 2"},
	["Selecting"] = {"Option 1"},
	["Callback"] = function(Value) 
		print(Value)
	end
})
Toggle:Set(false)
print(Toggle.Value)
local Button = Section:AddButton({
	["Title"] = "Auto Hop Rip indra",
	["Content"] = "",
	["Icon"] = "rbxassetid://16932740082",
	["Callback"] = function()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnBeoDepTrai/refs/heads/main/Rip_Indra"))()
	end
})
local Button = Section:AddButton({
	["Title"] = "Auto Hop Dough King v2",
	["Content"] = "",
	["Icon"] = "rbxassetid://16932740082",
	["Callback"] = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnBeoDepTrai/refs/heads/main/Dough_King"))()
	end
})
local Button = Section:AddButton({
	["Title"] = "Auto Hop Mirage island and full moon",
	["Content"] = "",
	["Icon"] = "rbxassetid://16932740082",
	["Callback"] = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/NhanDzVip/Ndz/refs/heads/main/Skiplon"))()
	end
})
local Button = Section:AddButton({
	["Title"] = "Auto Hop Prehistoric island [Beta]",
	["Content"] = "",
	["Icon"] = "rbxassetid://16932740082",
	["Callback"] = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/NhanDzVip/Ndz/refs/heads/main/Skipcac"))()
	end
})
local Button = Section:AddButton({
	["Title"] = "Auto Hop Black beard",
	["Content"] = "",
	["Icon"] = "rbxassetid://16932740082",
	["Callback"] = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/NhanDzVip/Ndz/refs/heads/main/SkipConCacMemayBamay"))()
	end
})
local Button = Section:AddButton({
	["Title"] = "Auto Hop Triple katana legendary",
	["Content"] = "",
	["Icon"] = "rbxassetid://16932740082",
	["Callback"] = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/NhanDzVip/Ndz/refs/heads/main/skiplamdog"))()
	end
})
local Button = Section:AddButton({
	["Title"] = "Auto Hop Haki legendary",
	["Content"] = "",
	["Icon"] = "rbxassetid://16932740082",
	["Callback"] = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/NhanDzVip/Ndz/refs/heads/main/Skipbangniemtin"))()
	end
})
local Slider = Section:AddSlider({
	["Title"] = "Slider",
	["Content"] = "This is a Slider",
	["Min"] = 0,
	["Max"] = 100,
	["Increment"] = 1,
	["Default"] = 30,
	["Callback"] = function(Value) 
		print(Value)
	end
})
Slider:Set(30)
print(Slider.Value)
local Input = Section:AddInput({
	["Title"] = "Input",
	["Content"] = "This is a Input",
	["Callback"] = function(Value) 
		print(Value)
	end
})
Input:Set("Input TextBox")
print(Input.Value)
local Dropdown = Section:AddDropdown({
	["Title"] = "Dropdown",
	["Content"] = "This is a Dropdown",
	["Multi"] = false,
	["Options"] = {"Option 1", "Option 2"},
	["Default"] = {"Option 1"},
	["Callback"] = function(Value)
		print(Value)
	end
})
Dropdown:Set({"Option 1"})
Dropdown:AddOption("Option 3")
Dropdown:Clear()
Dropdown:Refresh({"Option 1", "Option 2"}, {"Option 1"})
print(Dropdown.Value)
print(Dropdown.Options)

