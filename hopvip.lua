loadstring(game:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

       local Window = MakeWindow({
         Hub = {
         Title = "Nhân Dz Hub",
         Animation = "by nhân dz"
         },
        Key = {
        KeySystem = true,
        Title = "Get Key",
        Description = "Nhân Dz Hub Auto Hop",
        KeyLink = "https://link4m.com/KJxcxxbr",
        Keys = {"FREE_af3aeadb5b5c7425eb3b2192ddce35db"},
        Notifi = {
        Notifications = true,
        CorrectKey = "Đang chạy script...",
       Incorrectkey = "Key sai",
       CopyKeyLink = "Đã sao chép"
      }
    }
  })

       MinimizeButton({
       Image = "http://www.roblox.com/asset/?id=121798282953737",
       Size = {50, 50},
       Color = Color3.fromRGB(10, 10, 10),
       Corner = true,
       Stroke = false,
       StrokeColor = Color3.fromRGB(255, 0, 0)
      })
      
------ Tab
     local Tab1o = MakeTab({Name = "Trang chủ"})
        
        
     -------TOGGLE 

     Toggle = AddToggle(Tab1o, {
      Name = "Nhân Dz Hub",
      Default = true,
      Callback = function()
     end
    })
     Toggle = AddToggle(Tab1o, {
      Name = "Sớm ra V2",
      Callback = function()
     end
    })
------ BUTTON
    
    AddButton(Tab1o, {
     Name = "Auto Hop Rip_indra",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnBeoDepTrai/refs/heads/main/Rip_Indra"))()
end
})
   AddButton(Tab1o, {
     Name = "Auto Hop Dough King ",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnBeoDepTrai/refs/heads/main/Dough_King"))()
end
})
AddButton(Tab1o, {
     Name = "Auto Hop Mirage island (Đã cập nhật)",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/NhanDzVip/Ndz/refs/heads/main/Skiplon"))()
end
})
AddButton(Tab1o, {
     Name = "Auto Hop Đảo dung nham[đảo rồng]( Đã cập nhật)",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/NhanDzVip/Ndz/refs/heads/main/Skipcac"))()
end
})
AddButton(Tab1o, {
     Name =  "Auto Hop sever có râu đen (Đã cập nhật)",
     Callback =  function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/NhanDzVip/Ndz/refs/heads/main/SkipConCacMemayBamay"))()
end
})