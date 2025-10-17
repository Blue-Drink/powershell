$p = Get-Process
$l = $p.length
$cpu = $p[ 0 ].CPU
$c = 0

for( $i = 1 ; $i -lt $l ; $i++ ){
    $cpu = $p[ $i ].CPU
    $c += $cpu
};

$res = $c / $l

Write-Host "Promedio de cpu: $res segundos"