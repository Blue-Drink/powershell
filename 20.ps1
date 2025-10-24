$ruta = "D:\Repositorios\powershell\procesos.txt";
$a = Get-Process;
$l = $a.length;
$cadena = "";
for( $i = 0 ; $i -lt $l ; $i++ ){
    if( $a[ $i ].SI -eq 0 ){
        $cadena += $a[ $i ].ProcessName + "`n";
    }    
}
Set-Content -Path $ruta -Value $cadena;