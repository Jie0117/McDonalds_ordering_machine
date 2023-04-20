<!DOCTYPE html>
<html>
    <style>
         .cart{
            width:75%;
            height:0px;
            background-color:white;
            margin:0 auto;
        }
        .center{
            text-align: center;
            
        }
        body{
            background-color: white;
        }
        .block{
            width: 300px;
            height: 300px;
        }
        .container{
            display: flex;
            justify-content: center; 
            align-items: center; 
        }       
    </style>
    <head>
        <meta charset = "utf-8">
	    <title>single_page</title>

    </head>

    <body>
        <h1 class="center">您選擇單點</h1><br>
        <h3 class="center">目前購物車</h3>
            <div class = "cart" align = right>
                <input type ="button" onclick="cart()" value="購物車" style="width:180px;height:40px;font-size:20px;"></input><br>     
            </div>
           <br><br><br> 
            <div class = "cart" align = right>
                <input type ="button" onclick="keeporder()" value="主選單" style="width:180px;height:40px;font-size:20px;"></input><br>     
            </div>
    </body>

</html>
<script type="text/javascript" >
    var getData = localStorage.getItem('mealname');
	var getDataArr = JSON.parse(getData);
    var total_price = 0 ;
	console.log(getDataArr);
    document.write("<div style='display:flex;justify-content: center;'>");
    for(i= 0; i< getDataArr.length ; i++){
        document.write(getDataArr[i].mealname+"<br>");
        if(getDataArr[i].customize != ""){
            document.write("客製化： "+getDataArr[i].customize+"<br>");
        }
        document.write(getDataArr[i].price+"元<br>")
        total_price +=Number(getDataArr[i].price);
    }
    document.write("目前總金額："+total_price+"元");
    document.write("</div>");
    
    
    function cart(){
        window.location.href = 'cart.php';
    }
    
    function keeporder()
    {
		window.location.href = 'ser01.php';
    }

</script>