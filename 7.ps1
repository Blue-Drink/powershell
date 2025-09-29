# Buscar proceso

param( $proceso )

$p = get-process
$l = $p.length
$f = 0

for( $i = 0 ; $i -lt $l ; $i++ ){
	if( $p[ $i ].processName -eq $proceso ){ write-host "proceso encontrado", $f = 1 }
}
if( $f -eq 1 ){ write-host "$proceso encontrado" }
else{ write-host "$proceso no encontrado" }