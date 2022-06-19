rem #script to add a new admin user according to the device name than convert the current account to standard user account
net user "%computername%_admin" "`1" /add
net localgroup Administrators "%computername%_admin" /add
net localgroup Users "%username%" /add
net localgroup Administrators "%username%" /delete
shutdown /r /t 0