$p = Get-Process
$l = $p.length
$max = $p[ 0 ].Handles
$pr = $p[ 0 ].ProcessName

for( $i = 1 ; $i -lt $l ; $i++ ){
    $al = $p[ $i ].Handles
    if( $al -gt $max ){
        $max = $al
        $pr = $p[ $i ].ProcessName
    }
}

Write-Host "$pr tiene la cantidad máxima de Handles: $max"