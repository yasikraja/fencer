<?php
session_start();
	if(!isset($_SESSION["ty"]))
		header("location:logout.php");
//$con=new mysqli('localhost','root','',"ding");
include("db.php");	
$na=$_SESSION["uname"];

?>
<html>
    <head>
        <meta charset="UTF-8">

   <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
     <link rel="stylesheet" href="css/w3m.css">
<script>

</script>
 </head>

<body>


<div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">
<div class="w3-container">

<div>
<form method="post" action="live_quiz.php" name="myform">
<?php

		$sql="select * from swift where uname='$na'";
		$result = $con->query($sql);
		$row = $result->fetch_assoc();
		if ($result->num_rows > 0) 
		{
			$c_c=$row['ccode'];
			$m_n=$row['mdl'];
			$q_n=$row['quz'];
			$qid=$row['qno'];
			$q=$row['ques'];
			$o_type=$row['otype'];	
			$q_a=$row['ans'];
			$tim1=$row['tim'];
			$pts=$row['points'];
			$t=date("H:i:s");
			
			$qi="q".$qid;
			$tn=$c_c."_".$m_n."_cnt";
			$sql="select qname from $tn where no='$q_n'";
			$result1 = $con->query($sql);
			$row1 = $result1->fetch_assoc();
			if ($result1->num_rows > 0) 
			{
				$qname=$row1['qname'];
			}
			
			$sql="select cname from course where ccode='$c_c'";
			$result1 = $con->query($sql);
			$row1 = $result1->fetch_assoc();
			if ($result1->num_rows > 0) 
			{
				$course_name=$row1['cname'];
			}
if(!isset($_SESSION[$t])){
		$_SESSION[$t]=$t;
		}
		

	list($h,$m,$s)=explode(':',$tim1);
		if($_SESSION["ty"]=="std"){
if($row['endtime']==null){
$_SESSION['tim']=$row['tim'];
list($h,$m,$s)=explode(':',$row['tim']);
$_SESSION["m"]=$m;
$_SESSION["h"]=$h;
$_SESSION["s"]=$s;
$_SESSION["starttime"]=date("Y-m-d H:i:s");
$endtime=date('Y-m-d H:i:s',strtotime('+'.$_SESSION["h"].'hours +'.$_SESSION["m"].'minutes +'.$_SESSION["s"].'seconds',strtotime($_SESSION["starttime"])));
$_SESSION["endtime"]=$endtime;
/* $sql="delete from swift where ccode='$c_c' and mdl='$m_n' 
	and quz='$q_n' and qno='$qid' and uname='$na'"; */
$sql = "update swift  set endtime='$endtime' where ccode='$c_c' and mdl='$m_n' 
	and quz='$q_n' and qno='$qid' and uname='$na'"; 
 $con->query($sql);
}
else
{
$_SESSION["endtime"]=$row['endtime'];	
}
}?><script>


setInterval(function(){
	var xmlhttp=new XMLHttpRequest();
	xmlhttp.open("GET","response.php",false);
	xmlhttp.send(null);
	var s=xmlhttp.responseText;
	document.getElementById("ti").value=s;
	if(s!=0)
		document.getElementById("dem").innerHTML=s;
	else
		document.myform.live_ans.click();
	
},1000);
function nn(){
	sessionStorage.removeItem('sh');
				 sessionStorage.removeItem('ms');
				  sessionStorage.removeItem('hm');
} </script>
<div class="w3-panel" >
	   <h4><?php echo $course_name."  ".$qname;?></h4>
      <h3 ><?php echo "Question ".$q;?></h3><p id="dem" align="left"></p>
	 
   <div class="w3-panel w3-border w3-round-small">
  <p><?php echo nl2br(htmlspecialchars($row['ques']));?></p>
   </div>
<?php
	$parts = explode( '~~~', $row['opt']);
	if($row['otype']=="Radio")
	{
	for($x=1;$x<=$row['nopts'];$x++)
	{
	?>
	 <p>
	 <input class="with-gap" name="op" 
	 value="<?php echo $x;?>" type="radio" id="<?php echo "op".$x;?>"/>
     <label for="<?php echo "op".$x;?>"><?php echo nl2br(htmlspecialchars($parts[$x-1]));?></label>
    </p><?php
	}
	}
	else if($row['otype']=="Check Box")
	{
		
	for($x=1;$x<=$row['nopts'];$x++)
	{
	?>
	 <p>
	 <input type="checkbox" name="op[]" 
	 value="<?php echo $x;?>" id="<?php echo "op".$x;?>"/>
    <label for="<?php echo "op".$x;?>"><?php echo nl2br(htmlspecialchars($parts[$x-1]));?></label>
	</p><?php
	}
	}
	else if($row['otype']=="Text Box")
	{
		
	for($x=1;$x<=$row['nopts'];$x++)
	{
	?>
	 <p>
	 <input class="w3-input w3-border w3-round-large" type="text" 
	 name="op[]" id="<?php echo "op".$x;?>"/>
   </p><?php
	}
	}
	?>
	<input type="hidden" id="ti" name="ti">
<button  name="live_ans" value="Submit" onclick="nn()">Submit</button><?php	} ?>


  </form>
  </div>
  </div>
  </div>
  <?php 
  if(isset($_POST['live_ans']))
	{	
unset($_SESSION['endtime']);
$t1=strtotime($_POST['ti']);
	$t2=strtotime($_SESSION['tim']);

	$res_tn=$c_c."_".$m_n."_q".$q_n."_res";
	$qi="q".$qid;
	$q_ans=$_POST['op'];
	
	if($o_type=="Check Box")
	{
		
		$rr= $q_ans;
		$rr=implode("",$rr);
		if($q_a==$rr)
		{
			$c_flag=1;$q_ans=$rr;
		}
		$q_value=$rr;
	}
	else if($o_type=="Radio")
	{
		if($q_a==$q_ans)
		{	
			$c_flag=1;
		}
	}
	else if($o_type=="Text Box")
	{
		
		$rr=implode("~~~",$q_ans);
		
		if($row['opt']==$rr)
		{
			$c_flag=1;$q_ans=1;
		}
		else
			$q_ans=0;
	}
	if($c_flag==1)
	{
		$sql="update $res_tn set $qi='$q_ans',tot=tot+'$pts',tim='$t2'-'$t1' where uname='$na'";
	}
	else
		$sql="update $res_tn set $qi='$q_ans',tim='$t2'-'$t1' where uname='$na'";

	if(empty($_POST['op']))
	{
		$q_ans=0;
	}
	
	if (!mysqli_query($con,$sql)) 
		echo "Error anse: " . $con->error;
	
	$sql="delete from swift where ccode='$c_c' and mdl='$m_n' 
	and quz='$q_n' and qno='$qid' and uname='$na'";
	if (!$con->query($sql) == TRUE) 
			echo "Error del: " . $con->connect_error;
	header("location:courses.php");
	exit();
	}?>
 </body>
  </html>