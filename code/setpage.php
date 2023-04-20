<!DOCTYPE html>
<?php
    //echo $_COOKIE["newCookie"];
    // $photo = $_COOKIE["newimage"];
    // echo "<img width=150 height=150 src=".$photo.">";
?>
<html>
    <style>
        
        body{
            background-color: white;
        }
        .picture{
            height: 300px;
            width: 300px;
        }
        .center{
            text-align:center;
        }
        

    </style>
    <head>
        <title>set_page</title>
        <meta charset = "utf-8">
    </head>

    <body>
        <div style="text-align:center">
            <h1>choose your order</h1>
            
            <!-- <p>
                <button type="button">套餐</button>
                <button type="button">單點</button>
            </p> -->

        </div>
        <div class = "next" align = right>
            <input type ="button" onclick="nextpage()" value="完成" style="width:180px;height:40px;font-size:20px;"></input><br>    
        </div>
        <div style="text-align:center">
        <?php
                $hostName ="localhost";
                $userName = "root";
                $password = "";
                $database = "mc1218";
            
                //create connection
            
                $link = mysqli_connect($hostName , $userName , $password ,$database);
                mysqli_query($link, "SET NAMES 'UTF8'"); 
                mysqli_select_db($link, $database);

                if(mysqli_connect_errno()){
                    echo "failed to connect";
                    exit();
                }
            
               // echo "connection successful";

                $additional_sql = "SELECT * FROM additional";
                $drink_sql = "SELECT * FROM drink";
                //$drink_sql = "SELECT `drink_NO`,`drink_Series`,`drink_Name`,`drink_Price`,`drink_Image`,`options` FROM `drink`,`drink_customize`  WHERE drink_Name=drink_customize.name";
                $pay_sql = "SELECT * FROM add_pay";
                //$sql4 = "SELECT DISTINCT drink_Name FROM drink WHERE customize=1";
                //$sql4 = "SELECT `options` FROM `drink` ,`drink_customize` WHERE drink_Name=drink_customize.name ";
                
                if($set_result = mysqli_query($link , $additional_sql)){
                    echo "<h1>選擇配餐</h1><br>";
                    $count = 0;
                    while($set_row=mysqli_fetch_assoc($set_result)){
                        if($count % 3 == 0){
                            echo "<div style='display:flex;justify-content: center;'>";
                        }
                        echo "<div  style='width:300px;height:300px;'>";
                        $isCust = $set_row["customize"];
                        $photo = $set_row["image"];
                        echo "<img width=150 height=150 src=".$photo."><br>";
                        
                        echo '<input  type="radio" id='.$set_row["additional_Name"].' name="addi1" onclick= single('."'".$set_row["additional_Name"]."'".','."'".$set_row["additional_Price"]."'".");>".$set_row["additional_Name"];
                        
                        echo  $set_row["additional_Price"]."元<br>";
                        if($isCust == 1){
                            echo '<label><b>客製化</b></label><br>';
                            $custOpions="SELECT * FROM meal_customize WHERE name ="."'".$set_row['additional_Name']."'";
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
                        if($count  == 10){
                            echo "</div>";
                        }
                        $count++;

            
                    }
                }
                
                if($drink_result = mysqli_query($link , $drink_sql)){
                    echo "<h1>選擇飲料</h1><br>";
                    $count = 0;
                    while($drink_row=mysqli_fetch_assoc($drink_result)){
                        if($count % 3 == 0){
                            echo "<div style='display:flex;justify-content: center;'>";
                        }
                        echo "<div style='width:300px;height:300px;'>";
                        $isCust = $drink_row["customize"];
                        $photo2 = $drink_row["drink_Image"];
                        echo "<img width=150 height=150 src=".$photo2."><br>";
                        echo '<input name="addi2"  type="radio" id='.$drink_row["drink_Name"].' onclick= single('."'".$drink_row["drink_Name"]."'".','."'".$drink_row["drink_Price"]."'".");>".$drink_row["drink_Name"];
                        echo  $drink_row["drink_Price"]."元<br>";
                        if($isCust == 1){
                            echo '<br><label><b>客製化</b></label><br>';
                            $custOpions="SELECT * FROM drink_customize WHERE name ="."'".$drink_row['drink_Name']."'";
                            $custResult = mysqli_query($link,$custOpions);
                            while($custRow = mysqli_fetch_assoc($custResult)){
                                echo '<label><input type="radio" name="drink" value='.$custRow["options"]." onclick="."check("."'".$custRow["options"]."'".")".">".$custRow["options"]."</label><br>";
                            }
                        }
                        echo "</div>";
                        if($count % 3 == 2){
                            echo "</div>";
                        }
                        if($count  == 33){
                            echo "</div>";
                        }
                        $count++;
                    }

                }

                if($pay_result = mysqli_query($link , $pay_sql)){
                    echo "<h1>選擇加價購</h1><br>";
                    $count = 0;
                    while($pay_row=mysqli_fetch_assoc($pay_result)){
                        if($count % 3 == 0){
                            echo "<div style='display:flex;justify-content: center;'>";
                        }
                        echo "<div style='width:300px;height:300px;'>";
                        $isCust = $pay_row["customize"];
                        $photo3 = $pay_row["image"];
                        echo "<img width=150 height=150 src=".$photo3."><br>";
                        echo '<input name="addi2"  type="radio" id='.$pay_row["pay_name"].' onclick= single('."'".$pay_row["pay_name"]."'".','."'".$pay_row["price"]."'".");>".$pay_row["pay_name"];
                        echo $pay_row["price"]."元<br>";
                        if($isCust == 1){
                            echo '<br><label><b>客製化</b></label><br>';
                            $custOpions="SELECT * FROM add_pay WHERE name ="."'".$pay_row['pay_name']."'";
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
                        if($count  == 5){
                            echo "</div>";
                        }
                        $count++;
                        
                    }
                    
                }

                

                

        ?>
        </div>




    </body>
    <script language ="javascript">
        var test = '';
        function check(cust){
		if (test.includes(cust) == false){
			test+=cust;
			test+=' ';
		}else{
			test = test.replace(cust,"");
		}
		console.log(test);
	}function single(mealname,price){
        document.getElementById(mealname).checked = true;
        alert(mealname);
		const inputArea = document.querySelector('input[type="text"]');
		if (localStorage.getItem('mealname') === null) {
			var storageArray = [];
			localStorage.setItem('mealname', JSON.stringify(storageArray));
			} else {
			var storageArray = JSON.parse(localStorage.getItem('mealname'));
		} 
        console.log(storageArray);
		event.preventDefault();    	
    	storageArray.push({ mealname: mealname , price: price  , customize : test});
    	localStorage.setItem('mealname', JSON.stringify(storageArray));
    	mealname = '';
		price = '';
		test = '';

		//window.location.href = 'single.php';
	}
        function nextpage(){
            window.location.href = 'cart.php';
        }
    </script>



</html>