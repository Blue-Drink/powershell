# Cálculo del máximo

$p = Get-Process
$l = $p.length
$max = 0

for( $i = 0 ; $i -lt $l ; $i++ ){
    $id = $p[ $i ].Id
    if( $id -gt $max ){ $max = $id }
}
Write-Host "El ID más alto es $max"