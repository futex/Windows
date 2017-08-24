#Return the list of admin users on the remove machine
#By Futex

$machineName=$args[0]

$group = [ADSI]"WinNT://$machineName/Administrators,group"
$member=@($group.psbase.invoke("Members"))
$member | ForEach-Object {([ADSI]$_).InvokeGet("Name")}