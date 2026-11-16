local rep = game:GetService("ReplicatedStorage") --You can change this to ServerStorage for more security.
local nametag = rep.NametagGui
local GroupID = 910276301

game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(char)
        --Varibles
        local head = char.Head
        local newtext = nametag:Clone() --Cloning the text.
        local Name1 = newtext.TextObjects.NameObject.Name1
        local Name2 = newtext.TextObjects.NameObject.Name2
        local Role1 = newtext.TextObjects.RoleObject.Role1
        local Role2 = newtext.TextObjects.RoleObject.Role2
        local humanoid = char.Humanoid
        
        humanoid.DisplayDistanceType = "None"

        newtext.Parent = head
        newtext.Adornee = head
        Name1.Text = player.Name
        Name2.Text = player.Name
        Role1.Text = player:GetRoleInGroup(1077958143)
        Role2.Text = player:GetRoleInGroup(1077958143)
        
        if player.Name == "Dieselrocket2" then
            Name1.Text = "MajGen. Cole Murphy"
            Name2.Text = "MajGen. Cole Murphy"
            Role1.Text = "Major General, Household Division"
            Role2.Text = "Major General, Household Division"
            ---------------------------------------------
        elseif player.Name == "foauwyfoafio" then
            Name1.Text = ""
            Name2.Text = ""
            Role1.Text = ""
            Role2.Text = ""
            ---------------------------------------------
        end 
    end)
end)
