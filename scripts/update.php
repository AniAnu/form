<?php 

$json_string = $_POST["data"];
 
//$json_string = '[{"id":1,"name":"Esther Vangtyutyutyutyu","status":4,"group":3},{"id":2,"name":"Leah Freeman","status":3,"group":1}]';

$json_aray = array();
$json_aray = json_decode($json_string);

var_dump($json_aray);

//echo count($json_aray);
$sql = "DELETE FROM user_data";
$result = go_mysql($sql);
for($i=0; $i<count($json_aray); $i++){
$sql = "INSERT INTO `blur_data`.`user_data` (`name`, `status`, `group`) VALUES ('".$json_aray[$i]->name."', '".$json_aray[$i]->status."', '".$json_aray[$i]->group."')";
$result = go_mysql($sql);
}

function go_mysql($query)
{
    global $mysql_link; 
    
    if (!$mysql_link)
    {
        $mysql_link = mysql_connect("localhost","root","") or die(mysql_error());
        mysql_select_db("blur_data") or die(mysql_error());
        mysql_query("SET NAMES 'utf8'");
        mysql_query("set character_set_client='utf8'");
        mysql_query("set character_set_results='utf8'");
        mysql_query("set collation_connection='utf8'");
        global $mysql_link;
    }
        
    $result=mysql_query($query);
    if ($result)
    {
        return $result;
    }
    else
    {
        echo "Database Error: " . mysql_error()."<br><b>$query</b>";
        die();
    }
}



?>