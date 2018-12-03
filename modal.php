<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <script src="https://www.w3schools.com/lib/w3data.js"></script>
<body onload="load_home()">
<!--
<div class="w3-container">
  <h2>W3.CSS Modal</h2>
  

  <div id="id01" class="w3-modal">
    <div class="w3-modal-content">
      <div class="w3-container">
        <span onclick="load_home()" class="w3-button w3-display-topright">&times;</span>
        <p>Some text. Some text. Some text.</p>
        <p>Some text. Some text. Some text.</p>
      </div>
    </div>
  </div>
</div>-->
  <script>
      function load_home(){
            document.getElementById("id01").innerHTML='<object type="type/html" data="r1.php" ></object>';
  }
</script>           
</body>
</html>