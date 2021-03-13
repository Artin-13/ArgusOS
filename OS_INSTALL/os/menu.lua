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
        term.write("Command")
    elseif nOption == 2 then
        term.write("Programs")
    elseif nOption == 3 then
        term.write("Shutdown")
    elseif nOption == 4 then
        term.write("Reboot")
    else
        end
end

--GUI

term.clear()
local function drawFrontend()
    printCentered(math.floor(h / 2) - 3, "")
    printCentered(math.floor(h / 2) - 2, "A.R.G.U.S. V3")
    printCentered(math.floor(h / 2) - 1, "")
    printCentered(math.floor(h / 2) + 0, ((nOption == 1) and " [ Command Prompt ]") or "  Command Prompt")
    printCentered(math.floor(h / 2) + 1, ((nOption == 2) and " [    Programs    ]") or "     Programs   ")
    printCentered(math.floor(h / 2) + 2, ((nOption == 3) and " [    Shutdown    ]") or "     Shutdown   ")
    printCentered(math.floor(h / 2) + 3, ((nOption == 4) and " [     Reboot     ]") or "      Reboot    ")
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
    shell.run("os/.command.lua")
elseif nOption == 2 then
    shell.run("os/.programs.lua")
elseif nOption == 3 then
    os.shutdown()
else
    os.reboot()
end