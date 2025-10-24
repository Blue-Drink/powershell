$texto = Get-Content "D:\Repositorios\powershell\tareas.txt";
$l = $texto.Length;
for( $i = 0 ; $i -lt $l ; $i++ ){
    $p = Get-Process $texto[ $i ];
    Stop-Process $p.Id;
}