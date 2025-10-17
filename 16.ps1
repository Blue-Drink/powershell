# Cálculo del máximo

$p = Get-Process
$l = $p.length
$max = $p[ 0 ].CPU
$pr = $p[ 0 ].ProcessName

for( $i = 1 ; $i -lt $l ; $i++ ){
    $cpu = $p[ $i ].CPU
    if( $cpu -gt $max ){
        $max = $cpu
        $pr = $p[ $i ].ProcessName
    }
};

Write-Host "$pr tiene el tiempo máximo de CPU con $max segundos"