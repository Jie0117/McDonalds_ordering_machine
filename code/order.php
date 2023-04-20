
<!DOCTYPE html>
<html>
    <style  type="text/css" media="all">
        .main{
            width:120px;
            height:0px;
            background-color:white;
            align : "left";
        }
        .ser{
			width:50%;
            height:0px;
            background-color:white;
            margin:0 auto;
        }
        .cart{
            width:75%;
            height:0px;
            background-color:white;
            margin:0 auto;
        }

    </style>
  <head>
    <meta charset="utf-8">
    <title>麥當勞自助點餐系統</title>
  </head>
  <body bgcolor="green">
      <br><br>
        <div align = center text-align:center>
            
            <img src="McDonalds-Logo.png" width=30% height=30% >
            <h1>麥當勞自助點餐系統</h1>
        </div>
        <br><br><br> 
        <div class = "cart" align = right>
                <input type ="button" onclick="cart()" value="購物車" style="width:180px;height:40px;font-size:20px;"></input><br>     
            </div>
        <div class = "main" align = left>
            
            <input type ="button" onclick="meal_menu()" value="主餐" style="width:120px;height:40px;font-size:20px;"></input><br>
            <input type ="button" onclick="dessert_menu()" value="甜品" style="width:120px;height:40px;font-size:20px;"></input><br>
            <input type ="button" onclick="drink_menu()" value="飲料" style="width:120px;height:40px;font-size:20px;"></input><br>
            <input type ="button" onclick="sharebox_menu()" value="快樂分享盒" style="width:120px;height:40px;font-size:20px;"></input><br>

        </div>
        <div class = "ser" align = center>
            
            <input type ="button" onclick="ser01()" value="極選系列" style="width:180px;height:40px;font-size:20px;"></input>
            <input type ="button" onclick="ser02()" value="牛肉系列" style="width:180px;height:40px;font-size:20px;"></input>
			<input type ="button" onclick="ser03()" value="雞肉系列" style="width:180px;height:40px;font-size:20px;"></input>
            <input type ="button" onclick="ser04()" value="麥克雞塊系列" style="width:180px;height:40px;font-size:20px;"></input>
            <input type ="button" onclick="ser05()" value="麥脆雞" style="width:180px;height:40px;font-size:20px;"></input>
            <input type ="button" onclick="ser06()" value="海鮮&豬系列" style="width:180px;height:40px;font-size:20px;"></input>
</div>


        
        
  </body>
</html>
<script language="javascript">
    
    function meal_menu()
	{
        //alert("meal_menu");
        window.location.href = 'meal.php';
     
	}
    function dessert_menu()
	{
        //alert("dessert_menu");
        window.location.href = 'dessert.php';
	}
    function drink_menu()
	{
       // alert("drink_menu");
        window.location.href = 'drink.php';
	}
    function sharebox_menu()
	{
       // alert("sharebox_menu");
        window.location.href = 'sharebox.php';
	}
    function ser01()
	{
     //   alert("極選系列");
		window.location.href = 'ser01.php';
		
	}
	function ser02()
	{
        //alert("牛肉系列");
		window.location.href = 'ser02.php';
	}
	function ser03()
	{
        //alert("雞肉系列");
		window.location.href = 'ser03.php';
	}
	function ser04()
	{
       // alert("麥克雞塊系列");
		window.location.href = 'ser04.php';
	}
	function ser05()
	{
        //alert("麥脆雞系列");
		window.location.href = 'ser05.php';
	}
	function ser06()
	{
        //alert("海鮮&豬系列");
		window.location.href = 'ser06.php';
	}
    function cart(){
        window.location.href = 'cart.php';
    }
</script>