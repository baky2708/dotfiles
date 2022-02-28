
Kp = {}

local function getch_unix()
	os.execute("stty cbreak </dev/tty >/dev/tty 2>&1")
	local key = io.read(1)
	return(key);
end

Kp.get_id_process = function(process)
	if process then
		local cmd = 'pgrep '..process
		local all_process = {}
		local file = io.popen(cmd)
		for v in file:lines() do
			table.insert(all_process, v)
		end
		return all_process
	end
end

Kp.check_args = function(process)
	if process then return true else return false end
end

Kp.kill_process = function(process)
	os.execute('kill '..process)
end

Kp.get_input = function(process)
	print('You want kill ALL process from '.. process..'?(y/n)')
	local key_pressed = getch_unix()
	print()
	return key_pressed
end

Kp.confirmate = function(key_pressed)
	return key_pressed == 'y'
end

return Kp
