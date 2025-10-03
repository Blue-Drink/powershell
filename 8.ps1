# Lectura de ficheros

$fichero = "./listado.txt";
$buffer = get-content -path $fichero
$l = $buffer.length;

for( $i = 0 ; $i -lt $l ; $i++ ){
    Stop-Process -name $buffer[ $i ]
}