# Script commit git

git add .

$a = read-host -prompt "Introduce mensaje para commit"
while( ($Null -eq $a ) -or ( $a -eq '' ) ){ $a = read-host -prompt "Introduce mensaje para commit" }

git commit -m "$a"