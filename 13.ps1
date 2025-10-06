# contar procesos

function busca{
    param( [ string ] $nombre )
    
    $contador = 0
    $p = get-process
    $l = $p.length

    for( $i = 0 ; $i -lt $l ; $i++ ){
        $n = $p[ $i ].processName
        if( $n -eq $nombre ){ $contador++ }
    }

    return $contador
}

$nombre = read-host -prompt "Nombre del proceso"
$contador = busca -nombre $nombre

write-host "Hay $contador instancias de $nombre"