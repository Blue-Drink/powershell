$texto = Get-Content "C:\Windows\System32\drivers\etc\hosts";
$l = $texto.Length;

for( $i = 0 ; $i -lt $l ; $i++ ){
    if( ! $texto[ $i ].StartsWith( "#" )  ){
        $a = $texto[ $i ].trim();
        if( $a -ne "" ){ Write-Host $i".-" $a };
    }    
};