<?php 
session_start();
ini_set('display_errors','0');
$n=$_GET['no_in'];
$o_type=$_GET['opt_type'];
$ans=$_SESSION['ans'];
$parts = explode( '~~~',$_SESSION['opt']);
if($o_type=="Radio")
{
for($x=0;$x<$n;$x++)
{
echo  "<div class='w3-half'> Answer ".($x+1).
"<textarea class='w3-input w3-border' name=ans[] required>".$parts[$x]." </textarea>";
$t1= "<input class='with-gap' name='crt_ans' value='".($x+1)."' type='radio' 
id='<?php echo $x+1;?>'";
if($ans==$x+1)
	$t1.="checked ";
$t1.="required/><label for='<?php echo $x+1;?>'>Correct Answer</label></div>";
echo $t1;
}
}

else if($o_type=="Check Box")
{$i=0;
	$ans=(string)$ans;
for($x=0;$x<$n;$x++)
{
echo  "<div class='w3-half'> Answer ".($x+1).
"<textarea class='w3-input w3-border' name=ans[] required>".$parts[$x]." </textarea>";
	
$t1="<input type='checkbox' name='chk_ans[]' value='".($x+1)."'
id='".($x+1)."'";
if($ans[$i]==$x+1){
	$t1.="checked";
	$i++;
}
$t1.="/><label for='".($x+1)."'>Correct Answer</label></div>";
echo $t1;
}  
}

else if($o_type=="Text Box")
{
for($x=0;$x<$n;$x++)
{
echo  "<div class='w3-half'>Correct Answer ".($x+1).
"<textarea class='w3-input w3-border' name=ans[] required>".$parts[$x]." </textarea></div>";
}     
}
?>