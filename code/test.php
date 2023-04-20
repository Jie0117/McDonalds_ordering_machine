<!DOCTYPE html>
<html>
<style  type="text/css" media="all">
        .addcart{
            width:182px;
            height:126px;
            font-size:20px;
            margin-right:20px;
			align = "center";
        }
        .ser{
			width:75%;
            height:0px;
            background-color:white;
            margin:0 auto;
        }
        
        
    </style>
<head>
	<meta charset = "utf-8">
	<title>menu</title>
	
</head>
<body>
<div class = "ser" style="position:absolute;left:0px">
            
            <input type ="button" onclick="ser01()" value="極選系列" style="width:180px;height:40px;font-size:20px;"></input><br>
            <input type ="button" onclick="ser02()" value="牛肉系列" style="width:180px;height:40px;font-size:20px;"></input><br>
			<input type ="button" onclick="ser03()" value="雞肉系列" style="width:180px;height:40px;font-size:20px;"></input><br>
            <input type ="button" onclick="ser04()" value="麥克雞塊系列" style="width:180px;height:40px;font-size:20px;"></input><br>
            <input type ="button" onclick="ser05()" value="麥脆雞" style="width:180px;height:40px;font-size:20px;"></input><br>
            <input type ="button" onclick="ser06()" value="海鮮&豬系列" style="width:180px;height:40px;font-size:20px;"></input><br>
</div>
        
<div class = "main" align = center>
<?php
	# 設定資料庫參數
	$hostname= "localhost";		// 主機名稱
	$username= "root";			// 資料庫登入帳號
	$password= "chen0117tw";	// 資料庫登入密碼
	$database= "mc1224";		// 資料庫名稱
	
	# 建立SQL連線
	$link = mysqli_connect( $hostname , $username , $password ); // 取得連線物件
	mysqli_query($link, "SET NAMES 'UTF8'");                     // 設定編碼
	mysqli_select_db($link, $database) or die("無法選擇資料庫");  // 選擇資料庫

	if(!$link)
    {
        echo "connect failed <br/>";
        exit();
    }
    else {
        echo "connect success <br/>";
    }
	
	# 釋放記憶體
	//mysqli_free_result($result);
	
	# 釋放連線
	//mysqli_close($link);
		
		$sql="SELECT * FROM meal WHERE meal_Series<>'ser16' ";

	//	mysqli_query($link, "SET NAMES 'UTF8'"); 
		if($result = mysqli_query($link,$sql))
		{
			echo "<b>主餐: </b><br/>";
			$count = 0;
			while($row=mysqli_fetch_assoc($result))
			{
				if($count % 3 == 0){
					echo "<div style='display:flex;justify-content: center;'>";
				}
				echo "<div>";
				$photo = $row["meal_Image"];
				echo $row["meal_Name"]."<br> ";
				echo $row["meal_Price"]."<br>";
				echo "<img width=200 height=200 src=".$photo.">"."<br>";
				echo '<input name="addcart"  type="button" value="選擇" onclick="addCart();"/>';
				echo "</div>";
				if($count % 3 == 2){
					echo "</div>";
					//echo "<br>";
				}
				if($count  == 28){
					echo "</div>";
				}
				$count++;
			}
	
			mysqli_free_result($result);
		}
	

?>

	</div>
</body>
</html>

<script language="javascript">
    
    function ser01()
	{
        alert("極選系列");
		
	}
	function ser02()
	{
        alert("牛肉系列");
       
	}
	function ser03()
	{
        alert("雞肉系列");
    
	}
	function ser04()
	{
        alert("麥克雞塊系列");
     
	}
	function ser05()
	{
        alert("麥脆雞系列");
     
	}
	function ser06()
	{
        alert("海鮮&豬系列");

	}
</script>