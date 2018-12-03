<?php 
ini_set('display_errors','0');
  $i=1;
  $l=0;
include("modules.php");
if(!isset($_SESSION["ty"]))
header("location:logout.php");
//$con=new mysqli('localhost','root','',"ding");
$na=$_SESSION["uname"];


$tn=$_SESSION['cn'].'_'.$_SESSION['mdl'].'_cnt';

$tq=$_SESSION['cn'].'_'.$_SESSION['mdl'].'_q'.$_SESSION['qn'].'_que';
$tr=$_SESSION['cn'].'_'.$_SESSION['mdl'].'_q'.$_SESSION['qn'].'_res';
$qq=$_SESSION['qn'];
$sql="select * from $tr where uname='$na'";
$result = $con->query($sql);
$row1 = $result->fetch_assoc();
$sql1="select * from $tn where no=$qq";
$result1 = $con->query($sql1);
$row = $result1->fetch_assoc();
if($_SESSION["ty"]=="std"){
if($row1['endtime']==null){
$_SESSION['tim']=$row['tim'];
list($h,$m,$s)=explode(':',$row['tim']);
$_SESSION["m"]=$m;
$_SESSION["h"]=$h;
$_SESSION["s"]=$s;
$_SESSION["starttime"]=date("Y-m-d H:i:s");
$endtime=date('Y-m-d H:i:s',strtotime('+'.$_SESSION["h"].'hours +'.$_SESSION["m"].'minutes +'.$_SESSION["s"].'seconds',strtotime($_SESSION["starttime"])));
$_SESSION["endtime"]=$endtime;
$sql = "update $tr  set endtime='$endtime' where uname='$na'";
 $con->query($sql);
}
else
{
$_SESSION["endtime"]=$row1['endtime'];	
}
}
if ($result1->num_rows > 0) 
{
$qname=$row['qname'];
}
?>
<html>
<head>
   <meta charset="UTF-8">

   <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
     <link rel="stylesheet" href="css/w3.css">
     <style>
	 body {
	 background-color:rgb(255,255,255);}
	 h3{
  font-family: "Comic Sans MS", cursive, sans-serif;
}
p#id {
  text-align: right-side;
  font-size: 60px;
  word-wrap: break-word;
}

 </style>
  <script>   
  
  var tim;
   function myFunction(id) {
    var x = document.getElementById(id);
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}
 function chk_box(a,b)
 {
	 var str1 = document.getElementById(a).value;
	var str2 = b;
	var pos = str1.search(str2);
	if(pos>=0)
		str1= str1.replace(b,"");
	else
		str1= str1.concat(str2);
	document.getElementById(a).value= str1;
 }
  function txt_box(a,b)
 {
	 var str1 = document.getElementById(a).value;
	var str2 = b;
	document.getElementById(a).value= str1;
 }
/* function fun()
{
	
	var xmlhttp = new XMLHttpRequest();
		
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                f=this.responseText;
            }
        };
		xmlhttp.open("GET", "ti.php", true);
        xmlhttp.send();
		if(f==0)
		{
		document.myform.sub_quiz.click();	
		}
		document.getElementById("dis").innerHTML =  f;

}
 
	var myTimer = setInterval(myClock, 1000);
function myClock() 
{
    fun();
}*/
setInterval(function(){
	var xmlhttp=new XMLHttpRequest();
	xmlhttp.open("GET","response.php",false);
	xmlhttp.send(null);
	var s=xmlhttp.responseText;
	document.getElementById("ti").value=s;
	if(s!=0)
		document.getElementById("dis").innerHTML=s;
	else
		document.myform.sub_quiz.click();
	
},1000);
</script>
</head>
<body>

<?php

if(isset($_POST['sub_quiz']))
{	unset($_SESSION[$tq]);
	
$tim="<script>document.write(sessionStorage.tim);</script>";
	$sql="select tot from $tr where uname='$na'";
	$result = mysqli_query($con, $sql);
	$row = $result->fetch_assoc();
	/*if ($result->num_rows > 0) 
	{
		$sql="insert into $tr(uname,tot) values ('$na',-1)";
		if (!$con->query($sql) == TRUE) 
			echo "Error ins: " . $con->connect_error;
		$sql="select tot from $tr where uname='$na'";
		$result = mysqli_query($con, $sql);
		$row = $result->fetch_assoc();
	}*/
	$t1=strtotime($_POST['ti']);
	$t2=strtotime($_SESSION['tim']);
	if($row['tot']==-1)
	{ 
	$sql="update $tr set tot=0,tim='$t2'-'$t1' where uname='$na'";
	mysqli_query($con, $sql);
	if(!empty($_POST["o"]))
	$arr = $_POST["o"];
    
		
	$score=0;
	foreach($arr as $q => $q_value) 
	{
    $c_flag=0;
	$sql="select otype,ans,points,opt from $tq where qid='$q'";
	$result = mysqli_query($con, $sql);
	$row = $result->fetch_assoc();
	if($row['otype']=="Check Box")
	{
		
		$rr= $q_value;
		$rr=implode("",$rr);
		if($row['ans']==$rr)
		{
			$c_flag=1;$q_value=$rr;
		}
		$q_value=$rr;
	}
	else if($row['otype']=="Radio")
	{
		if($row['ans']==$q_value)
		{	
			$c_flag=1;
		}
	}
	else if($row['otype']=="Text Box")
	{
		
		$rr=implode("~~~", $q_value);
		
		if($row['opt']==$rr)
		{
			$c_flag=1;$q_value=1;
		}
		else
			$q_value=0;
	}
	if($c_flag==1)
	{
		$pts=$row['points'];
		$score=$score+$pts;
		$qi="q".$q;
		$sql="update $tr set $qi='$q_value' where uname='$na'";
		mysqli_query($con, $sql);
		$sql="update $tr set tot=tot+'$pts' where uname='$na'";
		mysqli_query($con, $sql);
	}
	else
	{
		$qi="q".$q;
		$sql="update $tr set $qi='$q_value' where uname='$na'";	
	mysqli_query($con, $sql);		
	}
	}
	?><script>alert("<?php echo "Your Score: ". $score; ?>");</script> <?php
	
	}
	else
	{
		?><script>alert("<?php echo "Already Submitted! Your Score: ". $score;?>");</script> <?php
	/*$arr = $_POST["o"];
	$score=0;
	foreach($arr as $q => $q_value) 
	{
    $sql="select ans,points from $tq where qid='$q'";
	$result = mysqli_query($con, $sql);
	$row = $result->fetch_assoc();
	if($row['ans']==$q_value)
	{	
		$pts=$row['points'];
		$score=$score+$pts;
	}
	}*/
	
	}
	
}



$sql="select tot from $tr where uname='$na'";
	$result = mysqli_query($con, $sql);
	$row = $result->fetch_assoc();
	/*if ($result->num_rows > 0) 
	{
		$sql="insert into $tr(uname,tot) values ('$na',-1)";
		if (!$con->query($sql) == TRUE) 
			echo "Error ins: " . $con->connect_error;
		$sql="select tot from $tr where uname='$na'";
		$result = mysqli_query($con, $sql);
		$row = $result->fetch_assoc();
	}*/
	
	if($row['tot']==-1)
	{ ?>
 <div class="w3-bottom">
<span class="w3-badge w3-red w3-right" id="dis"></span>
</div>

<form method="post" action="p2.php" name="myform">
<?php
$sql1="select *from $tn where no='$qq'";
		$result1 = $con->query($sql1);
		$row = $result1->fetch_assoc();
$sql="select * from $tq";
$result= mysqli_query($con, $sql);
if($result->num_rows)
{
	$i=1;

while($row2=mysqli_fetch_array($result))
{?>
<div class="w3-panel w3-border w3-border-red">
  <h3><?php echo $qname;?></h3><p id="pp"></p><p id="dem"></p>
</div>

<div class="w3-container">
 
  <?php
 
  

	
	?><div class="w3-panel w3-border">
	  <div class="w3-panel w3-border-bottom">
  <h3><?php echo "Question ".$i?></h3>
</div>
  <div class="w3-panel w3-border-bottom">
  <p><?php echo nl2br(htmlspecialchars($row2['ques']));?></p>
</div>
<?php
	$parts = explode( '~~~', $row2['opt']);
	if($row2['otype']=="Radio")
	{
	for($x=1;$x<=$row2['nopts'];$x++)
	{
	?>
	 <p>
	 <input class="with-gap" name="o[<?php echo $row2['qid'];?>]" 
	 value="<?php echo $x;?>" type="radio" id="<?php echo "op".$i.$x;?>"/>
     <label for="<?php echo "op".$i.$x;?>"><?php echo nl2br(htmlspecialchars($parts[$x-1]));?></label>
    </p><?php
	}
	}
	else if($row2['otype']=="Check Box")
	{
		
	for($x=1;$x<=$row2['nopts'];$x++)
	{
	?>
	 <p>
	 <input type="checkbox" name="o[<?php echo $row2['qid'];?>][]" 
	 value="<?php echo $x;?>" id="<?php echo "op".$i.$x;?>"/>
    <label for="<?php echo "op".$i.$x;?>"><?php echo nl2br(htmlspecialchars($parts[$x-1]));?></label>
	</p><?php
	}
	}
	else if($row2['otype']=="Text Box")
	{
		
	for($x=1;$x<=$row2['nopts'];$x++)
	{
	?>
	 <p>
	 <input class="w3-input w3-border w3-round-large" type="text" 
	 name="o[<?php echo $row2['qid'];?>][]" id="<?php echo "op".$i.$x;?>"/>
   </p><?php
	}
	}
	$i++;
	?>
	</div>

</div>
</div><?php } }?>
<input type="hidden" id="ti" name="ti">
<button  name="sub_quiz" value="Submit">Submit</button>

  </form>
  <?php
	}
	else{
		echo"Already Submitted";
	}
?>

  </body>
  </html>