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
os.execute("cowsay " .. arg[1] .. ".cpp is created by zrz who is weak > Cow");
Cow_File = io.open("./Cow", "r+");

tmp = Tmp:read("*a");
tmp = tmp .. [[

/*

]];
tmp = tmp .. Cow_File:read("*a");
tmp = tmp .. [[

*/
]]
file:write(tmp);

os.execute("rm Cow");

io.close(file);
io.close(Tmp);
