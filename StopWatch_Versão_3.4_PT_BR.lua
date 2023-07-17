--[[
----------------------------------------------------------
Open Broadcaster Software®️
OBS > Tools > Scripts
@midnight-studios
Stopwatch
----------------------------------------------------------
]]
--Globals
obs           				= obslua
gversion 					= "3.4"
luafile						= "StopWatch_Versão_3.4_PT_BR.lua"
obsurl						= "simple-stopwatch.1364/"
icon="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABUAAAAVCAYAAACpF6WWAAAENElEQVQ4jY1UTUgjZxh+ksl/JuMkMYb4F40bNZqK0KJFqBZqS9ddyl76dyhdKPRQShH2sNDSnnopCz11D10KS/dSKNiDoD2I7KXFQ0XSSGpM1llFMYn5mZiMY2IymfIOhgazXfaDj5n53u975vme531fnaqqeMHxJYCvAOgAlABcAyA1jxLO1tYW1tbWoL+Kd3x8jGg0imw2C0VRWkMEYgNgBeAFYKTFRqOh7aVnE9xwFTSZTGJ7exszMzPQ6XSQZRk8z9P7YrVa/Y5hmKLBYHCpqirW63Wcn5/j7OwMHo9HA6bvNqY2mw1Op1N70qaTkxPkcjmbLMsDZrN5hOO4NxuNhlMUxTFiSCA0FEW5GQ6H/wmHwzfamDavUKlUYDKZAoFA4Gue52/r9f/9v6OjQ5uKojwpFAr3RFF8UCwWjW63OzQ/P/9yGyiBnZ6eEtN3eZ7/9XJZrlQqP2cymcf5fL4QDAbHdTrd2yzLXvd4PD9yHHdLEISFXC7nsdvtuTb3c7kcEokEJiYmhliWtaiqWs5ms4f1el0lE2lOTU0hn8/DYrF09vb23jebze9JkvRXNBqdMpvNaIJaLh1tHScAzpvsSd+joyOkUimEQiFNa4vFAlEU4Xa7HwYCgduFQuHRxsbGx5p+qqq+o/7/SF7uQSaTwcHBgZYdgiBMqKqa2dnZ8S8tLaFcLicIIR6PjzU13Qew+gzPKNEj9JJOp5tag+O41/v7+x/v7u7+sLOzc8BxHN1icXR0dMXlcn3xQhW1v7+PSCSC6enptxwOx3WWZRcbjcbTjY2NAJ1nWRYGgwHj4+OqoigFYnr/UlPlClYFwJ1arVYjU8bGxhZ8Pt9KMxiLxd5gGEbTlTSv1WqQJOmJw+G4RqCfPYfkN4qiFDs7O9HT0/Nqa4BhmKd2u10DrFaruLi4oJmncibQSUCrLHJabDlHzItGo1E7FIvFvg+FQjMmkykkCMK9eDwOivl8PvqhBspxXJAOEujfz2HazzBMdXh4OJNMJoupVGre7/cbBEGor6+vY2RkROsLlwY6jUajS5KkSGvtf0oVemUeAPiDgsFgUHMeQJ3MmZycxNzcnMZWkiT4/f67FJRl+UFrmcYB/N7y3UyLSHOBzNjb20MgEMDg4CC6urqwublJZo12d3ffVRRFEQTh4TNTqlQqaawoTShOVdOsqMPDQ8zOzmqFQK3PZrO91NPTs2U0GkmWG4lEYrWt9cViMSwvL1Ntvw9gRafT/aTX6z8AwFKcuhU5zjDMkNfr/XZgYCBKgMfHx3eSyeSqw+Fob9LEipxMp9MRp9P5uclkWuB5/hOKWa3Wvb6+vjLP8wNer5fXUkRRLkql0ofZbPY3ug019TZQ6jKU0AzD7Iqi+Josy6+4XK6P7Hb7LbvdPkS5SXpXKpU/ZVn+5ezs7FG9Xi9brVZNLr1ej38BVDs6EbSfFQsAAAAASUVORK5CYII="
desc	    				= [[
<hr/><center><h2>Cronômetro Avançado</h2>Traduzido por Tiago Pascoal</h2> ( Version: %s )</center>
<br><center><img width=38 height=42 src=']] .. icon .. [['/></center>
<br><center><a href="https://github.com/tiagopascoalbr/obs-lua/blob/main/]] .. luafile ..[[">Encontre o Plugin Traduzido no GitHub</a></center>
<br><p>As propriedades desse Script ajustarão a visibilidade conforme necessário. Algumas propriedades avançadas só estarão visíveis se a configuração estiver definida como "Avançado". Se a configuração for definida como "Básico", os valores definidos ainda serão usados, portanto, certifique-se de defini-los corretamente.</p><p>Encontre ajuda no <a href="https://obsproject.com/forum/resources/]] .. obsurl ..[[">Tópico do Fórum OBS</a>.</p><hr/>]]
last_text    				= ""
custom_time_format			= ""
font_normal					= "#ffffff"
font_dimmed					= "#bfbbbf"
timer_source   				= ""
countdown_type 				= ""
backup_folder 				= ""
import_list 				= ""
output_file_name 			= "-backup($date_stamp).json";
longtimetext_s 				= ""
longtimetext_p 				= ""
last_split_data 			= ""
split_type   				= ""
split_source   				= ""
active_source  				= ""
next_scene					= ""
stop_text					= ""
cur_seconds   				= 0
def_seconds   				= 0
split	     				= 0
timer_year	     			= 0
timer_month	     			= 0
timer_day	     			= 0
timer_hours	     			= 0
timer_minutes 	     		= 0
timer_seconds	     		= 0
timer_type   				= 0
start_recording				= 0
recording_type				= 0
trigger_text				= 1
orig_time     				= 0
time_frequency				= 0
completed_cycles			= 0
ns_last						= 0
cycle_index 				= 0
timer_cycle 				= 10 --milliseconds
split_itm					= {}
split_data					= nil
script_settings 			= nil
props 						= nil
activated     				= false
timer_active  				= false
reset_activated				= false
start_on_visible  			= false
disable_script   			= false
media = {
warning_text				= "",
caution_text				= "",
source_name_audio_warning	= "",
source_name_audio_caution	= "", 
caution_note_source 		= "",
warning_note_source 		= "",
caution_note 				= "",
warning_note 				= "",
warning_activated			= false,
caution_activated			= false, 
cur_seconds_caution			= 0,
cur_seconds_warning			= 0, 
caution_duration			= 0, 
warning_duration			= 0, 
normal_color				= 0xFFFFFFFF,
caution_color				= 0x40f3ed,
warning_color				= 0x05055a,
last_state_caution			= obs.OBS_MEDIA_STATE_NONE,
last_state_warning			= obs.OBS_MEDIA_STATE_NONE
}
hotkey_id_reset			= obs.OBS_INVALID_HOTKEY_ID
hotkey_id_pause			= obs.OBS_INVALID_HOTKEY_ID
hotkey_id_split			= obs.OBS_INVALID_HOTKEY_ID
--[[
----------------------------------------------------------
-- Use this to create a Script Log Output used in testing
----------------------------------------------------------
]]
function log( name, msg )
  if msg ~= nil then
    msg = " > " .. tostring( msg )
  else
    msg = ""
  end
  obs.script_log( obs.LOG_DEBUG, name .. msg )
end
--[[
----------------------------------------------------------
-- Get the name of this script
----------------------------------------------------------
]]
function filename() 
	local str = debug.getinfo(2).source:sub(2) 
	return str:match("^.*/(.*).lua$") or str 
end
--[[
----------------------------------------------------------
	A function named script_description returns the description shown to
	the user
----------------------------------------------------------
]]
function script_description()
	return string.format( desc, tostring( gversion ) )
end
--[[
----------------------------------------------------------
-- 
----------------------------------------------------------
]]
function get_filenames( path )
	local filenames = {}
	local dir = obs.os_opendir( path )
	local entry
	repeat
	  entry = obs.os_readdir(dir)
	  if entry then
		local ext = obs.os_get_path_extension( entry.d_name )
		if ext == ".json" then
			local  filename = string.gsub( entry.d_name, ext, "" )
			table.insert( filenames, filename )
	  	end
	  end
	until not entry
	obs.os_closedir( dir )
	return filenames
end
--[[
----------------------------------------------------------
-- 
----------------------------------------------------------
]]
function write_to_json( data )
	output_folder = backup_folder
	-- convert Windows path to UNIX path
	local file_name = filename() .. output_file_name:gsub("$date_stamp", os.date("%Y-%m-%d-%H%M"))
	-- set output path as the script path by default
	local script_path = script_path();
	local output_path = script_path .. file_name;
	-- if specified output path exists, then set this as the new output path
	if (output_folder ~= "") then
		output_path = output_folder .. "/" .. file_name
	else
		output_path = script_path .. file_name;
	end
	output_path = output_path:gsub([[\]], "/");
	obs.obs_data_erase( data, "backup_folder" )
	obs.obs_data_erase( data, "backup_mode" )
	return obs.obs_data_save_json( data, output_path )
end
--[[
----------------------------------------------------------
	Assign a default Frequency based on the Frame Rate	
	video_info.base_width
	video_info.base_height
	video_info.fps_den
	video_info.output_width
	video_info.output_height
	video_info.range
	video_info.colorspace
----------------------------------------------------------
]]
function assign_default_frequency()
	local fps = 60 -- 60 is the maximum supported frame rate
	local video_info = obs.obs_video_info()
    if obs.obs_get_video_info(video_info) then
		fps = video_info.fps_num		
	end
	time_frequency = ( 1/fps )
end	
--[[
----------------------------------------------------------
	Used this in testing to measure accuracy

	The Text Source and the Log should produce the same value
	The Text source is updated by the time function while the debug 
	uses start and end time stamps to get a value
----------------------------------------------------------
]]
function get_time_lapsed()
	local ns = obs.os_gettime_ns()
	local delta = ( ns/1000000000.0 ) - ( orig_time/1000000000.0 )
	return TimeFormat( delta )
end	
--[[
----------------------------------------------------------
	The true frequency between cycles varies due to script
	and system task processing, therefore a static frequency
	will produce inaccuarte results over time. 

	Start with a default frequency of 1 second devided by
	the assigned active fps and then update the frequency 
	calculated from the difference between cycles for the 
	previous and current cycle using high-precision system 
	time, in nanoseconds.

	It should be noted, the frequency is based on the
	script defined cycle time, which in this case is 
	10 miliseconds. Based on testing 10 Miliseconds is the
	fastest cycle supported in OBS lua.
----------------------------------------------------------
]]
function get_frequency( previous )
	local ns = obs.os_gettime_ns()
	ns_last = ns
	local f = ( ns/1000000000.0 ) - ( previous/1000000000.0 )
	if f > 1 then f = time_frequency end
	return f	
end

--[[
----------------------------------------------------------
	Convert Seconds to hours:minutes:seconds:miliseconds
----------------------------------------------------------
]]
function delta_time(year, month, day, hour, minute, second)
	local now = os.time()
	if (year == -1) then
		year = os.date("%Y", now)
	end
	if (month == -1) then
		month = os.date("%m", now)
	end
	if (day == -1) then
		day = os.date("%d", now)
	end
	local future = os.time{year=year, month=month, day=day, hour=hour, min=minute, sec=second}
	local seconds = os.difftime(future, now)
	if (seconds < 0) then
		seconds = 0
	end
	return seconds 
end
--[[
----------------------------------------------------------
	
----------------------------------------------------------
]]
function trim_time( hour, minutes, seconds, mili, trim )
	local format_hour, 
	format_minutes, 
	format_seconds, 
	format_mili = 
	( hour and "%02d" or "" ),
	( minutes and ":%02d" or "" ),
	( seconds and ":%02d" or "" ),
	( mili and ",%02d" or "" ) 
	local time = string.format( format_hour..format_minutes..format_seconds..format_mili, hour, minutes, seconds, mili )
	if trim then
		return time
	end	
	if hour == 0 then
		time = string.format( "%02d:%02d"..format_mili, minutes, seconds, mili )
	end
	if hour == 0 and minutes == 0 then
		time = string.format( "%02d"..format_mili, seconds, mili )
	end
	if hour == 0 and minutes == 0 and seconds == 0 then
		format_mili = ( mili and "%02d" or "" )
		time = string.format( format_mili, mili )
	end
	return trim_zero( time )
end
--[[
----------------------------------------------------------
	
----------------------------------------------------------
]]
function trim_zero( int )
   while true do 
      if int:sub( 1,1 ) == '0' then 
         int = int:sub( 2 )
      else
         break
      end
   end   
   return int
end
--[[
----------------------------------------------------------
----------------------------------------------------------
]]
function wait( ms )
	if ms ~= nil then
		local start = math.floor( ( obs.os_gettime_ns()/1000000 ) )
		repeat until ( math.floor( ( obs.os_gettime_ns()/1000000 ) )-start ) >= ms 
	end 
end
--[[
----------------------------------------------------------
	"Timer Expires" 	= 1 
	"Caution Time" 		= 2 
	"Warning Time" 		= 3 
	"Timer Visible" 	= 4 
	"Timer Start" 		= 5
----------------------------------------------------------
]]
function record( mark, ms )
	if timer_type ~= 2 then return end
	if start_recording == 1 and mark == recording_type then
		obs.obs_frontend_recording_start()
	end
	if ms ~= nil then wait( ms ) end 
end	
--[[
----------------------------------------------------------
	Only used in Countdown mode
----------------------------------------------------------
]] 
function timer_ended( source_name )
	delayed_recording()
	if next_scene == "" or next_scene == "Selecione" then
		return
	end	
	if next_scene ~= "TEXTO DE FIM DO TEMPORIZADOR" and next_scene ~= "Lista de Fontes"  and next_scene ~= "Lista de Cenas" then
		set_visible( timer_source, false ) -- last thing, set visibility of timer to hide
		--[[
			Increments the source reference counter, 
			use obs_source_release() to release it when complete.
		]]
		local source = obs.obs_get_source_by_name( next_scene )
		obs.obs_frontend_set_current_scene( source )
		obs.obs_source_release( source )
		fresh_start( true ) 
		--obs.remove_current_callback()
	end
	if next_scene == "Lista de Fontes" then
		reset( true )
		cycle_list_activate( 'source' )
		on_pause( true )
	end	
	if next_scene == "Lista de Cenas" then
		reset( true )
		cycle_list_activate( 'scene' )
		on_pause( true )
	end	
	if next_scene == "TEXTO DE FIM DO TEMPORIZADOR" then
		local text = stop_text
		set_text( source_name, text )
	end	
end	
--[[
----------------------------------------------------------
	Function  
----------------------------------------------------------
]]
function cycle_list_activate( source_type )
	local list = {}
	if source_type ~= "source" then
		local scenes = obs.obs_frontend_get_scene_names(  )

		if scenes ~= nil then
			for _, scene in pairs( scenes ) do
				if name ~= scene then
					list[scene] = scene
				end
			end
			obs.bfree( scene )
		end	
	else
		list = {}
		local sources = obs.obs_enum_sources()
		if sources ~= nil then
			for _, source in pairs( sources ) do
				local name = obs.obs_source_get_name( source )
				list[name] = name
			end
		end	
		obs.source_list_release( sources )		
	end
		cycle_list = obs.obs_data_get_array( script_settings, "cycle_list" )
		local count = obs.obs_data_array_count(cycle_list) - 1;
		for i = 0, count do 
			local item = obs.obs_data_array_item(cycle_list, cycle_index);
			local value = obs.obs_data_get_string(item, "value");
			cycle_index = cycle_index + 1
			if cycle_index > count then
				cycle_index = 0
			end	
			if list[value] ~= nil then
				if source_type ~= "source" then
					local scene_source = obs.obs_frontend_get_current_scene()
					local name = obs.obs_source_get_name( scene_source )
    				obs.obs_source_release( scene_source )
				
					if name == list[value] then 
						-- goto next			
					else
						local source = obs.obs_get_source_by_name( list[value] )
						if source ~= nil then
							obs.obs_frontend_set_current_scene( source )
						end
						obs.obs_source_release( source )
						set_text( active_source, list[value] )
						break	
					end			
				else
					if is_visible(list[value]) then 
						-- goto next			
					else
						set_visible( list[value], true )
						set_text( active_source, list[value] )
						break
					end
				end				
			end	
		end
		obs.obs_data_array_release(cycle_list)	
end	
--[[
----------------------------------------------------------
	Convert Seconds to hours:minutes:seconds:miliseconds
----------------------------------------------------------
]]
function TimeFormat( time, notrim )
	if time == nil then
		return
	end
	local trim = ( timer_trim == 1 )
	local hour, minutes, seconds, mili = 0, 0, 0, 0
	--[[
		If there is more than 24 hours in the time value
		we need to remove the additional time value to leave only a 23:59:59
		value. We will do this by calculating days
	]]
	-- If there is more than 24 hours, remove 23:59:59 as it will be in the clock 
	if time > 86399 then -- 23:59:59
		local c_time = ( math.floor( (time ) / 86400 ) * 86400 )
		time = time - c_time
	end
	hour = math.floor( time/3600 )
	if hour < 10 and trim then
		hour = "0"..hour
	end
	minutes = math.floor( ( time - math.floor( time/3600 )*3600 )/60 )
	if minutes < 10 and trim then
		minutes = "0"..minutes
	end
	seconds =  math.floor( time - math.floor( time/3600 )*3600 - math.floor( ( time - math.floor( time/3600 )*3600 )/60 )*60 )
	if seconds < 10 and trim then
		seconds = "0"..seconds
	end
	mili = math.floor( ( time - math.floor( time/3600 )*3600 - math.floor( ( time - math.floor( time/3600 )*3600 )/60 )*60 - math.floor( time - math.floor( time/3600 )*3600 - math.floor( ( time - math.floor( time/3600 )*3600 )/60 )*60 ) )*100 )
	if mili < 10 and trim then
		mili = "0"..mili
	end 
	if notrim or ( timer_trim == 4 ) then
		return trim_time( hour, minutes, seconds, nil, true )		
	end	
	if ( timer_trim == 5 ) then
		return trim_time( hour, minutes, seconds, mili, true )		
	end	
	return trim_time( hour, minutes, seconds, ( ( timer_trim ~= 3 ) and mili or nil ), trim )
end
--[[
----------------------------------------------------------
	
----------------------------------------------------------
]]
function LongTimeFormat( time )
	local c_time = time
	-- If there is more than 24 hours, remove 23:59:59 as it will be in the clock 
	if time > 86399 then -- 23:59:59
		c_time = math.floor( ( time ) / 86400)
	end
	if time < 86400 then
		c_time = 0
	end
	return c_time
end


--[[
----------------------------------------------------------
	
----------------------------------------------------------
]]
function explode(str,delim)
   local t, ll
   t={}
   ll=0
   if(#str == 1) then
      return {str}
   end
   while true do
      l = string.find(str, delim, ll, true) -- find the next d in the string
      if l ~= nil then -- if "not not" found then..
         table.insert(t, string.sub(str,ll,l-1)) -- Save it in our array.
         ll = l + 1 -- save just after where we found it for searching next time.
      else
         table.insert(t, string.sub(str,ll)) -- Save what's left in our array.
         break -- Break at end, as it should be, according to the lua manual.
      end
   end
   return t
end
--[[
----------------------------------------------------------
----------------------------------------------------------
]]
function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end
--[[
----------------------------------------------------------
	
----------------------------------------------------------
]]
function format_time_stamp( timestamp, format )
	local table1 = explode( timestamp, ':' )
	if table1 == nil then return timestamp end
	local c = tablelength( table1 )
	local _, d = timestamp:gsub(":","")
	local _, t = format:gsub("$T","")
	local day, hour, minute, seconds, mili = 0, 0, 0, 0, 0
	if d == 3 then
		if tableHasKey( table1, 1 ) then
			day = table1[1]
		end
		if tableHasKey( table1, 2 ) then
			hour = table1[2]
		end
		if tableHasKey( table1, 3 ) then
			minute = table1[3]
		end
		if tableHasKey( table1, 4 ) then
			seconds = table1[4]
			local table2 = explode( table1[4], ',' )
			if tableHasKey( table2, 1 ) and tableHasKey( table2, 2 ) then
				seconds = table2[1]
				mili = table2[2]
			end	
		end
	end
	if d == 2 then
		if tableHasKey( table1, 1 ) then
			hour = table1[1]
		end
		if tableHasKey( table1, 2 ) then
			minute = table1[2]
		end
		if tableHasKey( table1, 3 ) then
			seconds = table1[3]
			local table2 = explode( table1[3], ',' )
			if tableHasKey( table2, 1 ) and tableHasKey( table2, 2 ) then
				seconds = table2[1]
				mili = table2[2]
			end	
		end
	end
	if d == 1 then
		if tableHasKey( table1, 1 ) then
			minute = table1[1]
		end
		if tableHasKey( table1, 2 ) then
			seconds = table1[2]
			local table2 = explode( table1[2], ',' )
			if tableHasKey( table2, 1 ) and tableHasKey( table2, 2 ) then
				seconds = table2[1]
				mili = table2[2]
			end	
		end
	end
	if tonumber(day) < 10 then 
		day = "0"..day
	end
	timestamp = format:gsub("$T", ""):gsub("$D", day):gsub( "$H", hour):gsub("$M", minute):gsub("$S", seconds):gsub("$F", mili)
	if t ~= 0 and cur_seconds > 0.01 then
		--local reg = '^[0]+[:]?[0]+[:]?[0]+[:]?[0]?'
		local reg = "^[0:,]*" -- close, but misses 1 instance
		timestamp = timestamp:gsub(reg,"")
	end	
	if cur_seconds < 0.01 then -- else it will show 00:00:00
		timestamp = ""
	end	
	return timestamp
end
--[[
----------------------------------------------------------
	Function to set the time text
----------------------------------------------------------
]]
function set_time_text( source_name )
	if reset_activated then 
		reset_activated = false
		fresh_start( true ) 
	end	
	if cur_seconds <= 0.01 and timer_type ~= 1 then cur_seconds = 0 end
	local text = tostring( TimeFormat( cur_seconds ) )
	if timer_trim ~= 5 then
		--[[
			Format the Text 'Day/Days'
		]]
		if timer_type == 2 and countdown_type == 1 and cur_seconds ~= 0 then
			local longtimetext = longtimetext_p
			if math.floor( cur_seconds / 86400 ) <= 1 then
				longtimetext = longtimetext_s
			end
			if math.floor( cur_seconds / 86400 ) <= 0 then
				longtimetext = longtimetext_p
			end		
			text = string.gsub(longtimetext .. text, "[#]", LongTimeFormat( cur_seconds ))
		end		
	else	
		local l_time = LongTimeFormat( cur_seconds )
		local t_time = TimeFormat( cur_seconds )
		text = format_time_stamp( ( l_time ~= 0 ) and string.format("%s:%s", l_time, t_time ) or string.format("%s", t_time ), custom_time_format )
	end	
	if timer_type ~= 2 then
		--text_prefix = ""
		--   text_suffix = ""
	end
	text = text_prefix .. text .. text_suffix
	if text ~= last_text then
		--[[
			Increments the source reference counter, 
			use obs_source_release() to release it when complete.
		]]		
		local source = obs.obs_get_source_by_name( source_name )
		if source ~= nil then
			local settings = obs.obs_source_get_settings( source )
			obs.obs_data_set_string( settings, "text", text )
			if not media['caution_activated'] and not media['warning_activated'] then
				obs.obs_data_set_int( settings, "color", media['normal_color'] )
			end		
			media_activate( settings, 'caution' )
			media_activate( settings, 'warning' )
		end
			obs.obs_source_update( source, settings )
			obs.obs_data_release( settings )
			obs.obs_source_release( source )
	end
	stop_media( 'caution' )
	stop_media( 'warning' )
	last_text = text
	if cur_seconds <= 0.01 and timer_type ~= 1 then
	activate( false, true )
	--[[
	Timer Ended
	]]--
	if trigger_text ~= 1 then 
		set_visible( media["caution_note_source"], false )
		set_visible( media["warning_note_source"], false )  
	end		
	timer_ended( source_name )
	end	
end
--[[
----------------------------------------------------------
	Function to set the split time text
----------------------------------------------------------
]]
function set_split_text( source_name )
	if source_name == 'Selecione' then
		return
	end	
	if reset_activated then 
		reset_activated = false
		fresh_start( true ) 
	end	
	local text = split_data
	if text ~= last_split_data then
	set_text( source_name, text )
	end
	last_split_data = text
end
--[[
----------------------------------------------------------
	Function to set the source text
----------------------------------------------------------
]]
function set_text( source_name, text )
	if source_name == 'Selecione' or  source_name == 'selecione'then
		return
	end	
	--[[
		Increments the source reference counter, 
		use obs_source_release() to release it when complete.
	]]
	local source = obs.obs_get_source_by_name( source_name )
	if source ~= nil then
		local settings = obs.obs_source_get_settings( source )
		obs.obs_data_set_string( settings, "text", text )	
	end
		obs.obs_source_update( source, settings )
		obs.obs_data_release( settings )
		obs.obs_source_release( source )
end
--[[
----------------------------------------------------------
	
----------------------------------------------------------
]]
function set_text_note_color( ref )
	if media[ref .. "_note_source"] == 'Selecione' then return end
	local source = obs.obs_get_source_by_name( media[ref .. "_note_source"] )
	if source ~= nil then
		local settings = obs.obs_source_get_settings( source )
			obs.obs_data_set_string( settings, "text", media[ref..'_note'] )
			obs.obs_data_set_int( settings, "color", media[ref..'_color'] )
	end
	obs.obs_source_update( source, settings )
	obs.obs_data_release( settings )
	obs.obs_source_release( source )
end	
--[[
----------------------------------------------------------
	
----------------------------------------------------------
]]
function media_activate( settings, ref )
	if TimeFormat( cur_seconds, true ) == media[ref..'_text'] then
		if trigger_text ~= 1 and ref == 'caution' then 
			set_visible( media[ref .. "_note_source"], true ) 
			set_visible( media["warning_note_source"], false )
			set_text_note_color( ref ) 
		end		
		if trigger_text ~= 1 and ref == 'warning' then 
			set_visible( media[ref .. "_note_source"], true ) 
			set_visible( media["caution_note_source"], false ) 
			set_text_note_color( ref ) 
		end			
		obs.obs_data_set_int( settings, "color", media[ref..'_color'] )
		media['cur_seconds_'..ref] = cur_seconds
		media[ref..'_activated'] = true
		start_media( media['source_name_audio_'..ref], ref )
		if ref == 'caution' then record( 2 ) end 
		if ref == 'warning' then record( 3 ) end 
	end		
	return settings
end
--[[
----------------------------------------------------------
	
----------------------------------------------------------
]]
function start_media( source_name, ref )
start_media_action( source_name, ref )
end
--[[
----------------------------------------------------------
	Set source visble = true
----------------------------------------------------------
]]
function start_media_action( source_name, ref )
	if source_name == nil or source_name  == "Nenhum" then
		return
	end		
	if media[ref..'_activated'] then set_visible( source_name, true ) end
end
--[[
----------------------------------------------------------
	Stop Media is designed to reset the Source to the
	starting state. In other words, make the source
	invisible again. This sould only happen if the media
	ended, or if it is looped, end the media after a
	defined time.
----------------------------------------------------------
]]
function stop_media( ref, bypass )
	if bypass then -- No checks, just stop it
		set_visible( media['source_name_audio_'..ref], false )
	else -- do some checks
		stop_media_action( ref )	
	end	
end
--[[
----------------------------------------------------------
	Check if the source state changed, 
	if so, set source visble = false
----------------------------------------------------------
]]
function stop_media_action( ref )
	local source_name = media['source_name_audio_'..ref]
	if source_name == nil or source_name  == "Nenhum" then
		return
	end	
	--[[
		Increments the source reference counter, 
		use obs_source_release() to release it when complete.
		
		we got a source name, let's see if it exist...
	]]
    local source = obs.obs_get_source_by_name( source_name )	
    if source ~= nil then -- source is valid
        local state = obs.obs_source_media_get_state( source ) -- get the current state for the source
		if media['last_state_'..ref] ~= state then -- The state has changed
			if get_source_looping( source_name ) then
				--log( 'is looped', source_name )
				if state == obs.OBS_MEDIA_STATE_PLAYING  then
					-- The source is looping, it will never stop
					if source_name == media['source_name_audio_'..ref] then
						local time_remaining = math.floor( media['cur_seconds_'..ref] ) + math.floor( media[ref..'_duration'] ) - math.floor( cur_seconds )
						local time_end = ( time_remaining <= 0 )
						if time_end then
							media['last_state_'..ref] = state
							set_visible( source_name, false )
						end 	
					end
				end
			else
				--log( 'not looped', source_name )
				media['last_state_'..ref] = state
				if state == obs.OBS_MEDIA_STATE_STOPPED or state == obs.OBS_MEDIA_STATE_ENDED then
					set_visible( source_name, false )
				end
			end	
		end	 
    end
    obs.obs_source_release( source )
end
--[[
----------------------------------------------------------
	
----------------------------------------------------------
]]
function get_source_looping( source_name )
	local property = "looping"
	--[[
		Increments the source reference counter, 
		use obs_source_release() to release it when complete.
		
		we got a source name, let's see if it exist...
	]]	
	local source = obs.obs_get_source_by_name( source_name )	
	local enabled = false 
    if source ~= nil then
		local source_id = obs.obs_source_get_unversioned_id( source )
			if source_id == "ffmpeg_source" then
				local s = obs.obs_source_get_settings( source )
				--local prop = obs.obs_data_get_string( s, property )
				enabled = obs.obs_data_get_bool( s, property )
				obs.obs_data_release( s )
			end


	end
    obs.obs_source_release( source )
	return enabled
end	
--[[
----------------------------------------------------------
	set source visibility
----------------------------------------------------------
]]
function set_visible( target_name, visible )
	if in_table( {'','nenhum', 'selecione'}, target_name ) then return end
	local scenes = obs.obs_frontend_get_scenes()
	if scenes ~= nil then
		for i, scn in ipairs( scenes ) do	
			local scene = obs.obs_scene_from_source( scn )
			local sceneitem = obs.obs_scene_find_source_recursive( scene, target_name )
			if sceneitem ~= nil then
				obs.obs_sceneitem_set_visible( sceneitem, visible )
				break	
			end	
		end --end for
		obs.bfree( scn )
		obs.source_list_release( scenes )		
	end
end
--[[
----------------------------------------------------------
	check source visibility
----------------------------------------------------------
]]
function is_visible( target_name )
	local isvisible = false
	local scenes = obs.obs_frontend_get_scenes()
	if scenes ~= nil then
		for i, scn in ipairs( scenes ) do	
			local scene = obs.obs_scene_from_source( scn )
			local sceneitem = obs.obs_scene_find_source_recursive( scene, target_name )
			if sceneitem ~= nil then
				isvisible = obs.obs_sceneitem_visible( sceneitem )
				break	
			end	
		end --end for
		obs.bfree( scn )
		obs.source_list_release( scenes )		
	end
	
	return isvisible
end
--[[
----------------------------------------------------------
----------------------------------------------------------
]]
function delayed_recording()
	obs.timer_add( recording_callback, 100 ) --<- milliseconds 
end	
--[[
----------------------------------------------------------
----------------------------------------------------------
]]
function recording_callback()
	obs.timer_remove( recording_callback )
	record( 1 )
end
--[[
----------------------------------------------------------
	Add timer here so we have a global setting
----------------------------------------------------------
]]
function start_timer()
	record( 5, 100 ) -- wait 100 miliseconds
	timer_active = true
	fresh_start( false )
	obs.timer_add( timer_callback, timer_cycle ) --<- milliseconds 
end		
--[[
----------------------------------------------------------
	Add timer here so we have a global setting
----------------------------------------------------------
]]
function timer_callback()
	time_frequency = get_frequency( ns_last )
	calculate()
	completed_cycles = completed_cycles + 1
	set_time_text( timer_source )
	--log( 'Applied frequency', time_frequency ) 
end
--[[
----------------------------------------------------------
----------------------------------------------------------
]]
function calculate()
	if timer_type ~= 2 then
		cur_seconds = cur_seconds + time_frequency
	else
		cur_seconds = cur_seconds - time_frequency
	end
end	
--[[
----------------------------------------------------------
	Called if the counter is starting fresh
----------------------------------------------------------
]]
function fresh_start( reset_curent )

	if timer_type == 2 and countdown_type == 1 then
		cur_seconds = delta_time( timer_year, timer_month, timer_day, timer_hours, timer_minutes, timer_seconds)
		def_seconds = cur_seconds
	end
	
	if reset_curent ~= nil then
		if reset_curent then
			cur_seconds = def_seconds
			completed_cycles = 0
			split = 0
			split_itm = {}
			split_data = nil
			media['caution_activated'] = false
			media['warning_activated'] = false
		end
	end
	orig_time = obs.os_gettime_ns()
	set_visible( media["caution_note_source"], false )
	set_visible( media["warning_note_source"], false ) 
end	
--[[
----------------------------------------------------------
----------------------------------------------------------
]]	
function timer_caution_media_end_callback()
	set_visible( media['source_name_audio_caution'], false )	
	obs.remove_current_callback()
end	
--[[
----------------------------------------------------------
----------------------------------------------------------
]]	
function timer_warning_media_end_callback()
	set_visible( media['source_name_audio_warning'], false )
	obs.remove_current_callback()
end	
--[[
----------------------------------------------------------
----------------------------------------------------------
]]	
function disconnect_after_media_end( ref )
	
	local source_name = media['source_name_audio_'..ref] 
	
	source = obs.obs_get_source_by_name( source_name ) -- Increments the source reference counter, use obs_source_release() to release it when complete.  	--[[
	--[[
		Found Source:
	]]
	if source ~= nil then   
		
		local state = obs.obs_source_media_get_state( source ) -- get the current state for the source
				
			if get_source_looping( source_name ) then -- The source is looping, it will never stop
				
				if ref == "caution" then
					obs.timer_add( timer_caution_media_end_callback, math.floor( media[ref..'_duration'] * 1000 ) ) --<- milliseconds
				end
			
				if ref == "warning" then
					obs.timer_add( timer_warning_media_end_callback, math.floor( media[ref..'_duration'] * 1000 ) ) --<- milliseconds
				end
			 
			else
				--[[
				Create a signal handler for the source
				]]
				local sh = obs.obs_source_get_signal_handler( source )	
				--[[
					https://obsproject.com/docs/reference-sources.html?highlight=media_started
					attach event listener callback [source_signal]: Called when media has ended.
				]]	
				obs.signal_handler_connect( sh, "media_ended", signal_media_ended )		
			end
	end
end
--[[
----------------------------------------------------------
----------------------------------------------------------
]]	
function signal_media_ended( cd )
	--[[
		Get source from CallData
	]]
	local source = obs.calldata_source( cd, "source" )
	--[[
		Found Source:
	]]
	if source ~= nil then 
		local name = obs.obs_source_get_name( source )
		set_visible( name, false )
		obs.remove_current_callback()
	end	
end
--[[
----------------------------------------------------------
----------------------------------------------------------
]]
function activate( activating, timer_expired )
	if disable_script then
		return		
	end	
	activated = activating
	if activating then	
		--obs.obs_frontend_recording_start()
		start_timer()
	else
		if timer_expired then
			obs.timer_remove( timer_callback )
			disconnect_after_media_end( 'caution' )
			disconnect_after_media_end( 'warning' )
		else
			timer_active = false
			obs.timer_remove( timer_callback )
			stop_media( 'caution',true )
			stop_media( 'warning',true )	
		end
	end
end
--[[
----------------------------------------------------------
	Called when a source is activated/deactivated
----------------------------------------------------------
]]
function activate_signal( cd, activating )
	local source = obs.calldata_source( cd, "source" )
	if source ~= nil then
		local name = obs.obs_source_get_name( source )
		if ( name == timer_source ) then
			if activating then record( 4, 300 ) end
			if start_on_visible then
				fresh_start( true )
				activate( activating )
			end
		end
	end
end
--[[
----------------------------------------------------------
----------------------------------------------------------
]]
function source_activated( cd )
   if disable_script then
		return		
	end
	activate_signal( cd, true )
end
--[[
----------------------------------------------------------
----------------------------------------------------------
]]
function source_deactivated( cd )
	activate_signal( cd, false )
end
--[[
----------------------------------------------------------
----------------------------------------------------------
]]
function reset( pressed )
	if not pressed then
		return
	end
	reset_activated = true
	set_time_text( timer_source )
	activate( false )
	set_split_text( split_source )
	
	set_text( active_source, "" )
end
--[[
----------------------------------------------------------
----------------------------------------------------------
]]
function reset_button_clicked( props, p )
	reset( true )
	return false
end
--[[
----------------------------------------------------------
----------------------------------------------------------
]]
function pause_button_clicked( props, p )
	on_pause( true )
	return false
end
--[[
----------------------------------------------------------
----------------------------------------------------------
]]
function on_pause( pressed )
	if not pressed then
		return
	end
	
	set_visible( timer_source, true )
	
	if timer_active then
		timer_active = false
		activate( false )
		split_unpack()
		set_split_text( split_source )
		--log( 'OBS Video Frame Time', obs.obs_get_video_frame_time() )
		--log( completed_cycles..' Cycles', get_time_lapsed() )	
	else
		if activated == false then	
			activate( true )
		end	
	end
end
--[[
----------------------------------------------------------
----------------------------------------------------------
]]
function split_button_clicked( props, p )
	on_split( true )
	return false
end
--[[
----------------------------------------------------------
----------------------------------------------------------
]]
function export_button_clicked( props, p )
	print("export_button_clicked")
	on_export( true )
	return false
end
--[[
----------------------------------------------------------
----------------------------------------------------------
]]
function on_export( pressed )
	if not pressed then
		return
	end
	local file_exported = write_to_json( script_settings )
end
--[[
----------------------------------------------------------
----------------------------------------------------------
]]
function import_button_clicked( props, p, settings )
	return false
end

--[[
----------------------------------------------------------
----------------------------------------------------------
]]
function import_properties( props, property, settings )
	local import_folder = backup_folder
	-- convert Windows path to UNIX path
	import_folder = import_folder .. "/" .. import_list .. ".json"
	import_folder = import_folder:gsub([[\]], "/");
	if obs.os_file_exists( import_folder ) then
		data = obs.obs_data_create_from_json_file( import_folder )
		if data ~= nil then
			obs.obs_data_apply( settings, data )
			obs.obs_data_set_string( settings, "import_list", 'selecione')
			script_settings = settings
		end	
	end
	return true
end
--[[
----------------------------------------------------------
----------------------------------------------------------
]]
function on_split( pressed )
	if not pressed then
		return
	end
	if timer_active then
		split = split + 1
		split_itm[split] = cur_seconds
		split_unpack()
		set_split_text( split_source )
	end
end
--[[
----------------------------------------------------------
	This captures the split times and unpack it in the
	correct format.

	The text source only permits linebreaks ( '\n' ) this 
	limitation affects how the data can be formated  ):
----------------------------------------------------------
]]
function split_unpack()
	local data = nil
	local c = table.getn( split_itm )
	local text = ''
	local title = ''
	local subtitle = ''
	local line = '______________________________'
    for i = 1,c do 
		local mark = split_itm[i]
		local interval = mark
		if i > 1 then
			local j = i - 1 
			interval = split_itm[i] - split_itm[j]
		end
		if split_type == 'Intervalo' then
			title = 'Intervalo'
			--subtitle = ''
			text = tostring( TimeFormat( interval ) )
		elseif split_type == 'Marca' then
			title = 'Marca'
			--subtitle = ''
			text = tostring( TimeFormat( mark ) )
		elseif split_type == 'Marca Intervalo' then
			title = 'Marca                     '
			subtitle = 'Intervalo'
			text = tostring( TimeFormat( mark )..'          '..TimeFormat( interval ) )
		else	--	"Intervalo Marca"
			title = 'Intervalo                  '
			subtitle = 'Marca'
		text = tostring( TimeFormat( interval )..'          '..TimeFormat( mark ) )
		end	
		-- data collection here
		local n = i --formatting the index number
		if i < 10 then n = '0'..tostring( i ) end
		if data ~= nil then 	
			data = data .. '\n' .. n..' )    '..text
		else
			data = '#       '..title..subtitle..'\n'..line..'\n\n'..n..' )    '..text
		end
	end	-- end for
	split_data = data
end
--[[
--------------------------------------------------------------------
--------------------------------------------------------------------
]]
function pairsByKeys( t, f )
	local a = {}
	for n in pairs( t ) do table.insert( a, n ) end
	table.sort( a, f )
	local i = 0      -- iterator variable
	local iter = function ()   -- iterator function
		i = i + 1
		if a[i] == nil then return nil
		else return a[i], t[a[i]]
		end
	end
	return iter
end
--[[
--------------------------------------------------------------------
 custom function: helper
----------------------------------------------------------
]]
function tableHasKey(table,key)
    return table[key] ~= nil
end
--[[
--------------------------------------------------------------------
 custom function: helper
----------------------------------------------------------
]]
function in_table( tbl, value )
	local found = false
	for k, v in pairs( tbl ) do
		if value == v then
			found = true
			break
		end	
	end
	return found
end
--[[
----------------------------------------------------------

----------------------------------------------------------
]]
function is_leap_year( year )
	if year % 4 == 0 then
		if year % 100 == 0 then
			if year % 400 == 0 then
			  return true
			else
			  return false
			end			
		else
		 return true
		end
	else
		return false
	end						
end	
--[[
----------------------------------------------------------
Callback on list modification
----------------------------------------------------------
]]
function property_onchange( props, property, settings )
	local filenames = get_filenames( backup_folder )
	local has_file_list = (table.getn( filenames ) > 0)
	-- Retrieves value selected in list
	backup_folder = obs.obs_data_get_string( settings, "backup_folder" )
	local custom_time_format = obs.obs_data_get_string( settings, "custom_time_format" )
	local timer_trim = obs.obs_data_get_int( settings, "timer_trim" )
	local import_list = obs.obs_data_get_string( settings, "import_list" )
	local backup_m = obs.obs_data_get_bool( settings, "backup_mode" )
	local config = obs.obs_data_get_int( settings, "config" )
	local mode = obs.obs_data_get_int( settings, "timer_type" )
	local rec = obs.obs_data_get_int( settings, "start_recording" )
	local scene = obs.obs_data_get_string( settings, "next_scene" )	
	local t_source = obs.obs_data_get_string( settings, "timer_source" )
	local s_source = obs.obs_data_get_string( settings, "split_source" )
	local a_source = obs.obs_data_get_string( settings, "active_source" )
	local mth = obs.obs_data_get_int( settings, "month" )
	local yr = obs.obs_data_get_int( settings, "year" )
	local d = obs.obs_data_get_int( settings, "day" )
	local c_type = obs.obs_data_get_int( settings, "countdown_type" )
	local t_text = obs.obs_data_get_int( settings, "trigger_text" )
	local cn_source = obs.obs_data_get_string( settings, "caution_note_source" )
	local wn_source = obs.obs_data_get_string( settings, "warning_note_source" )
	-- Retrieves property reference
	local import_list_prop = obs.obs_properties_get( props, "import_list" )
	local custom_time_format_prop = obs.obs_properties_get( props, "custom_time_format" )
	local t_text_prop = obs.obs_properties_get( props, "trigger_text" )
	local cn_source_prop = obs.obs_properties_get( props, "caution_note_source" )
	local wn_source_prop = obs.obs_properties_get( props, "warning_note_source" )
	local c_note_prop = obs.obs_properties_get( props, "caution_note" )
	local w_note_prop = obs.obs_properties_get( props, "warning_note" )
	local stop_text_prop = obs.obs_properties_get( props, "stop_text" )
	local text_prefix_prop = obs.obs_properties_get( props, "text_prefix" )
	local text_suffix_prop = obs.obs_properties_get( props, "text_suffix" )
	local recording_type_prop = obs.obs_properties_get( props, "recording_type" )
	local cycle_list_prop = obs.obs_properties_get( props, "cycle_list" )
	local active_source_prop = obs.obs_properties_get( props, "active_source" )
	local day_text_prop = obs.obs_properties_get( props, "day_text" )
	local days_text_prop = obs.obs_properties_get( props, "days_text" )
	local month_prop = obs.obs_properties_get( props, "month" )
	local day_prop = obs.obs_properties_get( props, "day" )
	local year_prop = obs.obs_properties_get( props, "year" )
	local countdown_type_prop = obs.obs_properties_get( props, "countdown_type" )
	local pause_button_prop = obs.obs_properties_get( props, "pause_button" )
	local reset_button_prop = obs.obs_properties_get( props, "reset_button" )
	local start_recording_prop = obs.obs_properties_get( props, "start_recording" )
	local next_scene_prop = obs.obs_properties_get( props, "next_scene" )
	local hours_prop = obs.obs_properties_get( props, "hours" )
	local minutes_prop = obs.obs_properties_get( props, "minutes" )
	local seconds_prop = obs.obs_properties_get( props, "seconds" )
	local split_button_prop = obs.obs_properties_get( props, "split_button" )
	local split_type_prop = obs.obs_properties_get( props, "split_type" )
	local split_source_prop = obs.obs_properties_get( props, "split_source" )
	local timer_trim_prop = obs.obs_properties_get( props, "timer_trim" )
	local audio_caution_prop = obs.obs_properties_get( props, "audio_caution" )
	local audio_warning_prop = obs.obs_properties_get( props, "audio_warning" )
	local caution_duration_prop = obs.obs_properties_get( props, "caution_duration" )
	local warning_duration_prop = obs.obs_properties_get( props, "warning_duration" )
	local normal_color_prop = obs.obs_properties_get( props, "normal_color" )
	local caution_color_prop = obs.obs_properties_get( props, "caution_color" )
	local warning_color_prop = obs.obs_properties_get( props, "warning_color" )
	local caution_text_prop = obs.obs_properties_get( props, "caution_text" )
	local warning_text_prop = obs.obs_properties_get( props, "warning_text" )
	local start_on_visible_prop = obs.obs_properties_get( props, "start_on_visible" )
	local disable_script_prop = obs.obs_properties_get( props, "disable_script" )
	local export_button_prop = obs.obs_properties_get( props, "export_button" )
	local import_button_prop = obs.obs_properties_get( props, "import_button" )
	local export_folder_prop = obs.obs_properties_get( props, "backup_folder" )
	if timer_trim ~= 5 then
		obs.obs_property_set_visible( custom_time_format_prop, false )
	else
		obs.obs_property_set_visible( custom_time_format_prop, true )
	end	
	if backup_m then 
		obs.obs_property_set_visible( import_list_prop, true )
		obs.obs_property_set_visible( export_button_prop, true )
		obs.obs_property_set_visible( import_button_prop, true )
		obs.obs_property_set_visible( export_folder_prop, true )
	else
		obs.obs_property_set_visible( import_list_prop, false )
		obs.obs_property_set_visible( export_button_prop, false )
		obs.obs_property_set_visible( import_button_prop, false )
		obs.obs_property_set_visible( export_folder_prop, false )
	end	
	if import_list ~= "selecione" then
		obs.obs_property_set_visible( import_button_prop, true )
	else
		obs.obs_property_set_visible( import_button_prop, false )
	end
	if ( in_table( {t_source, s_source, a_source, wn_source}, cn_source ) ) then
		obs.obs_data_set_string(settings, "caution_note_source", 'selecione') -- Don't allow timer and caution note text source to be the same
	end 
	if ( in_table( {t_source, s_source, a_source, cn_source}, wn_source ) ) then
		obs.obs_data_set_string(settings, "warning_note_source", 'selecione') -- Don't allow timer and warning note text source to be the same
	end 	
	if ( in_table( {t_source, s_source, cn_source, wn_source}, a_source ) ) then
		obs.obs_data_set_string(settings, "active_source", 'selecione') -- Don't allow timer and active text source to be the same
	end
	obs.obs_property_set_visible( t_text_prop, ( config == 2 ))
	obs.obs_property_set_visible( cn_source_prop, ( config == 2 and ( t_text ~= 1 ) ))
	obs.obs_property_set_visible( wn_source_prop, ( config == 2 and ( t_text ~= 1 ) ))
	obs.obs_property_set_visible( c_note_prop, ( config == 2 and ( t_text ~= 1 ) ))
	obs.obs_property_set_visible( w_note_prop, ( config == 2 and ( t_text ~= 1 ) ))
	obs.obs_property_set_visible( stop_text_prop, false )
	obs.obs_property_set_visible( text_prefix_prop, false )
	obs.obs_property_set_visible( text_suffix_prop, false )
	obs.obs_property_set_visible( recording_type_prop, false )
	obs.obs_property_set_visible( cycle_list_prop, ( (scene == 'Lista de Fontes' or scene == 'Lista de Cenas') and config == 2 ) )
	obs.obs_property_set_visible( active_source_prop, ( (scene == 'Lista de Fontes' or scene == 'Lista de Cenas') and config == 2 ) )
	obs.obs_property_set_visible( day_text_prop, ( c_type == 1 and config == 2 and mode == 2 and timer_trim ~= 5 ) )
	obs.obs_property_set_visible( days_text_prop, ( c_type == 1 and config == 2 and mode == 2 and timer_trim ~= 5 ) )
	obs.obs_property_set_visible( month_prop, ( c_type == 1 and config == 2 and mode == 2 ) )
	obs.obs_property_set_visible( day_prop, ( c_type == 1 and config == 2 and mode == 2 ) )
	obs.obs_property_set_visible( year_prop, ( c_type == 1 and config == 2 and mode == 2 ) )
	if mth ~= 1 then
	obs.obs_property_set_enabled( day_prop, true )
	obs.obs_property_set_enabled( year_prop, true )
	else
	obs.obs_property_set_enabled( day_prop, false )
	obs.obs_property_set_enabled( year_prop, false )
	end
	if c_type == 1 and mth ~= 1 and d == 0 then
		obs.obs_data_set_int( settings, "day", 1 ) -- set to at least 1, else the timer won't know it is at zero
	end	
	obs.obs_property_int_set_limits( day_prop, 1, 31, 1 )
	if ( mth == 5 or mth == 7 or mth == 10 or mth == 12 ) then
		obs.obs_property_int_set_limits( day_prop, 1, 30, 1 )
	elseif ( mth == 3 ) then
		local leap = 28
		if is_leap_year(yr) then
			 leap = 29
		else
			 leap = 28
		end	
		obs.obs_property_int_set_limits( day_prop, 1, leap, 1 )
	end
	obs.obs_property_set_visible( countdown_type_prop, false )
	obs.obs_property_set_visible( countdown_type_prop, (config == 2 and mode == 2 ) )
	if scene == 'TEXTO DE FIM DO TEMPORIZADOR' and  mode == 2 then
		obs.obs_property_set_visible( stop_text_prop, true )
	end	
	-- Preset parameters
	if rec == 1 and mode == 2 then
	obs.obs_property_set_visible( recording_type_prop, config == 2 )
	end
	obs.obs_property_set_visible( text_prefix_prop, config == 2 )
	obs.obs_property_set_visible( text_suffix_prop, config == 2 )
	if mode == 2 then		
	obs.obs_property_set_visible( start_recording_prop, config == 2 )
	obs.obs_property_set_visible( next_scene_prop, config == 2 )
	obs.obs_property_set_visible( hours_prop, (config == 2 ) )
	obs.obs_property_set_visible( minutes_prop, (config == 2 ) )
	obs.obs_property_set_visible( seconds_prop, (config == 2 ) )
	obs.obs_property_set_description( pause_button_prop, "Iniciar/Pausar Contagem Regressiva" )
	obs.obs_property_set_description( reset_button_prop, "Reiniciar Contagem Regressiva" )
	else	
	obs.obs_property_set_visible( start_recording_prop, false )
	obs.obs_property_set_visible( next_scene_prop, false )
	obs.obs_property_set_visible( hours_prop, false )
	obs.obs_property_set_visible( minutes_prop, false )
	obs.obs_property_set_visible( seconds_prop, false )
	obs.obs_property_set_description( pause_button_prop, "Iniciar/Pausar Cronômetro" )
	obs.obs_property_set_description( reset_button_prop, "Reiniciar Cronômetro" )	
	end	
	obs.obs_property_set_visible( split_button_prop, mode==1 )
  	obs.obs_property_set_visible( split_type_prop, false )
	obs.obs_property_set_visible( split_source_prop, false )
	obs.obs_property_set_visible( timer_trim_prop, config==2 )
	obs.obs_property_set_visible( audio_caution_prop, config==2 )
	obs.obs_property_set_visible( audio_warning_prop, config==2 )
	obs.obs_property_set_visible( caution_duration_prop, config==2 )
	obs.obs_property_set_visible( warning_duration_prop, config==2 )

	obs.obs_property_set_visible( normal_color_prop, config==2 )
	obs.obs_property_set_visible( caution_color_prop, config==2 )
	obs.obs_property_set_visible( warning_color_prop, config==2 )
	obs.obs_property_set_visible( caution_text_prop, config==2 )
	obs.obs_property_set_visible( warning_text_prop, config==2 )
	obs.obs_property_set_visible( start_on_visible_prop, config==2 )
	obs.obs_property_set_visible( disable_script_prop, config==2 )
	if mode == 1 then
  		obs.obs_property_set_visible( split_type_prop, config == 2 )
		obs.obs_property_set_visible( split_source_prop, config == 2 )	
	end	
	if obs.os_file_exists( backup_folder ) then	
		obs.obs_property_list_clear( import_list_prop )
		obs.obs_property_list_add_string( import_list_prop, 'Selecione', 'selecione' )
		if has_file_list then
			for i,v in pairs( filenames ) do 
				obs.obs_property_list_add_string( import_list_prop, v, v ) 
			end
		end
	
	end
  -- IMPORTANT: returns true to trigger refresh of the properties
  return true
end
--[[
----------------------------------------------------------
	A function named script_properties defines the properties that the user
	can change for the entire script module itself
----------------------------------------------------------
]]
function script_properties()
	props = obs.obs_properties_create()	
  	local p_1 = obs.obs_properties_add_list( props, "timer_type", "<b>Tipo de Temporizador</b>", obs.OBS_COMBO_TYPE_LIST, obs.OBS_COMBO_FORMAT_INT )
  	t_type = {"Cronômetro", "Contagem Regressiva"}
  	for i,v in ipairs( t_type ) do obs.obs_property_list_add_int( p_1, v, i ) end
  	local p_2 = obs.obs_properties_add_list( props, "config", "<font color=".. font_dimmed ..">Configuração</font>", obs.OBS_COMBO_TYPE_LIST, obs.OBS_COMBO_FORMAT_INT )
  	t_type = {"Básico", "Avançado"}
  	for i,v in ipairs( t_type ) do obs.obs_property_list_add_int( p_2, v, i ) end
	--[[
		Returns an array of reference-incremented sources. 
		Release with source_list_release().
	]]	
	local sources = obs.obs_enum_sources()
	local p_3 = obs.obs_properties_add_list( props, "timer_source", "<i>Fonte do Temporizador</i>", obs.OBS_COMBO_TYPE_LIST, obs.OBS_COMBO_FORMAT_STRING )
	obs.obs_property_list_add_string( p_3, "Selecione", "selecione" )
	local list = {}
	if sources ~= nil then
		for _, source in ipairs( sources ) do
			source_id = obs.obs_source_get_unversioned_id( source )
			if source_id == "text_gdiplus" or source_id == "text_ft2_source" then
				local name = obs.obs_source_get_name( source )
				if not in_table( {split_source, active_source, media["caution_note_source"], media["warning_note_source"]}, name ) then
					--[[
						add it to list so that it can be reordered
					]]		
					list[name] = name
				else
					--continue 
				end
			end
		end
			obs.bfree(source)
		
		for key, value in pairsByKeys( list ) do
			--[[
				add item to property list
			]]	
			obs.obs_property_list_add_string( p_3, value, value )
		end
	end
	local p_4 = obs.obs_properties_add_list( props, "countdown_type", "<font color=".. font_dimmed ..">Tipo de Contagem Regressiva</font>", obs.OBS_COMBO_TYPE_LIST, obs.OBS_COMBO_FORMAT_INT )
  	t_type = {"Data e Hora Específicas", "Horas, Minutos, Segundos"}
  	for i,v in ipairs( t_type ) do obs.obs_property_list_add_int( p_4, v, i ) end
	local p_5 = obs.obs_properties_add_text( props, "day_text", "<font color=".. font_dimmed ..">Day Text Format</font>", obs.OBS_TEXT_DEFAULT )
	obs.obs_property_set_long_description( p_5, "\nUsed to distinguish between singular and plural days format. Use this for singular.\n" )	
	local p_6 = obs.obs_properties_add_text( props, "days_text", "<font color=".. font_dimmed ..">Days Text Format</font>", obs.OBS_TEXT_DEFAULT )
	obs.obs_property_set_long_description( p_6, "\nUsed to distinguish between singular and plural days format. Use this for plural.\n" )
  	local p_7 = obs.obs_properties_add_list( props, "month", "<font color=".. font_dimmed ..">Month</font>", obs.OBS_COMBO_TYPE_LIST, obs.OBS_COMBO_FORMAT_INT )
  	t_type = {"Selecione", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"}
  	for i,v in ipairs( t_type ) do obs.obs_property_list_add_int( p_7, v, i ) end
  	local p_8 = obs.obs_properties_add_int( props, "year", "<font color=".. font_dimmed ..">Anos</font>", 2022, 212021221, 1 )
  	local p_9 = obs.obs_properties_add_int( props, "day", "<font color=".. font_dimmed ..">Dias</font>", 1, 31, 1 )
	local p_10 = obs.obs_properties_add_int( props, "hours", "<font color=".. font_dimmed ..">Horas</font>", 0, 23, 1 )
	obs.obs_property_int_set_suffix( p_10, " Horas" )
	local p_11 = obs.obs_properties_add_int( props, "minutes", "<font color=".. font_dimmed ..">Minutos</font>", 0, 59, 1 )
	obs.obs_property_int_set_suffix( p_11, " Minutos" );
	local p_12 = obs.obs_properties_add_int( props, "seconds", "<font color=".. font_dimmed ..">Segundos</font>", 0, 59, 1 )
	obs.obs_property_int_set_suffix( p_12, " Segundos" );
	local p_13 = obs.obs_properties_add_list( props, "timer_trim", "Formato do Temporizador", obs.OBS_COMBO_TYPE_LIST, obs.OBS_COMBO_FORMAT_INT )
	t_type = {"Exibir formato completo", "Remover zeros à esquerda", "Sem zeros à esquerda, sem divisão de segundos", "Sem divisão de segundos", "Formato de hora personalizado"}
	for i,v in ipairs( t_type ) do obs.obs_property_list_add_int( p_13, v, i ) end
	local p_37 = obs.obs_properties_add_text( props, "custom_time_format", "<font color=".. font_dimmed ..">Formato de Tempo</font>", obs.OBS_TEXT_DEFAULT )
	obs.obs_property_set_long_description( p_37, "\n A data e hora é representada por $D = dia, $H = hora, $M = minuto, $S = segundo, $F = fração de segundo.\n\n Para cortar zeros à esquerda, inclua $T = truncar zeros à esquerda. Isso afetará APENAS um formato correspondente a '$D:$H:$M:$S,$F' (00:00:00:00,00)\n" )	
	local p_14 = obs.obs_properties_add_list( props, "split_source", "<i>Fonte Dividida</i>", obs.OBS_COMBO_TYPE_LIST, obs.OBS_COMBO_FORMAT_STRING )
	obs.obs_property_list_add_string( p_14, "Selecione", "selecione" )
	list = {}
	if sources ~= nil then
		for _, source in ipairs( sources ) do
			source_id = obs.obs_source_get_unversioned_id( source )
			if source_id == "text_gdiplus" or source_id == "text_ft2_source" then
				local name = obs.obs_source_get_name( source )
			
				if not in_table( {timer_source, active_source, media["caution_note_source"], media["warning_note_source"]}, name ) then
					--[[
						add it to list so that it can be reordered
					]]		
					list[name] = name
				else
					--continue 
				end
			end
		end
			obs.bfree(source)
		
		for key, value in pairsByKeys(list) do
			--[[
				add item to property list
			]]	
			obs.obs_property_list_add_string( p_14, value, value )
		end
	end	
  	local p_15 = obs.obs_properties_add_list( props, "split_type", "Tipo de divisão", obs.OBS_COMBO_TYPE_LIST, obs.OBS_COMBO_FORMAT_INT )
  	t_type = {"Intervalo", "Marca", "Marca Intervalo", "Intervalo Marca"}
  	for i,v in ipairs( t_type ) do obs.obs_property_list_add_int( p_15, v, i ) end
	obs.obs_property_set_long_description( p_15, "\nIntervalo = Tempo entre a divisão atual e a anterior.\n\nMarca = Hora da divisão\n" )
	local p_16 = obs.obs_properties_add_list( props, "audio_caution", "<font color=".. font_dimmed ..">Áudio de Alerta</font>", obs.OBS_COMBO_TYPE_LIST, obs.OBS_COMBO_FORMAT_STRING )
	obs.obs_property_list_add_string( p_16, "Nenhum", "nenhum" )
	if sources ~= nil then
		for _, source in ipairs( sources ) do
			source_id = obs.obs_source_get_unversioned_id( source )
			if source_id == "ffmpeg_source" then
				local name = obs.obs_source_get_name( source )
				obs.obs_property_list_add_string( p_16, name, name )
			end
		end
			obs.bfree(source)
	end	
	local p_17 = obs.obs_properties_add_list( props, "audio_warning", "<font color=".. font_dimmed ..">Aviso Sonoro</font>", obs.OBS_COMBO_TYPE_LIST, obs.OBS_COMBO_FORMAT_STRING )
	obs.obs_property_list_add_string( p_17, "Nenhum", "nenhum" )
	if sources ~= nil then
		for _, source in ipairs( sources ) do
			source_id = obs.obs_source_get_unversioned_id( source )
			if source_id == "ffmpeg_source" then
				local name = obs.obs_source_get_name( source )
				obs.obs_property_list_add_string( p_17, name, name )
			end
		end
			obs.bfree(source)
	end		
	obs.obs_properties_add_color( props, "normal_color", "Cor Normal" )
	obs.obs_properties_add_color( props, "caution_color", "Cor de Alerta" )
	obs.obs_properties_add_color( props, "warning_color", "Cor de Aviso" )
	local p_18 = obs.obs_properties_add_text( props, "caution_text", "<font color=".. font_dimmed ..">Tempo de Alerta</font>", obs.OBS_TEXT_DEFAULT )
	obs.obs_property_set_long_description( p_18, "\nUse o formato 00:00:00 (horas:minutos:segundos)\n" )
	local p_i = obs.obs_properties_add_text( props, "warning_text", "<font color=".. font_dimmed ..">Tempo de Aviso</font>", obs.OBS_TEXT_DEFAULT )
	obs.obs_property_set_long_description( p_i, "\nUse o formato 00:00:00 (horas:minutos:segundos)\n" )
	local p_19 = obs.obs_properties_add_list( props, "trigger_text", "<i>Texto do Acionador</i>", obs.OBS_COMBO_TYPE_LIST, obs.OBS_COMBO_FORMAT_INT )
	 t_type = {"Disabilitado", "Habilitado"}
  	for i,v in ipairs( t_type ) do obs.obs_property_list_add_int( p_19, v, i ) end
	obs.obs_property_set_long_description( p_19, "\nExibir uma nota quando os estados de aviso e alerta for adicionado ao temporizador.\n" )
	local p_20 = obs.obs_properties_add_list( props, "caution_note_source", "<i>Fonte da Nota de Alerta</i>", obs.OBS_COMBO_TYPE_LIST, obs.OBS_COMBO_FORMAT_STRING )
	obs.obs_property_list_add_string( p_20, "Selecione", "selecione" )
	list = {}
	if sources ~= nil then
		for _, source in ipairs( sources ) do
			source_id = obs.obs_source_get_unversioned_id( source )
			if source_id == "text_gdiplus" or source_id == "text_ft2_source" then
				local name = obs.obs_source_get_name( source )
				if not in_table( {timer_source, split_source, active_source, media["warning_note_source"]}, name ) then
					--[[
						add it to list so that it can be reordered
					]]		
					list[name] = name
				else
					--continue 
				end
			end
		end
			obs.bfree(source)
		
		for key, value in pairsByKeys( list ) do
			--[[
				add item to property list
			]]	
			obs.obs_property_list_add_string( p_20, value, value )
		end
	end
	local p_21 = obs.obs_properties_add_list( props, "warning_note_source", "<i>Fonte da Nota de Aviso</i>", obs.OBS_COMBO_TYPE_LIST, obs.OBS_COMBO_FORMAT_STRING )
	obs.obs_property_list_add_string( p_21, "Selecione", "selecione" )
	list = {}
	if sources ~= nil then
		for _, source in ipairs( sources ) do
			source_id = obs.obs_source_get_unversioned_id( source )
			if source_id == "text_gdiplus" or source_id == "text_ft2_source" then
				local name = obs.obs_source_get_name( source )
				if not in_table( {timer_source, split_source, active_source, media["caution_note_source"]}, name ) then
					--[[
						add it to list so that it can be reordered
					]]		
					list[name] = name
				else
					--continue 
				end
			end
		end
			obs.bfree( source )
		for key, value in pairsByKeys( list ) do
			--[[
				add item to property list
			]]	
			obs.obs_property_list_add_string( p_21, value, value )
		end
	end	
	local p_22 = obs.obs_properties_add_text( props, "caution_note", "<font color=".. font_dimmed ..">Nota de Alerta</font>", obs.OBS_TEXT_DEFAULT )
	obs.obs_property_set_long_description( p_22, "\nExibe uma nota quando o aviso for acionado.\n" )
	local p_23 = obs.obs_properties_add_text( props, "warning_note", "<font color=".. font_dimmed ..">Nota de Aviso</font>", obs.OBS_TEXT_DEFAULT )
	obs.obs_property_set_long_description( p_23, "\nExibe uma nota quando o aviso for acionado.\n" )
	--*props, *name, *description, min, max, step
	obs.obs_properties_add_int_slider( props, "caution_duration", "Duração do Alerta", 1, 100, 1 )
	obs.obs_properties_add_int_slider( props, "warning_duration", "Duração do Aviso", 1, 100, 1 )
	local p_24 = obs.obs_properties_add_list( props, "start_recording", "Gravação Automática", obs.OBS_COMBO_TYPE_LIST, obs.OBS_COMBO_FORMAT_INT )
	t_type = {"Sim", "Não"}
	for i,v in ipairs( t_type ) do obs.obs_property_list_add_int( p_24, v, i ) end
	-- Combo list filled with the options from _type
  	local p_25 = obs.obs_properties_add_list( props, "recording_type", "Gravação", obs.OBS_COMBO_TYPE_LIST, obs.OBS_COMBO_FORMAT_INT )
  	t_type = {"Timer Expires", "Caution Time", "Warning Time", "Timer Visible", "Timer Start"}
  	for i,v in ipairs( t_type ) do obs.obs_property_list_add_int( p_25, v, i ) end
	local p_26 = obs.obs_properties_add_list( props, "next_scene", "<i>Próxima Cena</i>", obs.OBS_COMBO_TYPE_LIST, obs.OBS_COMBO_FORMAT_STRING )
	t_type = {"Selecione", "TEXTO DE FIM DO TEMPORIZADOR", "Lista de Fontes", "Lista de Cenas"}
	for i,v in ipairs( t_type ) do obs.obs_property_list_add_string( p_26, v, v ) end
	local scene_source = obs.obs_frontend_get_current_scene()
	local name = obs.obs_source_get_name( scene_source )
	local scenes = obs.obs_frontend_get_scene_names()
	if scenes ~= nil then
		for i, scene in ipairs( scenes ) do
			if name ~= scene then
				obs.obs_property_list_add_string( p_26, scene, scene )
			end
		end
		obs.bfree( scene )
	end
    obs.obs_source_release( scene_source )
	local p_27 = obs.obs_properties_add_text( props, "text_prefix", "<font color=#fefceb>Prefixo do Temporizador</font>", obs.OBS_TEXT_DEFAULT )
	obs.obs_property_set_long_description( p_27, "\nDefinir o texto colocado antes do Temporizador\n" )
	local p_28 = obs.obs_properties_add_text( props, "text_suffix", "<font color=#fefceb>Sufixo do Temporizador</font>", obs.OBS_TEXT_DEFAULT )
	obs.obs_property_set_long_description( p_28, "\nDefinir o texto colocado após o Temporizador\n" )
	local p_29 = obs.obs_properties_add_text( props, "stop_text", "<font color=#fef1eb>Texto de Fim do Temporizador</font>", obs.OBS_TEXT_DEFAULT )
	obs.obs_property_set_long_description( p_29, "\nDefinir o texto exibido quando o Temporizador terminar\n" )
   	local p_30 = obs.obs_properties_add_list( props, "active_source", "<i>Fonte Ativa</i>", obs.OBS_COMBO_TYPE_LIST, obs.OBS_COMBO_FORMAT_STRING )
	obs.obs_property_set_long_description( p_30, "\nSelecione uma fonte de texto, que será usada para mostrar o nome da fonte ou cena ativa atual\n" )
	obs.obs_property_list_add_string( p_30, "Selecione", "selecione" )
	list = {}
	if sources ~= nil then
		for _, source in ipairs( sources ) do
			source_id = obs.obs_source_get_unversioned_id( source )
			if source_id == "text_gdiplus" or source_id == "text_ft2_source" then
				local name = obs.obs_source_get_name( source )
				if name ~= timer_source then
					--[[
						add it to list so that it can be reordered
					]]		
					list[name] = name
				else
					--continue 
				end
			end
		end
			obs.bfree(source)
		for key, value in pairsByKeys( list ) do
			--[[
				add item to property list
			]]	
			obs.obs_property_list_add_string( p_30, value, value )
		end
	end
	local p_31 = obs.obs_properties_add_editable_list(props, "cycle_list", "Cycle List",obs.OBS_EDITABLE_LIST_TYPE_STRINGS,nil,nil)
	obs.obs_properties_add_button( props, "reset_button", "Reiniciar cronômetro", reset_button_clicked )
	obs.obs_properties_add_button( props, "pause_button", "Iniciar/Pausar Cronômetro", pause_button_clicked )	
	obs.obs_properties_add_button( props, "split_button", "Tempo Parcial", split_button_clicked )
    obs.obs_properties_add_bool( props, "start_on_visible", "Iniciar temporizador na fonte visível" )
    obs.obs_properties_add_bool( props, "disable_script", "Desativar script" )
	
	local p_32 = obs.obs_properties_add_bool( props, "backup_mode", "Modo de backup" )
	local p_33 = obs.obs_properties_add_path( props, "backup_folder", "Backup Folder", obs.OBS_PATH_DIRECTORY, nil, nil)
	local p_34 = obs.obs_properties_add_list( props, "import_list", "<i>Load Settings</i>", obs.OBS_COMBO_TYPE_LIST, obs.OBS_COMBO_FORMAT_STRING )
	obs.obs_property_list_add_string( p_34, 'Selecione ', 'selecione' )
	obs.obs_property_set_long_description( p_34, "\nSelecione o arquivo de configurações a importar.\n" )
	local filenames = get_filenames( path )
	if table.getn( filenames ) > 0 then
  		for i,v in pairs( filenames ) do 
			obs.obs_property_list_add_string( p_34, v, v )
		end
	end
	local p_35 = obs.obs_properties_add_button( props, "export_button", "Configurações de exportação", export_button_clicked )
	local p_36 = obs.obs_properties_add_button( props, "import_button", "Configurações de Importação", import_button_clicked )
	obs.source_list_release( sources )
	--Sets callback upon modification of the list Basically an Event Listener
  	obs.obs_property_set_modified_callback( p_1, property_onchange )
  	obs.obs_property_set_modified_callback( p_2, property_onchange )
  	obs.obs_property_set_modified_callback( p_4, property_onchange )
  	obs.obs_property_set_modified_callback( p_7, property_onchange )
  	obs.obs_property_set_modified_callback( p_8, property_onchange )
  	obs.obs_property_set_modified_callback( p_13, property_onchange )
  	obs.obs_property_set_modified_callback( p_19, property_onchange )
  	obs.obs_property_set_modified_callback( p_24, property_onchange )
  	obs.obs_property_set_modified_callback( p_26, property_onchange )
  	obs.obs_property_set_modified_callback( p_30, property_onchange )
	obs.obs_property_set_modified_callback( p_32, property_onchange )
	obs.obs_property_set_modified_callback( p_33, property_onchange )
	obs.obs_property_set_modified_callback( p_34, property_onchange )
	obs.obs_property_set_modified_callback( p_36, import_properties )
	-- Calls the callback once to set-up current visibility
  	obs.obs_properties_apply_settings( props, script_settings )
	return props
end
--[[
----------------------------------------------------------
	A function named script_update will be called when settings are changed
----------------------------------------------------------
]]
-- Called upon settings initialization and modification
function script_update( settings )
	assign_default_frequency()
	activate( false )
	trigger_text = obs.obs_data_get_int( settings, "trigger_text" )
	media["caution_note_source"] = obs.obs_data_get_string( settings, "caution_note_source" )
	media["warning_note_source"] = obs.obs_data_get_string( settings, "warning_note_source" )
	media["caution_note"] = string.gsub(obs.obs_data_get_string( settings, "caution_note" ), "\\([n])", {n="\n"})
	media["warning_note"] = string.gsub(obs.obs_data_get_string( settings, "warning_note" ), "\\([n])", {n="\n"})
	timer_type = obs.obs_data_get_int( settings, "timer_type" )
	timer_source = obs.obs_data_get_string( settings, "timer_source" )
	countdown_type = obs.obs_data_get_int( settings, "countdown_type" )
	if timer_type == 2 then
		cur_seconds = 
		( obs.obs_data_get_int( settings, "hours" )*60*60 ) + 
		( obs.obs_data_get_int( settings, "minutes" )*60 ) + 
		obs.obs_data_get_int( settings, "seconds" )
	else
		cur_seconds = 0
	end	
	custom_time_format = obs.obs_data_get_string( settings, "custom_time_format" )
	longtimetext_s = string.gsub(obs.obs_data_get_string( settings, "day_text" ), "\\([n])", {n="\n"})
	longtimetext_p = string.gsub(obs.obs_data_get_string( settings, "days_text" ), "\\([n])", {n="\n"})
	timer_year = obs.obs_data_get_int( settings, "year" )
	timer_month = obs.obs_data_get_int( settings, "month" ) - 1
	timer_day = obs.obs_data_get_int( settings, "day" )
	timer_hours = obs.obs_data_get_int( settings, "hours" )
	timer_minutes = obs.obs_data_get_int( settings, "minutes" )
	timer_seconds = obs.obs_data_get_int( settings, "seconds" )
	if timer_type == 2 and countdown_type == 1 then
		cur_seconds = delta_time( timer_year, timer_month, timer_day, timer_hours, timer_minutes, timer_seconds)
	end
	timer_trim = obs.obs_data_get_int( settings, "timer_trim" )
	def_seconds = cur_seconds 
	split_source = obs.obs_data_get_string( settings, "split_source" )
	active_source = obs.obs_data_get_string( settings, "active_source" )
	media['source_name_audio_warning'] = obs.obs_data_get_string( settings, "audio_warning" )
	media['source_name_audio_caution'] = obs.obs_data_get_string( settings, "audio_caution" )											
	media['normal_color'] = obs.obs_data_get_int( settings, "normal_color" )
	media['caution_color'] = obs.obs_data_get_int( settings, "caution_color" )
	media['warning_color'] = obs.obs_data_get_int( settings, "warning_color" )										
	media['warning_text'] = obs.obs_data_get_string( settings, "warning_text" )
	media['caution_text'] = obs.obs_data_get_string( settings, "caution_text" )
	media['caution_duration'] = obs.obs_data_get_int( settings, "caution_duration" )
	media['warning_duration'] = obs.obs_data_get_int( settings, "warning_duration" )
	split_type = obs.obs_data_get_string( settings, "split_type" )
	start_recording = obs.obs_data_get_int( settings, "start_recording" )
	recording_type = obs.obs_data_get_int( settings, "recording_type" )
	next_scene = obs.obs_data_get_string( settings, "next_scene" )
	text_prefix = string.gsub(obs.obs_data_get_string( settings, "text_prefix" ), "\\([n])", {n="\n"})
	text_suffix = string.gsub(obs.obs_data_get_string( settings, "text_suffix" ), "\\([n])", {n="\n"})
	stop_text = obs.obs_data_get_string( settings, "stop_text" )
    start_on_visible = obs.obs_data_get_bool( settings,"start_on_visible" )
	backup_folder = obs.obs_data_get_string( settings, "backup_folder" )
    disable_script = obs.obs_data_get_bool( settings,"disable_script" )
	import_list = obs.obs_data_get_string( settings, "import_list" )
	reset( true )
	-- Keep track of current settings
  	script_settings = settings 
end
--[[
----------------------------------------------------------
A function named script_defaults will be called to set the default settings
----------------------------------------------------------
]]
function script_defaults( settings )
	assign_default_frequency()
	obs.obs_data_set_default_int( settings, "trigger_text", 1 )
	obs.obs_data_set_default_string( settings, "custom_time_format", "$T$D:$H:$M:$S,$F" )
	obs.obs_data_set_default_string( settings, "caution_note", "" )
	obs.obs_data_set_default_string( settings, "warning_note", "" )
	obs.obs_data_set_default_string( settings, "caution_note_source", "Selecione" )
	obs.obs_data_set_default_string( settings, "warning_note_source", "Selecione" )
	obs.obs_data_set_default_int( settings, "timer_type", 1 )
	obs.obs_data_set_default_int( settings, "config", 1 )
	obs.obs_data_set_default_string( settings, "timer_source", "Selecione" )
	obs.obs_data_set_default_int( settings, "countdown_type", 2 )
	obs.obs_data_set_default_int( settings, "year", os.date("%Y", os.time()) )
	obs.obs_data_set_default_int( settings, "hours", 0 )
	obs.obs_data_set_default_int( settings, "minutes", 0 )
	obs.obs_data_set_default_int( settings, "seconds", 0 )
	obs.obs_data_set_default_int( settings, "timer_trim", 1 )
	obs.obs_data_set_default_string( settings, "day_text", "# Day \n" )
	obs.obs_data_set_default_string( settings, "days_text", "# Days \n" )
	obs.obs_data_set_default_string( settings, "split_source", "Selecione" )
	obs.obs_data_set_default_string( settings, "audio_warning", "Nenhum" )
	obs.obs_data_set_default_string( settings, "audio_caution", "Nenhum" )
	obs.obs_data_set_default_int( settings, "normal_color", media['normal_color'] )
	obs.obs_data_set_default_int( settings, "caution_color", media['caution_color'] )
	obs.obs_data_set_default_int( settings, "warning_color", media['warning_color'] )
	obs.obs_data_set_default_string( settings, "warning_text", "" )
	obs.obs_data_set_default_string( settings, "caution_text", "" )
	obs.obs_data_set_default_int( settings, "caution_duration", 5 )
	obs.obs_data_set_default_int( settings, "warning_duration", 5 )
	obs.obs_data_set_default_int( settings, "split_type", 2 )
	obs.obs_data_set_default_int( settings, "start_recording", 2 )
	obs.obs_data_set_default_int( settings, "recording_type", 5 )
	obs.obs_data_set_default_string( settings, "next_scene", "Selecione" )
	obs.obs_data_set_default_string( settings, "text_prefix", "" )
	obs.obs_data_set_default_string( settings, "text_suffix", "" )
	obs.obs_data_set_default_string( settings, "stop_text", "" )
	obs.obs_data_set_default_bool( settings, "start_on_visible", false )
	obs.obs_data_set_default_bool( settings, "disable_script", false )
	obs.obs_data_set_default_bool( settings, "backup_mode", false )
	-- Keep track of current settings
  	script_settings = settings 
end
--[[
----------------------------------------------------------

	A function named script_save will be called when the script is saved
	NOTE: This function is usually used for saving extra data ( such as in this
	case, a hotkey's save data ).  Settings set via the properties are saved
	automatically.
----------------------------------------------------------
]]
function script_save( settings )
	local hotkey_save_array_reset = obs.obs_hotkey_save( hotkey_id_reset )
	local hotkey_save_array_pause = obs.obs_hotkey_save( hotkey_id_pause )
	local hotkey_save_array_split = obs.obs_hotkey_save( hotkey_id_split )
	obs.obs_data_set_array( settings, "reset_hotkey", hotkey_save_array_reset )
	obs.obs_data_set_array( settings, "pause_hotkey", hotkey_save_array_pause )
	obs.obs_data_set_array( settings, "split_hotkey", hotkey_save_array_split )
	obs.obs_data_array_release( hotkey_save_array_pause )
	obs.obs_data_array_release( hotkey_save_array_reset )
	obs.obs_data_array_release( hotkey_save_array_split )
end
--[[
----------------------------------------------------------
	a function named script_load will be called on startup	
	Connect hotkey and activation/deactivation signal callbacks
	--
	NOTE: These particular script callbacks do not necessarily have to
	be disconnected, as callbacks will automatically destroy themselves
	if the script is unloaded.  So there's no real need to manually
	disconnect callbacks that are intended to last until the script is
	unloaded.
----------------------------------------------------------
]]
function script_load( settings )
	assign_default_frequency()
	local sh = obs.obs_get_signal_handler()
	obs.signal_handler_connect( sh, "source_activate", source_activated )
	obs.signal_handler_connect( sh, "source_deactivate", source_deactivated )
	hotkey_id_reset = obs.obs_hotkey_register_frontend( "reset_stopwatch_" .. filename():lower():gsub('[%W%p%c%s]', ''), "Reset " .. filename(), reset )
	hotkey_id_pause = obs.obs_hotkey_register_frontend( "pause_stopwatch_" .. filename():lower():gsub('[%W%p%c%s]', ''), "Start/Pause " .. filename(), on_pause )
	hotkey_id_split = obs.obs_hotkey_register_frontend( "split_stopwatch_" .. filename():lower():gsub('[%W%p%c%s]', ''), "Split Time " .. filename(), on_split )
	local hotkey_save_array_reset = obs.obs_data_get_array( settings, "reset_hotkey" )
	local hotkey_save_array_pause = obs.obs_data_get_array( settings, "pause_hotkey" )
	local hotkey_save_array_split = obs.obs_data_get_array( settings, "split_hotkey" )
	obs.obs_hotkey_load( hotkey_id_reset, hotkey_save_array_reset )
	obs.obs_hotkey_load( hotkey_id_pause, hotkey_save_array_pause )
	obs.obs_hotkey_load( hotkey_id_split, hotkey_save_array_split )
	obs.obs_data_array_release( hotkey_save_array_reset )
	obs.obs_data_array_release( hotkey_save_array_pause )
	obs.obs_data_array_release( hotkey_save_array_split )
end
