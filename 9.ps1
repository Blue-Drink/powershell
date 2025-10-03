$p = Get-Process
$l = $p.length
$cadena = "<html><body><center><table>"
$ruta = "C:\xampp\htdocs\power\"

for( $i = 0 ; $i -lt $l ; $i++ ){
    $cadena += "<tr><td>" + $p[ $i ].ProcessName + "</td><td>" + $p[ $i ].id + "</td></tr>";
}
$cadena += "</table></center></body></html>"

if( -not( Test-Path $ruta -PathType Container ) ){
    try{ New-Item -Path $ruta -ItemType Directory}
    catch{
        Write-Host "No se ha podido crear el directorio." -ForegroundColor Red;
        Write-Host $_.Exception.Message -ForegroundColor Red;
    }
}

Set-Content -Path $ruta\index.html -Value $cadena