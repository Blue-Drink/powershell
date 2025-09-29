# Da el nombre de un proceso a partir de su id

param( $id )

$p = get-process
$l = $p.length
$f = 0
$name = ''

for( $i = 0 ; $i -lt $l ; $i++ ){
	if( $p[ $i ].id -eq $id ){
        write-host "proceso encontrado"
        $f = 1
        $name = $p[ $id ].processName
    }
}
if( $f -eq 1 ){ write-host write-host "$name" }
#else{ write-host "$id no encontrado" }