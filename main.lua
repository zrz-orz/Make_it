#!/bin/lua

if (arg[1] == nil) then
  print("Something went wrong");
  print("Please input a Filename");
  os.exit();
end
if (arg[1] == "CSYZ12") then
  os.execute("Makeit_For_test");
  os.exit();
end

os.execute("mkdir " .. arg[1]);

Home = os.getenv("HOME");

file = io.open("./" .. arg[1] .. "/" .. arg[1] .. ".cpp", "w+");
Tmp = io.open(Home .. "/.tmp.cpp", "r+");
tmp = Tmp:read("*a");
tmp = string.gsub(tmp, "COWSAY", arg[1]);
file:write(tmp);

io.close(file);
io.close(Tmp);
