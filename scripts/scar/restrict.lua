function RestrictOptions(playerid)
    local playerRace = Player_GetRace(playerid)
    if  playerRace==Race_Hiigaran then        
    end 
    if  playerRace==Race_Vaygr then        
    end 
end
function MPRestrict()
    local i = 0
    local numplayers = Universe_PlayerCount()
    while  i<numplayers do
        RestrictOptions(i)
        i = (i + 1)
    end 
end
