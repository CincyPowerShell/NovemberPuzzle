param([string]$VMNameStr)
$VMs=@()
$VMNames=@()
if($VMNameStr.indexof(",") -gt 0)
{
$Trace="Found Comma..."
$VMs=$VMNameStr -split "," | %{$_.trim()}
$trace+="Length = $($VMs.length)"
$trace+=$VMs -is [array]
for($i=0;$i -lt $VMs.length;$i++){
if($VMs[$i] -gt ""){
set-variable -Name ("vmname" + $i) -value $VMs[$i]
$VMNames+=$VMs[$i]
}
}
}
else{$VMName0=$VMNameStr;$VMNames=$VMName0}
$VMNames
