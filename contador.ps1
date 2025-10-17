$p = Get-Process
$l = $p.Length
$c = 0

for( $i = 0 ; $i -lt $l ; $i++ ){ $c++ }

write-host $c $i $l