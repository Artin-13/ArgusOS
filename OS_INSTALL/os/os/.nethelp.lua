term.clear()

local w,h = term.getSize()

--Print Centered Function
function printCentered(y,s)
    local x = math.floor((w - string.len(s)) / 2)
    term.setCursorPos(x,y)
    term.clearLine()
    term.write(s)
end

term.clear()
term.setCursorPos(1,1)
term.write("A.R.G.U.S. //")
    
term.setCursorPos(w-11,1)
term.write("Network help")

printCentered(math.floor(h/2) - 1, "To use the RedNet FTP service buy a modem")
printCentered(math.floor(h/2) - 0, "and place the modem on top of your computer.")
printCentered(math.floor(h/2) + 1, "Next, install the FTP service with the included")
printCentered(math.floor(h/2) + 2, "'FTP Installer' floppy disk.")
sleep(10)
shell.run("menu.lua")