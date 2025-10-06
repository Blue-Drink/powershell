# FUNCIONES
function suma{
    param(
        [int] $n1,
        [int] $n2
    )
    $suma = $n1 + $n2
    write-Output "La suma es $suma"
}
suma -n1 7 -n2 5