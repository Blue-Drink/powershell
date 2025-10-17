# Cálculo del máximo

$p = Get-Process
$l = $p.length
$min = $p[ 0 ].Id

for( $i = 1 ; $i -lt $l ; $i++ ){
    $id = $p[ $i ].Id
    if( $id -lt $min ){
        $min = $id
    }
}
Write-Host "El ID más bajo es $min"