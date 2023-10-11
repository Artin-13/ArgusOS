if fs.exists("disk") == true then
    shell.run("cd disk")
    shell.run("openp/github get Artin-13/ArgusOS/legacy-cc/FTP/startup.lua startup")
    shell.run("openp/github get Artin-13/ArgusOS/legacy-cc/FTP/install.lua install.lua")
    shell.run("openp/github get Artin-13/ArgusOS/legacy-cc/FTP/eject.lua eject.lua")
    shell.run("mkdir FTP")
    shell.run("cd FTP")
    shell.run("openp/github get Artin-13/ArgusOS/legacy-cc/FTP/FTP/getfile.lua getfile.lua")
    shell.run("openp/github get Artin-13/ArgusOS/legacy-cc/FTP/FTP/sendfile.lua sendfile.lua")
    shell.run("label set bottom FTP_INSTALLER")
    print("Installer installed on disk")
    sleep(5)
    os.reboot()
else
    print("Please put in an empty floppy disk to start the installation")
end
