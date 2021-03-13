rednet.open("top")

term.clear()
term.setCursorPos(1,1)

print("To whom?")
local targetSTR = read()
term.clear()
print("Send what?")
local data = read()
if fs.exists(data) then
    targetINT = tonumber(targetSTR)
    file = fs.open(data, "r")
    rednet.send(targetINT, "RECEIVE")
    rednet.send(targetINT, data)
    rednet.send(targetINT, file.readAll())
    print(data.." sent to "..targetSTR)
    sleep(1)
    os.reboot()
else
    print(data.." does not exist")
    return
end
