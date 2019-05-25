#!/bin/lua

print("input You testfile name");

Name = io.read();

file = io.open("main.lua", "r");
tofile = io.open("main_bak.lua", "w");
Content = file:read("*a");
Content = string.gsub(Content, "CSYZ12", Name);
tofile:write(Content);
io.close(file);
io.close(tofile);

file = io.open("init.bash", "r");
tofile = io.open("init_bak.bash", "w");
Content = file:read("*a");
Content = string.gsub(Content, "CSYZ12", Name);
tofile:write(Content);
io.close(file);
io.close(tofile);

os.execute("chmod a+x main_bak.lua");
os.execute("chmod a+x init_bak.bash");


os.execute("sudo cp main_bak.lua /bin/Makeit");
os.execute("sudo cp init_bak.bash /bin/Makeit_For_test");

print("Enjoy!");
