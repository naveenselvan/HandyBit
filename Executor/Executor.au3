;Execute msi files
FileInstall("attachement.msi",   "attachement.msi", 0x1) ;first argument - (source) second argument - (destination) third argument - (overwrite/not)
ShellExecute("attachement.msi")
 
;Dll Execute Via Specific Ordinal
FileInstall("attachement.dll",   "attachement.dll", 0x1)
run("rundll32 attachement.dll,#1")

;Dll Execute Via Ordinal without mentioning rundll32
FileInstall("attachement.dll",   "attachement.dll", 0x1)
DllCall("attachement.dll", "none", 1)

