$p = Get-Process
$l = $p.length
$cadena = "<procesos>"
$ruta = "./procesos.xml"

for( $i = 0 ; $i -lt $l ; $i++ ){
    $cadena += "<proceso><name>" + $p[ $i ].ProcessName + "</name><id>" + $p[ $i ].id + "</id></proceso>";
}
$cadena += "</procesos>"

Set-Content -Path $ruta -Value $cadena