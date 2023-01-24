;Execute msi files
FileInstall("attachment.msi",   "attachment.msi", 0x1) ;first argument - (source) second argument - (destination) third argument - (overwrite/not)
ShellExecute("attachment.msi")
 
;Dll Execute Via Specific Ordinal
FileInstall("attachment.dll",   "attachment.dll", 0x1)
run("rundll32 attachment.dll,#1")

;Dll Execute Via Ordinal without mentioning rundll32
FileInstall("attachment.dll",   "attachment.dll", 0x1)
DllCall("attachment.dll", "none", 1)

