$ruta = "D:\Repositorios\powershell\Fichero.txt";

$a = Get-Content "D:\Repositorios\powershell\fich1.txt";
$b = Get-Content "D:\Repositorios\powershell\fich2.txt";

$cadena = $a + "`n" + $b;

Set-Content -Path $ruta -Value $cadena;