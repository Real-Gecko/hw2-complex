function Watch_MusicMenu() 
  if Universe_GameTime() >= 38 or intro == 1 then
	   --music list
		m_page = ceil(music_data.size/8)	
		for i = 1,8 do
			if (i<=min(8,music_data.size-8*(mt_page-1))) then
				UI_SetElementVisible("MusicListMenu","MusicButton"..i,1)
				if (i+8*mt_page<18) then
					UI_SetTextLabelText("MusicListMenu","MusicIndex"..i,"0"..i+8*(mt_page-1))
				else
					UI_SetTextLabelText("MusicListMenu","MusicIndex"..i,""..i+8*(mt_page-1))
				end
				UI_SetTextLabelText("MusicListMenu","MusicName"..i,music_data.musics[i+8*(mt_page-1)].name)
				if (music_data.musics[i+8*(mt_page-1)].minute < 10) then
					UI_SetTextLabelText("MusicListMenu","mMinute"..i,"0"..music_data.musics[i+8*(mt_page-1)].minute)
				else
					UI_SetTextLabelText("MusicListMenu","mMinute"..i,""..music_data.musics[i+8*(mt_page-1)].minute)
				end
				if (music_data.musics[i+8*(mt_page-1)].second < 10) then
					UI_SetTextLabelText("MusicListMenu","mSecond"..i,"0"..music_data.musics[i+8*(mt_page-1)].second)
				else
					UI_SetTextLabelText("MusicListMenu","mSecond"..i,""..music_data.musics[i+8*(mt_page-1)].second)
				end
			else
				UI_SetElementVisible("MusicListMenu","MusicButton"..i,0)
			end
		end
		if (mt_page==m_page) then
			UI_SetElementEnabled("MusicListMenu","MusicNextPageButton",0)
		elseif(mt_page==1) then
			UI_SetElementEnabled("MusicListMenu","MusicPreviousPageButton",0)
		end
		if (mt_page>1) then
			UI_SetElementEnabled("MusicListMenu","MusicPreviousPageButton",1)
		end
		if (mt_page<m_page) then
			UI_SetElementEnabled("MusicListMenu","MusicNextPageButton",1)
		end	
	  --display track
		if (mp_play == 1) then
			local pLength = ceil(Universe_GameTime()-ms_time)
			local pMinute = floor(pLength/60)
			local pSecond = pLength-60*pMinute
			if (pMinute < 10) then
				UI_SetTextLabelText("MusicMenu","pMinute", "0"..pMinute)
			else
				UI_SetTextLabelText("MusicMenu","pMinute", ""..pMinute)
			end
			if (pSecond < 10) then
				UI_SetTextLabelText("MusicMenu","pSecond", "0"..pSecond)
			else
				UI_SetTextLabelText("MusicMenu","pSecond", ""..pSecond)
			end
			UI_SetElementSize("MusicMenu","MusicProgress", 2+ceil(196*((Universe_GameTime()-ms_time)/(mp_time-ms_time))),8)
			UI_SetElementPosition("MusicMenu","MusicProFrame",ceil(196*((Universe_GameTime()-ms_time)/(mp_time-ms_time))),0)
		else
			UI_SetTextLabelText("MusicMenu","pSecond", "00")
			UI_SetTextLabelText("MusicMenu","pMinute", "00")		
			UI_SetElementSize("MusicMenu","MusicProgress", 2,8)
			UI_SetElementPosition("MusicMenu","MusicProFrame",0,0)
		end
		--music list prev/next page
		if (UI_IsNamedElementVisible("MusicListMenu","MusicNextPage")==1) then
			UI_SetElementVisible("MusicListMenu","MusicNextPage",0)
			mt_page = mt_page+1			
		elseif (UI_IsNamedElementVisible("MusicListMenu","MusicPreviousPage")==1) then
			UI_SetElementVisible("MusicListMenu","MusicPreviousPage",0)
			mt_page = mt_page-1			
		end
		--play mode
		for i=1,4 do
			if (UI_IsNamedElementVisible("MusicMenu","MusicPlayType"..i)==1)and(mp_loop~=i) then
				UI_SetElementVisible("MusicMenu","MusicPlayType"..mp_loop,0)
				mp_loop = i
			end
		end
		--play by list
		for i=1,8 do
			if (UI_IsNamedElementVisible("MusicListMenu","PlayMusic"..i)==1) then
				UI_SetElementVisible("MusicListMenu","PlayMusic"..i,0)
				music_index = 8*(mt_page-1) + i
				Play_ParticularMusic()
			end
		end
		--play/stop
		if (mp_play == 1) then
			if (UI_IsNamedElementVisible("MusicMenu","PlayButton")==1) then
				UI_SetElementVisible("MusicMenu","StopButton",0)
				Sound_MusicPlay(empty_music)
				Rule_Remove("Play_Music")
				Rule_Remove("Play_Music")
				mp_play = 0
			end
		elseif (UI_IsNamedElementVisible("MusicMenu","StopButton")==1) then
			UI_SetElementVisible("MusicMenu","PlayButton",0)
			Play_ParticularMusic()
			Rule_AddInterval("Play_Music", 1.5)
			mp_play = 1
		end
		--next
		if (UI_IsNamedElementVisible("MusicMenu","NextMusic")==1) then
			UI_SetElementVisible("MusicMenu","NextMusic",0)
			Rule_Remove("Play_Music")
			Rule_Remove("Play_Music")
			m_n = 1
			Rule_AddInterval("Play_Music", 1.5)
		end
		--prev
		if (UI_IsNamedElementVisible("MusicMenu","PreviousMusic")==1) then
			UI_SetElementVisible("MusicMenu","PreviousMusic",0)
			Rule_Remove("Play_Music")
			Rule_Remove("Play_Music")
			m_p = 1
			Rule_AddInterval("Play_Music", 1.5)
		end
		for i=1,8 do
			UI_SetButtonPressed("MusicListMenu","MusicButton"..i,0)
		end
		if (music_index>8*(mt_page-1))and(music_index<=8*mt_page) then
			UI_SetButtonPressed("MusicListMenu","MusicButton"..(music_index-(mt_page-1)*8),1)
		end
	end
end

function Play_Music()  
  --play  
	if (mp_time<=Universe_GameTime())or(m_n==1)or(m_p==1) then
		if Universe_GameTime() >= 38 or intro == 1 then
		  --normal/repeat
			if (mp_loop < 3) then
				if (m_p==1) then
					if (music_index==1) then
						music_index=music_data.size
					else
						music_index=music_index-1
					end
				elseif (mp_loop == 1)or(m_n==1) then
					if (music_index==music_data.size) then
						music_index=1
					else
						music_index=music_index+1
					end
				end
			else			
			  --dynamic random
        if mp_loop >= 4 then
					if year >= (11-floor(gamespeedprogression*4)) then	
						local rm = 1  
						if gamespeedprogression < 0.6 then
							rm = random(1,10)
						elseif gamespeedprogression < 1 then
							rm = random(1,8)
						elseif gamespeedprogression < 1.45 then
							rm = random(1,6)	
						else
							rm = random(1,5)
						end		
						if rm <= 5 then
							local m_i = random(1,music_data.size)
							while (music_index==m_i) do
								m_i = random(1,music_data.size)
							end
							music_index = m_i
						else
							local m_i = random(1,28)
							while (music_index==m_i) do
								m_i = random(1,28)
							end
							music_index = m_i
						end  
					else					  
            if startwith < 9 then						
							local m_i = random(1,28)
							while (music_index==m_i) do
								m_i = random(1,28)
							end  
							music_index = m_i
						else
						  --movies
              local m_i = random(42,59)
							while (music_index==m_i) do
								m_i = random(42,59)
							end  
							music_index = m_i
            end						
					end  						
        else
				  --full random
					local m_i = random(1,music_data.size)
					while (music_index==m_i) do
						m_i = random(1,music_data.size)
					end
					music_index = m_i
        end												
			end
			if (m_n==1) then
				m_n = 0
			end
			if (m_p==1) then
				m_p = 0
			end
			Play_ParticularMusic()
		end
	end	
end

function Play_ParticularMusic()
  if Universe_GameTime() >= 38 or intro == 1 then
		UI_SetElementVisible('MusicMenu','StopButton',1)
		Sound_MusicPlayType(music_data.musics[music_index].path, MUS_Ambient)
		--Subtitle_Message("eseguo " .. mp_loop .. music_index, 10)
		ms_time=Universe_GameTime()
		mp_time=ms_time+60*music_data.musics[music_index].minute+music_data.musics[music_index].second
		if (music_index<10) then
			UI_SetTextLabelText("MusicMenu","MusicIndex", "0"..music_index)
		else
			UI_SetTextLabelText("MusicMenu","MusicIndex", ""..music_index)
		end
		UI_SetTextLabelText("MusicMenu","MusicName", music_data.musics[music_index].name)
		if (music_data.musics[music_index].minute < 10) then
			UI_SetTextLabelText("MusicMenu","tMinute", "0"..music_data.musics[music_index].minute)
		else
			UI_SetTextLabelText("MusicMenu","tMinute", ""..music_data.musics[music_index].minute)
		end
		if (music_data.musics[music_index].second < 10) then
			UI_SetTextLabelText("MusicMenu","tSecond", "0"..music_data.musics[music_index].second)
		else
			UI_SetTextLabelText("MusicMenu","tSecond", ""..music_data.musics[music_index].second)
		end
	end	
end

function musicslide()       
  UI_SetElementVisible("MusicMenu","NextMusic",1)
  Rule_Remove("musicslide")
end