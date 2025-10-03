$p = Get-Process
$l = $p.length
$cadena = "<html><body><center><table>"
$ruta = "C:\xampp\htdocs\power\"

for( $i = 0 ; $i -lt $l ; $i++ ){
    $cadena += "<tr><td>" + $p[ $i ].ProcessName + "</td><td>" + $p[ $i ].id + "</td></tr>";
}
$cadena += "</table></center></body></html>"

if( -not( Test-Path $ruta -PathType Container ) ){
    New-Item -Path $ruta -ItemType Directory
}

Set-Content -Path $ruta\index.html -Value $cadena