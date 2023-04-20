<!DOCTYPE html>
<html>
<style  type="text/css" media="all">
        .addcart{
            width:182px;
            height:126px;
            font-size:20px;
            margin-right:20px;
            align : center;
        }
		.home{
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
        .cart{
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
            <input type="button" value="清空購物車" onclick="deletea();" style="width:180px;height:40px;font-size:20px;"/><br>
            <input type ="button" onclick="checkOut()" value="結帳" style="width:180px;height:40px;font-size:20px;"></input><br>    

</div>
<div class = "ser" align = left>
            
            <input type ="button" onclick="meal_menu()" value="主餐" style="width:120px;height:40px;font-size:20px;"></input><br>
            <input type ="button" onclick="dessert_menu()" value="甜品" style="width:120px;height:40px;font-size:20px;"></input><br>
            <input type ="button" onclick="drink_menu()" value="飲料" style="width:120px;height:40px;font-size:20px;"></input><br>
            <input type ="button" onclick="sharebox_menu()" value="快樂分享盒" style="width:120px;height:40px;font-size:20px;"></input><br>

</div>
<div class = "sharebox" align = center>


	</div>
</body>
</html>

<script language="javascript">
    // var getData1 = localStorage.getItem('setname');
	// var getDataArr1 = JSON.parse(getData1);
    // console.log(getDataArr1);
    var getData = localStorage.getItem('mealname');
	var getDataArr = JSON.parse(getData);
    var total_price = 0 ;
	console.log(getDataArr);
    document.write("<div style='display:flex;justify-content: center;'>");
    for( i = 0; i < getDataArr.length ; i++){
        document.write("<br>");
        //document.write("<input type='button' value ='刪除' style ='width:50px; height:45px; font-size:20px;' text-align = 'center' onclick='not("+"'"+getDataArr[i].mealname+"\""+")\"/>");
        
        document.write(getDataArr[i].mealname);
        document.write("<br>");
        if(getDataArr[i].customize != ""){
            document.write("客製化： "+getDataArr[i].customize+"<br>");
        }
        document.write(getDataArr[i].price+"元<br>")
        total_price +=Number(getDataArr[i].price);
    }
    document.write("目前總金額："+total_price+"元");
    document.write("</div>");
    function deletea(){
		localStorage.removeItem('mealname');
        window.location.href = 'meal.php';
	}
    function meal_menu()
	{
  
        window.location.href = 'meal.php';
     
	}
    function dessert_menu()
	{
 
        window.location.href = 'dessert.php';
	}
    function drink_menu()
	{
      
        window.location.href = 'drink.php';
	}
    function sharebox_menu()
	{
 
        window.location.href = 'sharebox.php';
	}
	function backorder()
    {
		window.location.href = 'order.php';
    }
    function checkOut()
    {
        if(total_price == 0){
            alert("結帳購物車不可為空");
        }else
            window.location.href = 'payment_method.html';
    }
    

    </script>