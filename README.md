# Rdmfullreboot
The complete instructions and scripts to auto restart rdm from server power off or reboot


### AUTO LOGIN WINDOWS 10
 
This method is applicable to both local user account and Microsoft account. In other words, whether you’re using a Microsoft account or local user account, you can use this guide to enable automatic logon.

WARNING: Enable automatic logon only if you are the sole user of your computer. If you often share your computer with others, others will be able to peek into your account without knowing the password.


1. First step is to open Run command box by simultaneously pressing Windows logo and R keys (Windows+R). In the Run dialog box, type Netplwiz and then press Enter key.

2. In the resulting User Accounts dialog, select your user account first and then uncheck the option labelled Users must enter a user name and password to use this computer. Click Apply button to see Automatically sign in box.

3. In the Automatically sign in dialog, type your password and then re-enter the password to confirm the same.

Finally, click OK button.


### AUTO LOAD VM

1. right click the vm computer>managed>shared

2. click on shared vm's 

3. click on manage vm power actions

4. select auto start

5. From The Windows Folder Edit The Path in `startup-vmwarehostd-fix.cmd`

6. shift right click on the `startup-vmwarehostd-fix.cmd` and select run as a different user. Use an account with administrator rights and password.

7. Open the Task Scheduler application.

8. Create a new task. Give it a meaningful name.

9. the `General` tab check the `Run whether user is logged in or not` radio button.

10. Check `Run with the highest privileges`. (won't work if you don't do this)

11. On the `Triggers` tab choose `At startup`.

12. On the `Actions` tab set `Action` to `Start a Program`.

13. For `Program/script:` enter Browse for your `startup-vmwarehost-fix.vbs`

14. Click Ok and Ok and then enter the password for the user you set on the `General` tab.

15. Make a shortcut of vmware in your startup folder.

windows 10 location

`C:\Users\USER\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`

Once you have saved it all restart the pc if you want to test.

By the time you have logged on to the PC again the VMware Server service should have started up and all your autostart shared VMs should be running or starting.


###MAC AUTO LOGIN

1. Click the Apple logo in the upper left corner of your screen.

2. Click System Preferences.

3. Click Users & Groups. In earlier versions of OS X, this category is called Accounts.

4. Click the lock icon to unlock settings and enter your admin password when prompted.

5. Click Login Options.

6. In the field next to Automatic login, select the name of the user you would like to log in automatically. To disable automatic login, select Off.

Important Note: If the username is grayed out, you are unable to enable automatic login as your Mac requires manual login. This can be fixed:


If FileVault is turned on, manual login is required for all accounts. You can turn FileVault off.

If an account uses an iCloud password to log in, manual login is required for that account. You might also see the message “A user with an encrypted home folder can't log in automatically.” When changing the account password, you can choose not to use the iCloud password.

Close System Preferences to save changes.


###RDM Start and Kill



