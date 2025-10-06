# FUNCIONES
function mensaje{
    param(
        [string] $nombre
    )
    write-Output "Hola, $nombre"
}
mensaje -nombre "Carlos"