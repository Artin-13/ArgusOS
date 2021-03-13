rednet.open("top")

term.clear()
term.setCursorPos(1,1)
shell.run("id")
print("Getting Files...")

while true do
    id,msg = rednet.receive()
    if msg == "RECEIVE" then
        id2,msg2 = rednet.receive()
        f = fs.open(msg2, "w")
        id3,msg3 = rednet.receive()
        f.write(msg3)
        f.close()
        print("File "..msg2.." received.")
        sleep(3)
        os.reboot()
    end
end