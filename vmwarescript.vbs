Set Shell = CreateObject("Shell.Application")
Shell.ShellExecute """c:\path\startup-vmwarehostd-fix.cmd""", 0
Set Shell = Nothing
