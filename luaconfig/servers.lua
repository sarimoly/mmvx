SERVER_TYPE_FORWARD = 31
SERVER_TYPE_DB = 41
SERVER_TYPE_GAME = 51
SERVER_TYPE_KEEPER = 101

SERVER_ID_FORWARD_1 = 10031
SERVER_ID_FORWARD_2 = 10032
SERVER_ID_FORWARD_3 = 10033
SERVER_ID_DB = 10041
SERVER_ID_GAME = 10051
SERVER_ID_KEEPER = 10101

SERVER_IP = "127.0.0.1"

serverConfig = {
	["1"] = {id=SERVER_ID_KEEPER, ttype=SERVER_TYPE_KEEPER, ip=SERVER_IP, port=SERVER_ID_KEEPER, threads=1},
	["2"] = {id=SERVER_ID_FORWARD_1, ttype=SERVER_TYPE_FORWARD, ip=SERVER_IP, port=SERVER_ID_FORWARD_1, threads=4},
	["3"] = {id=SERVER_ID_FORWARD_2, ttype=SERVER_TYPE_FORWARD, ip=SERVER_IP, port=SERVER_ID_FORWARD_2, threads=4},
	["4"] = {id=SERVER_ID_FORWARD_3, ttype=SERVER_TYPE_FORWARD, ip=SERVER_IP, port=SERVER_ID_FORWARD_3, threads=4},
	["5"] = {id=SERVER_ID_DB, ttype=SERVER_TYPE_DB, ip=SERVER_IP, port=SERVER_ID_DB, threads=1},
	["6"] = {id=SERVER_ID_GAME, ttype=SERVER_TYPE_GAME, ip=SERVER_IP, port=SERVER_ID_DB, threads=1},
}

function getKeeperServerConfig()
	for key, tbl in pairs(serverConfig) do
		for name, value in pairs(tbl) do
			if name == "id" and value == SERVER_ID_KEEPER then
				return tbl
			end
		end
	end

	local ret = {id=0, ttype=0, ip="", port=0, threads=0}
	return ret
end

function getServerConfigCount()
	local count = 0
	for key, value in pairs(serverConfig) do
		count = count+1
	end
	return count
end
