<?php
//session_start();
include("modules.php");
ini_set('display_errors','0');
	if(!isset($_SESSION["ty"]))
	header("location:logout.php");
//$con=new mysqli('localhost','root','',"ding");
$tq=$_SESSION['cn'].'_'.$_SESSION['mdl'].'_q'.$_SESSION['qn'].'_que';
$tr=$_SESSION['cn'].'_'.$_SESSION['mdl'].'_q'.$_SESSION['qn'].'_res';

$tab= $_REQUEST['tab'];
$id= $_REQUEST['id'];
echo $_REQUEST['tab']."<br>";
echo $id;
?>
<html>
<head>
   <meta charset="UTF-8">

   <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	
      <script type="text/javascript" src="js/materialize.min.js"></script>
	  <script type="text/javascript" src="js/materialize.js"></script>
	  
     <style>
	 body {
	 background-color:rgb(255,255,255);}
	 textarea {
    width:850px;
	height:100px;
    padding: 3px;
    border: none;
    }
	      
	 </style>
	 <script>
function myFunction(id) {
    var x = document.getElementById(id);
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}
	function add_in()
	{
		n_in=document.getElementById('nof_ans').value;
		o_type=document.getElementById('opt_type').value;
		var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
				document.getElementById("ans").innerHTML = this.responseText;
            }
        };
        xmlhttp.open("GET","edit_inputs.php?no_in="+n_in+"&opt_type="+o_type, true);
        xmlhttp.send();
	}
</script>

</head>

<?php 
if(isset($_POST['postque_update']))
{
$id= $_REQUEST['id'];
$ttim=date($_POST['hh'].":".$_POST['mm'].":".$_POST['ss']);
	if($_POST['opt_type']=="Check Box"&&empty($_POST["chk_ans"]))
      echo("You didn't select any Answer- Filed to add.");
	else
	{
	$ques=mysql_real_escape_string($_POST['ques']);
	$opt_type=$_POST['opt_type'];
	$nof_opt=$_POST['nof_ans'];
	if($opt_type=="Check Box")
	{
		$ans=implode("",$_POST["chk_ans"]);
	}		
	else if($opt_type=="Radio")
		$ans=$_POST['crt_ans'];
	else if($opt_type=="Text Box")
		$ans="txt";
	
	$p=$_POST['pts'];
	$opt_ans = mysql_real_escape_string(implode("~~~", $_POST["ans"])); 
	
	$ex=mysql_real_escape_string($_POST['exp']);
 $sql = "delete from $tq where qid=$id";
  $result = $con->query($sql);

$sql="insert into $tq(qid,ques,otype,nopts,ans,points,opt,expl,tim) values($id,'$ques','$opt_type',$nof_opt,'$ans',$p,'$opt_ans','$ex','$ttim')";
	if (!mysqli_query($con,$sql))
		echo "Error create: " . $con->error;
  /*$sql = "select *from $tq order by qid desc limit 1";
  $result = $con->query($sql);
  $row = $result->fetch_assoc();
  $id='q'.$row['qid'];
  $sql="alter table $tr add($id varchar(25))";
	if (!mysqli_query($con,$sql)) 
		echo "Error lnch: " . $con->error;*/
	}
	//header("location:/prr/p1.php");
}

$sql = "select * from $tab where qid=$id ";
   $result = $con->query($sql);
       $row = $result->fetch_assoc();
//echo $row['ques'];
$_SESSION['opt']=$row['opt'];
$_SESSION['ans']=$row['ans'];
echo $_SESSION['opt'];
?>

<body onload="add_in()">
<div class="row">
   
<div class="w3-panel w3-border w3-hover-border-red">
<form method="post" action="editliveques.php" class="w3-container">

<div class="w3-row-padding w3-panel w3-border w3-hover-border-red w3-round-large">
 <div class="w3-half">
Question <textarea class="w3-input w3-small w3-border" name="ques"><?php echo $row['ques'];?></textarea>
</div>

 <div class="w3-half">
   <div class="w3-half">
Type
<select name="opt_type" id="opt_type" oninput="add_in()"   class="w3-input w3-border">

<option value="Radio" <?php if($row['otype']=="Radio"){?> selected="<?php echo $row['otype'];?>"<?php }?>>Radio</option>
<option value="Check Box" <?php if($row['otype']=="Check Box"){?> selected="<?php echo $row['otype'];?>"<?php }?>>Check Box</option>
<option value="Text Box" <?php if($row['otype']=="Text Box"){?> selected="<?php echo $row['otype'];?>"<?php }?>>Text Box</option>

</select>
</div>
 <div class="w3-half">
Duration
<?php list($h,$m,$s)=explode(':',$row['tim']);?>
  <div class="w3-tag w3-round w3-orange" style="padding:3px">
    <div class="w3-tag w3-round w3-white w3-border w3-border-white">
  <div class="w3-row-padding">  
<div class="w3-third">
   <input placeholder="hh" class="w3-input w3-border" type="number" name="hh" min="0" max="24" value="<?php echo $h;?>">
 </div><div class="w3-third">
    <input placeholder="mm"class="w3-input w3-border" type="number" name="mm" min="0" max="60" value="<?php echo $m;?>">
 </div><div class="w3-third">
  <input placeholder="ss" class="w3-input w3-border" type="number" name="ss" min="0" max="60" value="<?php echo $s;?>">
</div>
</div>	
</div></div></div>
  <div class="w3-half">
No.Of Ans
 <select name="nof_ans" id="nof_ans" oninput="add_in()"   " class="w3-input w3-border">
<?php for($i=0;$i<=5;$i++)
{?>
<option value="<?php echo $i;?>" <?php if($row['nopts']==$i){?> selected="<?php echo $i;?>"<?php }?>><?php echo $i;?></option>
<?php } ?>
</select>
 </div>


  <div class="w3-half">
Points
<select name="pts" class="w3-input w3-border" selected=" <?php echo $row['points'];?> ">
<?php for($i=0;$i<=10;$i++)
{?>
<option value="<?php echo $i;?>" <?php if($row['points']==$i){?> selected="<?php echo $i;?>"<?php }?>><?php echo $i;?></option>
<?php } ?>
</select>
</div></div></div>
 <div class="w3-row-padding w3-panel w3-border w3-hover-border-red w3-round-large">
  <div class="w3-half">
 
 <div id="ans">
 </div>
 
 </div>
 <div class="w3-half">

Explanation<textarea class="w3-input w3-border" name="exp" placeholder="Explanation(optional)" ><?php echo $row['expl'];?> </textarea>
<input type="hidden" name="id" value="<?php echo $id;?>">
<input type="hidden" name="tab" value="<?php echo $tab;?>">
<div class="card-action"><button name="postque_update">Update</button></div>
</div>
</div>
</div>
</form></div>



 <button onclick="myFunction('Demo1')" class="w3-button w3-block w3-left-align">
Show Question</button>

<div id="Demo1" class="w3-container w3-hide">
<?php


	$sql = "select *from $tq";
   $result = $con->query($sql);
   if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {?>
        <tr>
            <td><?php echo $row['qid'];?></td><br>
            <td><?php echo  nl2br($row['ques']);?></td><br>
			<td><?php echo "Option: ". $row['ans'];?></td>
            <div class="card-action"><a href="editliveques.php?tab=<?php echo $tq;?>&id=<?php echo $row['qid'];?>"><button name="postque_add">Edit</button></a></div>
          </tr>
		  <br>
      <?php    }
}
 else {
    echo "0 results";
}
?>
        </tbody>
      </table>
            
</div>
</body></html>

