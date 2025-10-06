# FUNCIONES
function suma{
    param(
        [int] $n1,
        [int] $n2
    )
    $suma = $n1 + $n2
    return $suma
}
$n1 = read-host -prompt "Operando 1"
$n2 = read-host -prompt "Operando 2"
$resultado = suma -n1 $n1 -n2 $n2
write-host $resultado