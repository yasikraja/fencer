<?php
session_start();

$frm1=date('Y-m-d H:i:s');
$to=$_SESSION["endtime"];
//echo $to;
$t1=strtotime($frm1);
$t2=strtotime($to);
$d=$t2-$t1;
if($d<=0)
	echo "0";
else
echo gmdate("H:i:s",$d);
?>