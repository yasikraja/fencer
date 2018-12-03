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
       <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
	   <link rel="stylesheet" href="css/w3m.css">
	     <link rel="stylesheet" href="css/w3.css">
       <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	
      <script type="text/javascript" src="js/materialize.min.js"></script>
	  <script type="text/javascript" src="js/materialize.js"></script>
	   <script src="https://www.w3schools.com/lib/w3data.js"></script>
	  
	  
<script>
function w3_open() {
  document.getElementById("main").style.marginLeft = "25%";
  document.getElementById("mySidebar").style.width = "25%";
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("openNav").style.display = 'none';
}
function w3_close() {
  document.getElementById("main").style.marginLeft = "0%";
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("openNav").style.display = "inline-block";
}

function fun(){
	var f;
	setInterval(function() {
       var xmlhttp = new XMLHttpRequest();
		
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                f=this.responseText;
            }
        };
		xmlhttp.open("GET", "lchk.php", true);
        xmlhttp.send();
		//alert(f);
if(f>0)
{	
document.getElementById('id01').style.display='block';

}	}  
, 1000);

}

</script>
<style>
html, body, {
    position:fixed;
    top:0;
    bottom:0;
    left:0;
    right:0;
	width:100%;
	height:100%;
}
</style>
	
  </head>
<body onload="fun()">
<div id="id01" class="w3-modal">
<div class="w3-modal-content">
<div class="w3-container">
<div class="w3-container">

<form method="post" >
<?php
$i=1;
$na=$_SESSION["uname"];
echo $na;
$sql = "select ccode from stdcou where uname='$na'";
	
		$result = $con->query($sql);
		if ($result->num_rows > 0) 
		{
			while($row = $result->fetch_assoc()) 
		{		
		$cnm=$row['ccode'];
		
		$sql1="select *from swift where ccode='$cnm'";
		$result1 = $con->query($sql1);
		if ($result1->num_rows > 0) 
		{
			while($row1= $result1->fetch_assoc()) 
		{
		$swq=$row1['ccode'].'_'.$row1['mdl'].'_'.$row1['que'].'_que';
		$swr=$row1['ccode'].'_'.$row1['mdl'].'_'.$row1['que'].'_res';
		$sql2="select *from $swq where pub=1";
		$result2 = $con->query($sql2);
		if ($result2->num_rows > 0) 
		{
			while($row2= $result2->fetch_assoc()) 
		{
				$qi='q'.$row2['qid'];
				$q[$i]="q".$i;
				echo $q[$i];
			$o[$i]="op".$i;
				$sql3="select *from $swr where $qi is null and uname='$na'";
				$result3 = $con->query($sql3);
				if ($result3->num_rows > 0) 
				{
			
			
			?>
	
				
	  <div class="w3-panel w3-border-bottom">
  <h3><?php echo "Question ";?></h3>
</div>
  <div class="w3-panel w3-border-bottom">
  <p><?php echo nl2br(htmlspecialchars($row2['ques']));?></p>
</div>

    <p>
      <input class="with-gap" id="<?php echo 'a';?>" name="<?php echo$o[$i];?>" value="1" type="radio"  required />
      <label for="<?php echo 'a';?>"><?php echo nl2br(htmlspecialchars($row2['op1']));?></label>
    </p>
    <p>
      <input class="with-gap" name="<?php echo$o[$i];?>" value="2" type="radio" id="<?php echo 'b';?>" />
      <label for="<?php echo 'b';?>"><?php echo nl2br(htmlspecialchars($row2['op2']));?></label>
    </p>
    <p>
      <input class="with-gap" name="<?php echo$o[$i];?>" value="3" type="radio" id="<?php echo 'c';?>" />
      <label for="<?php echo 'c';?>" ><?php echo nl2br(htmlspecialchars($row2['op3']));?></label>
    </p>
    <p>
      <input class="with-gap" name="<?php echo$o[$i];?>" value="4" type="radio" id="<?php echo 'd';?>"  />
	  <label for="<?php echo 'd';?>"><?php echo nl2br(htmlspecialchars($row2['op4']));?></label>
    </p><br><input name="<?php echo$q[$i];?>" value="<?php echo $row2['qid'];?>" type="hidden" />
	<input type="radio" value="hi" name="na">gakak<br>


			<?php

		
		
		
		}
		$i++;	
		}?>
		<input type="hidden" name="max" value="<?php echo $i;?>" />
		<input type="Submit"  name="ans" value="Submit"><?php
		}
		}
		}
		}
		} ?>


  </form>
  
  <?php
  if(isset($_POST['ans']))
{	
$k=1;
$max=$_POST['max'];
while($k<$max){
	$q[$k]="q".$k;
	echo $q[$k]."<br>";
	$qii="q".$_POST[$q[$k]];
	echo $qii;
$o[$k]="op".$k;
echo"<br>";
$op=$_POST[$o[$k]];
echo $op;
$sql3 = "update $swr set $qii=$op where uname='$na'";
    if (!$con->query($sql3) == TRUE){ 
			echo "Error ans: fghf" . $con->connect_error;
	}
$k++;
}
}
?>
</div>
       </div>
    </div>
  </div>



<div id="wrapper">

<div class="#ef6c00 orange w3-card-4 ">
  <button class="w3-button #ef6c00 orange w3-xlarge" onclick="w3_open()">&#9776;</button>
  <div class="w3-sidebar w3-bar-block w3-card-2 w3-animate-left" style="display:none" id="mySidebar"> 
<button class="w3-bar-item w3-button w3-large"
  onclick="w3_close()">Close &times;</button>
  
  <a href="home.php"  target="fra" onclick="w3_close()" class="w3-bar-item w3-button">Dashboard</a>
  <a href="courses.php" target="fra" onclick="w3_close()" class="w3-bar-item w3-button" >Courses</a>
  
  <a href="logout.php"  onclick="w3_close()" class="w3-bar-item w3-button">Logout</a>
</div> 
  <img src="fen.png">
</div>
</div>

    <div class="w3-main" id="main">
<div id="css">
  <iframe src="courses.php" name="fra" height="100%" width="100%"></iframe></div>

   
 
<footer class="page-footer ">
          
		   
          <div class="footer-copyright">
            <div class="container">
            © 2017 Not Recevied.   More to come in future!
            </div>
          </div>
        </footer>
		 </div> 
	

<script>
      function load_home(){
            document.getElementById("id01").innerHTML='<object type="type/html" data="p1.php" ></object>';
  }
</script> 
</body>
</html>