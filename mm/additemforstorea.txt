<?php
$newi = $_POST["newitem"];
if(!($newi == NULL))
{
if(preg_match("/^[A-Za-z\\- \']+$/",$newi))
//if(!(is_numeric($newi)))
{
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$conn = mysql_connect($dbhost, $dbuser, $dbpass);
if(! $conn )
{
  die('Could not connect: ' . mysql_error());
}
//$sqlnew = "INSERT INTO storea //(item_name,quantity_q,quantity_k,consumed_q,consumed_k,remaining_q,remaining_k, //cost//_perkg) VALUES ($new,"","","","","","",""); ";
//$countnew = 0;

$co = "SELECT COUNT(item_name) FROM storea";
mysql_select_db('mess');
$countval = mysql_query( $co, $conn );
if(! $countval)
{
  die('Could not insert: ' . mysql_error());
}
$countnew = $co + 1;
echo "$countnew";
$sqlnew = "INSERT INTO storea ".
       "(item_name, quantityp, consumed, remaining, cost_perkg) ".
       "VALUES('$newi',0,0,0,0)";

echo " <script>
      window.location.href = 'saafterenter.html';
    </script>"; 

mysql_select_db('mess');
$upval = mysql_query( $sqlnew, $conn );
if(! $upval )
{
  die('Could not insert: ' . mysql_error());
}
//echo '<br><br>inserted successfully<br><br>';

echo '<a href = "sa.php"><input type = "button" style="width:70;height:50" name = "btnbck" value = "परत"></a>';
echo '<a href = "index.html"><input type = "button" style="width:70;height:50" name = "btnhome" value = "प्रारंभ पृष्ठ
"></a>';
  
//echo "Fetched data successfully\n";


}
else
{
echo " <script>
      window.location.href = 'staerror.html';
    </script> ";
}

}
else
{
echo " <script>
      window.location.href = 'staerror.html';
    </script> ";
} 
mysql_close($conn);

?>