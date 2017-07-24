
<html>
<head>
<title>add-limit-A</title>

<div style="background-color:lightblUE; color:white; margin:20px; padding:20px;">

<img src="mp.jpg"  style="width:75px;height:65px">

&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp


<font size ="9">
PTC MESS MANAGEMENT
</font>


&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp




<a href = "saa.php"><button style="background-color:lightblue"><b>BACK</b></button></a>
<a href = "options.html"><button style="background-color:lightblue"><b>HOME PAGE</b></button></a>
<button style="background-color:lightblue"><b>HELP</b></button>
<button style="background-color:lightblue"><b>LOG OUT</b></button>


</head>

</div>


<div style="background-color:white; color:white; margin:20px; padding:0.01px;">
</div>



<div style="background-color:lightblue; color:black; margin:20px; padding:30px;">

<?php
$itemn = $_GET["iname"];
print "$itemn";
$quantq = $_GET["qtyq"];
print "$quantq";
if(!($quantq == NULL))
{
if(is_numeric($quantq))
{

// connectivity k liye un & pwd
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
//$a = date("y/m/d");
//form se values lena



//form wali values store karke rakhna for another i.e billing table
$useritemname = "$itemn";

// establish connection
$conn = mysql_connect($dbhost, $dbuser, $dbpass);
if(! $conn )
{
  die('Could not connect: ' . mysql_error());
}
// query to fetch yesterday's stock

$sqlselect = " SELECT * FROM storec ";
mysql_select_db('mess');
$select = mysql_query( $sqlselect, $conn );
if(! $select )
{
  die('Could not get data: ' . mysql_error());
}

// storing db values in temporary variables

while($row = mysql_fetch_array($select, MYSQL_ASSOC))
{
$tempitemno   = $row['item_number'];
}

//testing purpose

echo '<br>';
print "qty is $quantq";


$sql = " UPDATE storea SET minvalue = $quantq WHERE item_name = '$itemn' ";
mysql_select_db('mess');
$retval = mysql_query( $sql, $conn );
if(! $retval )
{
  die('Could not insert data: ' . mysql_error());
}
else
{
//echo "Entered data successfully\n";
echo "
}<script>
      window.location.href = 'afterla.html';
    </script> ";
mysql_close($conn);
}
}
else
{
echo " <script>
      window.location.href = 'laerror.html';
    </script> ";

}
}
else
{
echo " <script>
      window.location.href = 'laerror.html';
    </script> ";

}
?>
<br><br><br>
</div>

</body>
</html>








