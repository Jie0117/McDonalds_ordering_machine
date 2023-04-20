<!DOCTYPE html>
<html>
<style  type="text/css" media="all">
        .addcart{
            width:182px;
            height:126px;
            font-size:20px;
            margin-right:20px;
			align : "center";
        }
		.cart{
            width:75%;
            height:0px;
            background-color:white;
            margin:0 auto;
        }
        .ser{
			width:75%;
            height:0px;
            background-color:white;
            margin:0 auto;
        }
      
        .home{
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
<div class = "home" align = right>
			
            <input type ="button" onclick="backorder()" value="主選單" style="width:180px;height:40px;font-size:20px;"></input><br>     
</div>
<br><br><br> 
<div class = "cart" align = right>
                <input type ="button" onclick="cart()" value="購物車" style="width:180px;height:40px;font-size:20px;"></input><br>     
            </div>
<div class = "ser" align = left>
            
     
	<input type ="button" onclick="ser10()" value="碳酸飲料系列" style="width:200px;height:40px;font-size:20px;"></input><br>
	<input type ="button" onclick="ser11()" value="茶&奶茶系列" style="width:200px;height:40px;font-size:20px;"></input><br>
	<input type ="button" onclick="ser12()" value="熱咖啡系列" style="width:200px;height:40px;font-size:20px;"></input><br>
	<input type ="button" onclick="ser13()" value="冰咖啡系列" style="width:200px;height:40px;font-size:20px;"></input><br>
	<input type ="button" onclick="ser14()" value="湯品果汁&其他系列" style="width:200px;height:40px;font-size:20px;"></input><br>
	
</div>
        
<div class = "main" align = center>
<?php
	# 設定資料庫參數
	$hostname= "localhost";		// 主機名稱
	$username= "root";			// 資料庫登入帳號
	$password= "";		// 資料庫登入密碼
	$database= "mc1218";		// 資料庫名稱
	
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
		
	$sql="SELECT * FROM drink WHERE drink_Series='ser11' ";

	if($result = mysqli_query($link,$sql))
	{
		echo "<b>茶跟奶茶系列 </b><br/>";
		$count = 0;
		while($row=mysqli_fetch_assoc($result))
		{
			if($count % 3 == 0){
				echo "<div style='display:flex;justify-content: center;'>";
			}
			echo "<div>";
			$isCust = $row["customize"];
			$photo = $row["drink_Image"];
			echo "</b><br/>";
			echo "<img width=150 height=150 src=".$photo.">";
			echo "</b><br/>";
			echo $row["drink_Name"]."<br> ";
			echo $row["drink_Price"]."元<br>";
		   // echo '<input name="addcart"  type="button" value="選擇" onclick="setpage();"/>';
			echo '<input name="addcart"  type="button" value="選擇" onclick="single('."'".$row["drink_Name"]."'".','."'".$row["drink_Price"]."'".');"/>';
			//echo '<input id="addcart"  type="button" value="套餐" onclick="setpage('."'".$row["drink_Name"]."'".','."'".$row["drink_Price"]."'".');"/>';
			if($isCust == 1){
				echo '<br><label><b>客製化不要</b></label><br>';
				$custOpions="SELECT * FROM drink_customize WHERE name ="."'".$row['drink_Name']."'";
				$custResult = mysqli_query($link,$custOpions);
				while($custRow=mysqli_fetch_assoc($custResult)){
					echo '<label><input type="checkbox" value='.$custRow["options"]." onclick="."check("."'".$custRow["options"]."'".")".">".$custRow["options"]."</label><br>";
				}
			}
			echo "</div>";
			if($count % 3 == 2){
				echo "</div>";
				//echo "<br>";
			}
			if($count  == 15){
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
    var test = '';
    function check(cust){
		if (test.includes(cust) == false){
			test+=cust;
			test+=' ';
		}else{
			test = test.replace(cust,"");
		}
		console.log(test);
	}
	function single(mealname,price){
		const inputArea = document.querySelector('input[type="text"]');
		if (localStorage.getItem('mealname') === null) {
			var storageArray = [];
			localStorage.setItem('mealname', JSON.stringify(storageArray));
			} else {
			var storageArray = JSON.parse(localStorage.getItem('mealname'));
		}; 
		event.preventDefault();    	
    	storageArray.push({ mealname: mealname , price: price  , customize : test});
    	localStorage.setItem(`mealname`, JSON.stringify(storageArray));
    	mealname = '';
		price = '';
		test = '';

		window.location.href = 'single.php';
	}
	function setpage(mealname,price){
		const inputArea = document.querySelector('input[type="text"]');
		if (localStorage.getItem('mealname') === null) {
			var storageArray = [];
			localStorage.setItem('mealname', JSON.stringify(storageArray));
			} else {
			var storageArray = JSON.parse(localStorage.getItem('mealname'));
		}; 
		event.preventDefault();    	
    	storageArray.push({ mealname: mealname , price: price  , customize : test});
    	localStorage.setItem(`mealname`, JSON.stringify(storageArray));
    	mealname = '';
		price = '';
		test = '';
		window.location.href = 'setpage.php';
	}
	function deletea(){
		localStorage.removeItem('mealname');
	}
    function backorder()
    {
		window.location.href = 'order.php';
    }
	function ser10()
	{
        window.location.href = 'ser10.php';
	}
    function ser11()
	{
        window.location.href = 'ser11.php';
	}
    function ser12()
	{
        window.location.href = 'ser12.php';
	}
    function ser13()
	{
        window.location.href = 'ser13.php';
	}
    function ser14()
	{
        window.location.href = 'ser14.php';
	}
	function cart(){
        window.location.href = 'cart.php';
    }
</script>