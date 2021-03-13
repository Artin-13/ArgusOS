if fs.exists("disk") == true then
    shell.run("cd disk")
    shell.run("wget https://raw.githubusercontent.com/Artin-13/ArgusOS/main/FTP/startup.lua startup.lua")
    shell.run("wget https://raw.githubusercontent.com/Artin-13/ArgusOS/main/FTP/install.lua install.lua")
    shell.run("wget https://raw.githubusercontent.com/Artin-13/ArgusOS/main/FTP/eject.lua eject.lua")
    shell.run("mkdir FTP")
    shell.run("cd FTP")
    shell.run("wget https://raw.githubusercontent.com/Artin-13/ArgusOS/main/FTP/FTP/getfile.lua back.lua")
    shell.run("wget https://raw.githubusercontent.com/Artin-13/ArgusOS/main/FTP/FTP/sendfile.lua menu.lua")
    shell.run("label set bottom FTP_INSTALLER")
    print("Installer installed on disk")
    sleep(5)
    os.reboot()
else
    print("Please put in an empty floppy disk to start the installation")
end