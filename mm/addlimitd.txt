
<html>
<head>
<title>add-limit-D</title>

<div style="background-color:lightblUE; color:white; margin:20px; padding:20px;">

<img src="mp.jpg"  style="width:75px;height:65px">

&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp


<font size ="9">
PTC MESS MANAGEMENT
</font>


&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp



<a href="viewlimitd.html"><button style="background-color:lightblue"><b>BACK</b></button></a>
<a href="options.html"><button style="background-color:lightblue"><b>HOME PAGE</b></button></a>
<button style="background-color:lightblue"><b>HELP</b></button>
<button style="background-color:lightblue"><b>LOG OUT</b></button>


</head>

</div>


<div style="background-color:white; color:white; margin:20px; padding:0.01px;">
</div>



<div style="background-color:lightblue; color:black; margin:20px; padding:30px;">

<?php

$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$conn = mysql_connect($dbhost, $dbuser, $dbpass);
if(! $conn )
{
  die('Could not connect: ' . mysql_error());
}

$sql = 'SELECT * FROM stored';
mysql_select_db('mess');
$retval = mysql_query( $sql, $conn );
if(! $retval )
{
  die('Could not get data: ' . mysql_error());
} 
echo ' <font size = "7"> ';
echo '<form id="form2" name="form2" method="get" action="addld.php">';
echo '<option value="">एक आयटम निवडा...</option><br><br>';
echo '<b><select name = "iname" style="width:70;height:50">';
while($row = mysql_fetch_array($retval))
  {
     echo '<option value="'.$row['item_name'].'">' . $row['item_name'] . "</option>";
  }
 echo '</b></select></font>'; echo '<center> <font size = "7" color = "#008040">
<B><I>खालील मूल्ये प्रविष्ट करा</i></b>
<br></font>
<font size = "6">
<b>प्रमाण(लिटर)</b>
<input type = "textbox" name = "qtyq"><br><br>

</font>
<font size = "7">
<input type = "submit" name = "sub" style="width:80;height:40" value = "सादर" id="btnsubmit">
</font>
</center>
</form>
 ';

mysql_free_result($retval);
mysql_close($conn);
?>

</div>

</body>
</html>
