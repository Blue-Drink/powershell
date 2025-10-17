# Cálculo del máximo

$p = Get-Process;
$l = $p.length;
$max = $p[ 0 ].BasePriority;
$pr = $p[ 0 ].ProcessName;

for( $i = 1 ; $i -lt $l ; $i++ ){
    $al = $p[ $i ].BasePriority;
    if( $al -gt $max ){
        $max = $al;
        $pr = $p[ $i ].ProcessName;
    }
};

Write-Host "$pr tiene la prioridad máxima con prioridad $max";