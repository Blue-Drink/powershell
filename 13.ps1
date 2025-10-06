# contar procesos

function busca{
    param( [ string ] $nombre )
    
    $contador = 0
    $p = get-process

    foreach( $proceso in $p ){
        $n = $proceso.processName
        if( $n -eq $nombre ){ $contador++ }
    }

    return $contador
}

$nombre = read-host -prompt "Nombre del proceso"
$contador = busca -nombre $nombre

write-host "Hay $contador instancias de $nombre"