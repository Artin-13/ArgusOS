term.clear()
term.setCursorPos(1,1)
shell.run("cp","disk/install.lua","install.lua")
shell.run("cp","disk/eject.lua","eject.lua")
shell.run("install.lua")
shell.run("eject.lua")
