-- سـكـربـت الـغـش الـتـلـقـائـي لـلـعـبـة Grow a Chicken Fighter
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

local player = Players.LocalPlayer
_G.AutoFarm = true -- اجعلها false لإيقاف السكربت

-- دالة للبحث عن الدجاجة والنقر عليها تلقائياً
task.spawn(function()
    while _G.AutoFarm and task.wait(0.01) do -- السرعة 0.01 ثانية (سريع جداً)
        pcall(function()
            -- البحث عن مجسم الدجاجة ومستشعر النقر
            for _, object in pairs(Workspace:GetDescendants()) do
                if object:IsA("ClickDetector") and (object.Parent.Name:lower():find("chicken") or object.Parent:FindFirstChild("Humanoid") or object.Parent:IsA("Model")) then
                    -- محاكاة النقر على الدجاجة لتكبيرها وزيادة القوة
                    fireclickdetector(object)
                end
            end
        end)
    end
end)

print("💪 تم تفعيل سكربت الغش بنجاح! الدجاجة تتطور الآن تلقائياً.")
