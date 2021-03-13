os.pullEvent = os.pullEventRaw

local w,h = term.getSize()

--Print Centered Function
function printCentered(y,s)
    local x = math.floor((w - string.len(s)) / 2)
    term.setCursorPos(x,y)
    term.clearLine()
    term.write(s)
end

--Draw Menu Function

local nOption = 1

local function drawMenu()
    term.clear()
    term.setCursorPos(1,1)
    term.write("A.R.G.U.S. //")
    
    term.setCursorPos(w-11,1)
    if nOption == 1 then
        term.write("Send")
    elseif nOption == 2 then
        term.write("Receive")
    elseif nOption == 3 then
        term.write("Network help")
    elseif nOption == 4 then
        term.write("Back")
    else
        end
end

--GUI

term.clear()
local function drawFrontend()
    printCentered(math.floor(h / 2) - 3, "")
    printCentered(math.floor(h / 2) - 2, "  Programs")
    printCentered(math.floor(h / 2) - 1, "")
    printCentered(math.floor(h / 2) + 0, ((nOption == 1) and " [ Send file    ]") or "  Send file    ")
    printCentered(math.floor(h / 2) + 1, ((nOption == 2) and " [ Receive file ]") or "  Receive file ")
    printCentered(math.floor(h / 2) + 2, ((nOption == 3) and " [ Network help ]") or "  Network help ")
    printCentered(math.floor(h / 2) + 3, ((nOption == 4) and " [ Back         ]") or "  Back         ")
end

--Display

drawMenu()
drawFrontend()

while true do
    local e,p = os.pullEvent()
        if e == "key" then
            local key = p
            if key == 87 or key == 265 then

                if nOption > 1 then
                    nOption = nOption - 1
                    drawMenu()
                    drawFrontend()
                end
            elseif key == 83 or key == 264 then
                if nOption < 4 then
                    nOption = nOption + 1
                    drawMenu()
                    drawFrontend()
                end
            elseif key == 257 then

                break
        end
    end
end
term.clear()

--Conditions
if nOption == 1 then
    shell.run("os/.send.lua")
elseif nOption == 2 then
    shell.run("os/.receive.lua")
elseif nOption == 3 then
    shell.run("os/.nethelp.lua")
else
    shell.run("back.lua")
end