<?php
	session_start();
	if(!isset($_SESSION["ty"]))
		header("location:logout.php");
//$con=new mysqli('localhost','root','',"ding");
include("db.php");
$na=$_SESSION["uname"];
$tn=$_SESSION['cn'].'_'.$_SESSION['mdl'].'_cnt';

$tq=$_SESSION['cn'].'_'.$_SESSION['mdl'].'_q'.$_SESSION['qn'].'_que';
$tr=$_SESSION['cn'].'_'.$_SESSION['mdl'].'_q'.$_SESSION['qn'].'_res';
$sql="select * from $tn where no='$_SESSION[qn]'";
$result = $con->query($sql);
$row = $result->fetch_assoc();
if(!isset($_SESSION[$tq])){
	$_SESSION[$tq]=$row['tim'];
}
list($h,$m,$s)=explode(':',$_SESSION[$tq]);
$s--;
		if($s == -1) {
            $s = 59;
			$m--;
			if($m == -1) {
                $m = 59;
                $h--;

                if($h==-1) {
				  echo "0";
				  exit();
                }
            }
			      
        }
		if($h<=0&&$m>0){
		$t=$m . "m " . $s . "s ";
	 	}
		else if($h<=0&&$m<=0){
		$t=$s . "s";
		}
		else{
		$t=$h ."h " . $m ."m " . $s . "s ";
		}
		$tim=$h.":".$m.":".$s;
		$_SESSION[$tq]=$tim;
		echo $t;
/*
if(!isset($_SESSION['ti']))
	$_SESSION['ti']=5000;
$_SESSION['ti']=$_SESSION['ti']-1;
echo $_SESSION['ti'];*/
?>