-- Authors: casper
-- License: Public domain
-- Last Changed: Unknown
--
-- list number of ppl in graph collection

-- %graph_count - number of (real names) persons in graph db

-- by casper <casper@jebjerg.eu>
-- Public domain
json = require("cjson")
http = require("socket.http")

local defaults={
    update_interval=30 * 1000
}

local settings=table.join(statusd.get_config("graph"), defaults)

local graph_timer

local function get_graph_count()
    local res_data = ""
    local res, code = http.request("http://192.168.1.102:64210/api/v1/query/gremlin", [[ i=0; seen={}; g.V().In("image").ForEach(function(d) { if (!seen[d.id]) { i += 1; seen[d.id] = true; }}); g.Emit(i) ]])
    if code == 200 then
        data = json.decode(res)
        return data["result"][1]
    end
    return "N/A"
end

local function update_graph()
	local graph_count = get_graph_count()
    statusd.inform("graph_count", graph_count)
	graph_timer:set(settings.update_interval, update_graph)
end

-- Init
graph_timer=statusd.create_timer()
update_graph()
