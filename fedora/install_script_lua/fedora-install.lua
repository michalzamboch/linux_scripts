-----------------------------------------------------------
---  VARIABLES
-----------------------------------------------------------

programsToInstall = "neovim xkill"
wellcomeMessage = "Welcome to: Lua script to setup and install Fedora distro."
configFile = "/etc/dnf/dnf.conf"
configFileMock = "test.conf"
dnfSetupLines = {
    "# Fedora install script",
    "fastestmirror=True",
    "max_parallel_downloads=10",
    "defaultyes=True",
    "keepcache=True"
}
updateCommad = "sudo dnf update && sudo dnf upgrade"
debug = true

-----------------------------------------------------------
--- UPDATE
-----------------------------------------------------------

function executeUpdate()
    os.execute(updateCommad)
end

-----------------------------------------------------------
--- DNF SET UP
-----------------------------------------------------------

function setUpDnf(file)
    if fileExists(file) == false then
        print("Config file does not exist.")
        return false
    end

    if chechNotWriten(file, dnfSetupLines[1]) == false then
        print("Dnf config file is already seted up.")
        return false
    end

    appendLines(file, dnfSetupLines)
    return true
end

function chechNotWriten(file, line)
    for l in io.lines(file) do 
        if l == line then
            return false
        end
    end
    return true
end

function fileExists(file)
    local f = io.open(file, "rb")
    if f then
        f.close()
        return true
    end    
    return false
end

function appendLines(filePath, lines)
    file = io.open(filePath, "a")
    io.output(file)

    io.write("\n")
    for k,v in pairs(lines) do
        io.write(v, "\n")
    end
    io.close(file)
end

-----------------------------------------------------------
--- MAIN
-----------------------------------------------------------

os.execute("clear")
print(wellcomeMessage)
setUpDnf(configFileMock)
executeUpdate()
