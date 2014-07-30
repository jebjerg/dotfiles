-- Authors: casper
-- License: Public domain
-- Last Changed: Unknown
--
-- list task warrior metrics

-- %taskw_count - number of pending tasks due today

-- by casper <casper@jebjerg.eu>
-- Public domain

local defaults={
    update_interval=30 * 1000
}

local settings=table.join(statusd.get_config("taskw"), defaults)

local taskw_timer
local metric_na = "!?!?"

local function get_taskw_count()
	local hps = io.popen("task status:pending due:today count 2>/dev/null")
	if not hps then
		return metric_na
	end
	local answ = hps:read("*a")
	if not answ  or answ == "" then
		return "-1"
	end
	return string.format("%i", answ)
end

local function update_taskw()
	local taskw_count = get_taskw_count()
	statusd.inform("taskw_count", taskw_count)
	taskw_timer:set(settings.update_interval, update_taskw)
end

-- Init
taskw_timer=statusd.create_timer()
update_taskw()
