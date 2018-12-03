<?php

$capture_field_vals ="";
if(isset($_POST["add"]) && is_array($_POST["arr"]))
{
    $capture_field_vals = implode("~~~", $_POST["arr"]); 
}
echo $capture_field_vals;
?>
<html>
<head>
   <meta charset="UTF-8">

   <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
     <link rel="stylesheet" href="css/w3.css">
	 <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
	   <link rel="stylesheet" href="css/w3m.css">
	     <link rel="stylesheet" href="css/w3.css">
       <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	
      <script type="text/javascript" src="js/materialize.min.js"></script>
	  <script type="text/javascript" src="js/materialize.js"></script>
	   <script src="https://www.w3schools.com/lib/w3data.js"></script>
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
  function call()
  {
	  var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
				document.getElementById("add").innerHTML = this.responseText;
            }
        };
        xmlhttp.open("GET","add_inputs.php?no_in="+5, true);
        xmlhttp.send();
  }
</script>
</head>
<body>

<button type="button" onclick="call()">Add</button>
<form method="post">
<div id="add">
</div>
<button type="submit" name="add">Add</button>
</form>
</body>
</html>