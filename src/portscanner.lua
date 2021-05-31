local socket = require 'socket'
local get_arg = require'utils'.get_arg

local function scan_ports(host)
  -- scan ports on a host, and print which ports are open
  local port
  io.write("PORT\tSTATE\n")
  for i = 1, 100 do
    port = "closed"
    if socket.connect(host, i) then port = "open" end
    io.write(string.format("%d/tcp\t%s\n", i, port))
  end
end

local function main()
  -- main
  local host = get_arg("Enter a host: ")
  scan_ports(host)
end

main()
