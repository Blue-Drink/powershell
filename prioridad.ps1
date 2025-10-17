# nombre a prioridad

$a=read-host -prompt "Introduce nombre del proceso"
$p = Get-Process -Name $a
$pr = $p.BasePriority
$l = $pr.Length
$max = 0

for ( $i = 0 ; $i -lt $l ; $i++ ){
    $pr_t = $pr[ $i ]
    if( $pr_t -gt $max ){
        $max = $pr_t
    }
}

write-host "$a tiene prioridad $max"