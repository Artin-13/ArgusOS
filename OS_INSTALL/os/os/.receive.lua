term.clear()

local w,h = term.getSize()

--Print Centered Function
function printCentered(y,s)
    local x = math.floor((w - string.len(s)) / 2)
    term.setCursorPos(x,y)
    term.clearLine()
    term.write(s)
end

if fs.exists("FTP/getfile.lua") == true then
    shell.run("FTP/getfile.lua") 
elseif fs.exists("FTP/getfile.lua") == false then
    term.setCursorPos(1,1)
    printCentered(math.floor(h / 2) - 2, "Please put in the file transfer install disk and")
    printCentered(math.floor(h / 2) - 1, "install the rednet FTP service")
    printCentered(math.floor(h / 2) + 0, "If you don't have a file transfer install disk")
    printCentered(math.floor(h / 2) + 1, "please get one from your local pc shop")
    sleep(5)
    shell.run("os/.programs.lua")
end