# FUNCIONES
function mayor{
    param(
        [int] $n1,
        [int] $n2
    )
    if( $n1 -gt $n2 ){ $mayor = $n1 }
    else{ $mayor = $n2 }
    return $mayor
}
$n1 = read-host -prompt "Operando 1"
$n2 = read-host -prompt "Operando 2"
$resultado = mayor -n1 $n1 -n2 $n2
write-host $resultado