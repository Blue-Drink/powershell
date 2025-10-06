# FUNCIONES
function suma{
    param(
        [int] $n1,
        [int] $n2
    )
    $suma = $n1 + $n2
    return $suma
}
$resultado = suma -n1 4 -n2 6
write-host $resultado