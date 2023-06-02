<?php
//contar quantas pessoas existem na base de dados users , incluindo utilizadores normais,nao aceites e admins
$query="SELECT count(IDuser) from Users";
$result = mysqli_query($ligaBD,$query);
$row = mysqli_fetch_row($result);
$NumUser=$row[0];
//contar quantos admins existem
$qAdmin="SELECT count(IDuser) from Users where IDtipo=1";
$resultAdmin = mysqli_query($ligaBD,$qAdmin);
$rowAdmin = mysqli_fetch_row($resultAdmin);
$NumAdmin=$rowAdmin[0];
//contar quantos utilizadores sem terem sido aceites existem 
$qNaceite="SELECT count(IDuser) from Users where IDtipo=0";
$resultA = mysqli_query($ligaBD,$qNaceite);
$rowA = mysqli_fetch_row($resultA);
$NumUserA=$rowA[0];
//contar quantos utilizadores normais existem
$qUserN="SELECT count(IDuser) from Users where IDtipo=3";
$resultUN = mysqli_query($ligaBD,$qUserN);
$rowUN = mysqli_fetch_row($resultUN);
$NumUserN = $rowUN[0];

//contar quantos logs e logouts existem durante o ano de 2021,2022,2023
//logins
$qlogsL23="SELECT count(IDuser) from logs where tipo='login' AND Datalog like '2023%'";
$resultUL23 = mysqli_query($ligaBD,$qlogsL23);
$rowL23 = mysqli_fetch_row($resultUL23);
$NumL23 = $rowL23[0];

$qlogsL22="SELECT count(IDuser) from logs where tipo='login' AND Datalog like '2022%'";
$resultUL22 = mysqli_query($ligaBD,$qlogsL22);
$rowL22 = mysqli_fetch_row($resultUL22);
$NumL22= $rowL22[0];

$qlogsL21="SELECT count(IDuser) from logs where tipo='login' AND Datalog like '2021%'";
$resultUL21 = mysqli_query($ligaBD,$qlogsL21);
$rowL21 = mysqli_fetch_row($resultUL21);
$NumL21 = $rowL21[0];
//logouts
$qlogsLO23="SELECT count(IDuser) from logs where tipo='logout'AND Datalog like '2023%'";
$resultLO23 = mysqli_query($ligaBD,$qlogsLO23);
$rowLO23 = mysqli_fetch_row($resultLO23);
$NumLO23 = $rowLO23[0];

$qlogsLO22="SELECT count(IDuser) from logs where tipo='logout'AND Datalog like '2022%'";
$resultLO22 = mysqli_query($ligaBD,$qlogsLO22);
$rowLO22 = mysqli_fetch_row($resultLO22);
$NumLO22 = $rowLO22[0];

$qlogsLO21="SELECT count(IDuser) from logs where tipo='logout'AND Datalog like '2021%'";
$resultLO21 = mysqli_query($ligaBD,$qlogsLO21);
$rowLO21 = mysqli_fetch_row($resultLO21);
$NumLO21 = $rowLO21[0];

/*usado para saber a percentagem de admins no sistema em relacao a todos
$PAdmin=$NumAdmin*100/$NumUser;*/
?>