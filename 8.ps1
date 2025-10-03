# Lectura de ficheros

$fichero = "./README.md";
$buffer = get-content -path $fichero
$l = $buffer.length;

for( $i = 0 ; $i -lt $l ; $i++ ){
    Write-Host $buffer[ $i ]
}