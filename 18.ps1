$texto = Get-Content "C:\Windows\System32\drivers\etc\hosts";
$l = $texto.Length;

for( $i = 0 ; $i -lt $l ; $i++ ){
    Write-Host $i "-" $texto[ $i ];
};