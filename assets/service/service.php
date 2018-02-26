<?php
	require("PDO.php");
	header('Content-type: text/plain; charset=utf-8');
	date_default_timezone_set("Asia/Bangkok");
	$conn=conpdo("localhost","cp242224_2closeTest2","cp242224_Root01","Root01");
	if(!empty($_GET)){
		if($_GET['action'] == 'signup'){
			if(isset($_POST['username'])){
				$sql = "INSERT INTO `account`(`account_username`, `account_email`, `account_phone`, `account_location`, `account_password`) VALUES ('".$_POST['username']."','".$_POST['email']."','".$_POST['phone']."','".$_POST['location']."','".md5($_POST['password'])."')";
				if(getpdo($conn,$sql))
					echo "OK";
			}else{
				echo "Sorry";
			}
		}elseif($_GET['action'] == 'edituser'){
			session_start();
			$sql = "UPDATE `account` SET `account_shop_name` ='".$_POST['inputshopname']."' ,`account_brith_date` = '".$_POST['inputdate']."' , `account_email` = '".$_POST['inputemail']."' , `account_phone` = '".$_POST['inputphone']."' , `account_img` ='".$_POST['inputpic']."' WHERE `account_id` ='".$_SESSION["account_id"]."'";
			if(getpdo($conn,$sql))
				echo "OK";
		}else if($_GET['action'] == 'login'){
			$sql = "SELECT `account_id` FROM `account` WHERE `account_username`  = '".$_POST['username']."' and `account_password` ='".md5($_POST['password'])."'";
			$rs = getpdo($conn,$sql);
			if( $rs != null && $rs[0]['account_id'] > 0){
				session_start();
				$_SESSION["account_id"]=$rs[0]['account_id'];
				echo $_SESSION["account_id"];
			}
		}else if($_GET['action'] == 'logout'){
			session_start();
			$_SESSION["account_id"] = -1;
			echo -1;
		}else if($_GET['action'] == 'uploadimg'){
			$sourcePath = $_FILES['file']['tmp_name'];       // Storing source path of the file in a variable
			$temp = explode(".", $_FILES["file"]["name"]);
			$newfilename = round(microtime(true)) . '.' . end($temp);
			$targetPath = "/images/".$newfilename; // Target path where file is to be stored
			echo 'assets'.$targetPath;
			move_uploaded_file($sourcePath,"..".$targetPath) ;
		}else if($_GET['action'] == 'addproduct'){
			session_start();
			$sql ="INSERT INTO `product`(`product_name`, `product_detail`,  `product_price`, `product_price_mod`, `product_delay`, `product_status`, `product_reference`, `catagory_id`, `account_id`,`product_pic`,`product_amount`) VALUES ('".$_POST['inputname']."','".$_POST['inputdetail']."','".$_POST['inputprice']."','0','".$_POST['inputdelay']."','".$_POST['inputstatus']."','".$_POST['inputref']."','".$_POST['inputcategory']."','".$_SESSION["account_id"]."','".$_POST['inputpic']."','".$_POST['inputamount']."')";
			if(getpdo($conn,$sql))
				echo "OK";
		}else if($_GET['action'] == 'getdata'){
			if(isset($_POST['type'])){
				$sql = "SELECT `category_id` FROM `category` WHERE `category_name_en` = '".$_POST['type']."'";
				$result = getpdo($conn,$sql);

				$filter = "";
				if(isset($_POST['filter'])){
					if($_POST['filter'] == 1){
						$filter = 'ORDER BY `product_price` asc';
					}else if($_POST['filter'] == 2){
						$filter = 'ORDER BY `product_price` desc';
					}else if($_POST['filter'] == 3){
						$filter = 'ORDER BY `catagory_id` asc';
					}else if($_POST['filter'] == 4){
						$filter = 'ORDER BY `catagory_id` desc';
					}
				}

				$sql = "SELECT `product_id`,`product_name`,`product_rating`,`product_price`,`product_pic`,`product_amount` FROM `product` WHERE `catagory_id` = '".$result[0]['category_id']."' ".$filter;
				$rs = getpdo($conn,$sql);
				echo json_encode($rs);
			}else{
				$sql = "SELECT `product_id`,`product_name`,`product_rating`,`product_price`,`product_pic`,`product_amount` FROM `product`";
				$rs = getpdo($conn,$sql);
				echo json_encode($rs);
			}
		}
		else if ($_GET['action'] == 'getchart') {
			session_start();
			$sql = "SELECT count(*) as count_all , MONTH(`time`) as month,`order_detail_status` as status FROM `order_detail_data` WHERE YEAR(time) = YEAR(CURDATE()) GROUP by MONTH(`time`),`order_detail_status`";
			$rs = getpdo($conn,$sql);
			echo json_encode($rs);
		}else if($_GET['action'] == 'getdatasearch'){
			$sql = "SELECT `category_id` FROM `category` WHERE `category_name_en` LIKE '%".$_GET['search']."%' or `category_name` LIKE '%".$_GET['search']."%'";
			$result = getpdo($conn,$sql);

			$filter = "";

			if($_GET['filter'] == 1){
				$filter = 'ORDER BY `product_price` asc';
			}else if($_GET['filter'] == 2){
				$filter = 'ORDER BY `product_price` desc';
			}else if($_GET['filter'] == 3){
				$filter = 'ORDER BY `catagory_id` asc';
			}else if($_GET['filter'] == 4){
				$filter = 'ORDER BY `catagory_id` desc';
			}


			if ($result) {
				$sql = "SELECT * FROM `product` WHERE `catagory_id` = '".$result[0]['category_id']."' or `product_name` LIKE '%".$_GET['search']."%' ";
			}else{
				$sql = "SELECT * FROM `product` WHERE `product_name` LIKE '%".$_GET['search']."%' ";
			}

			$sql .= $filter;

			$rs = getpdo($conn,$sql);
			echo json_encode($rs);
		}else if($_GET['action'] == 'getdatadetail'){
			$sql = "SELECT * FROM `product` WHERE `product_id` = '".$_POST['product_id']."'";
			$rs = getpdo($conn,$sql);
			echo json_encode($rs);
		}else if($_GET['action'] == 'getorder'){
			session_start();
			$status = 0;
			$sql = "SELECT * FROM `order_data` WHERE `product_acount_id` = '".$_SESSION["account_id"]."' ";
			if($_POST['status'] == 'error'){
				$sql .= "and `order_detail_status` >= '8'";
			}elseif($_POST['status'] != 'all'){
				if($_POST['status'] == 'padding'){
					$status = 2;
				}elseif ($_POST['status'] == 'transpot'){
					$status = 3;
				}elseif ($_POST['status'] == 'transpot_ok'){
					$status = 4;
				}elseif ($_POST['status'] == 'success'){
					$status = 1;}
				else{
					$status = 0;
				}
				
				$sql .= "and `order_detail_status` = '".$status."'";
			}else
			{
				$sql .= "and ((`order_detail_status` != '2') or (`order_detail_status` = '2' AND `time` >= NOW() - INTERVAL 3 DAY))";
			}

			if($status == 2){
				$sql .= " AND `time` >= NOW() - INTERVAL 3 DAY";
			}

			$sql .= " ORDER BY `time` DESC";

			$rs = getpdo($conn,$sql);
			echo json_encode($rs);
		}else if($_GET['action'] == 'getorderuser'){
			session_start();
			$sql = "SELECT * FROM `order_data` WHERE `account_id` = '".$_SESSION["account_id"]."' ";
			$status = 0;
			if($_POST['status'] == 'error'){
				$sql .= "and `order_detail_status` >= '8'";
			}elseif($_POST['status'] != 'all'){
				if($_POST['status'] == 'padding'){
					$status = 2;
				}elseif ($_POST['status'] == 'transpot'){
					$status = 3;
				}elseif ($_POST['status'] == 'transpot_ok'){
					$status = 4;
				}elseif ($_POST['status'] == 'success'){
					$status = 1;}
				else{
					$status = 0;
				}
				
				$sql .= "and `order_detail_status` = '".$status."'";
			}else
			{
				$sql .= "and ((`order_detail_status` != '2') or (`order_detail_status` = '2' AND `time` >= NOW() - INTERVAL 3 DAY))";
			}

			if($status == 2){
				$sql .= " AND `time` >= NOW() - INTERVAL 3 DAY";
			}

			$sql .= " ORDER BY `time` DESC";
			
			$rs = getpdo($conn,$sql);
			echo json_encode($rs);
		}else if($_GET['action'] == 'getproduct'){
			session_start();
			$sql = "SELECT * FROM `product` WHERE `account_id` = '".$_SESSION["account_id"]."' ";

			if($_POST['status'] != 'all'){
				$status = '=';
				if($_POST['status'] == 'active'){
					$status = '>';
				}elseif ($_POST['status'] == 'soldout'){
					$status = '0';
				}
				
				$sql .= "and `product_amount` ".$status." '0'";
			}
			$rs = getpdo($conn,$sql);
			echo json_encode($rs);
		}else if($_GET['action'] == 'getnews'){
			$sql = "SELECT * FROM `news_detail` ORDER BY `news_detail`.`news_time` DESC LIMIT 4";
			$rs = getpdo($conn,$sql);
			echo json_encode($rs);
			
		}else if($_GET['action'] == 'getslip'){
			session_start();
			$sql = "SELECT * FROM `slip_detail` WHERE `product_account_id` = '".$_SESSION["account_id"]."'";
			if(isset($_POST['inputdatestart'])){
				$sql .= " and `slip_payment_date` >= '".$_POST['inputdatestart']."'";
			}
			if(isset($_POST['inputdateend'])){
				$sql .= " and `slip_payment_date` <= '".$_POST['inputdateend']."'";
			}
			$rs = getpdo($conn,$sql);
			echo json_encode($rs);
		}else if($_GET['action'] == 'getorderbyid'){
			$sql = "SELECT * FROM `order_detail_data` WHERE `order_detail_id` = '".$_POST['order_id']."'";
			$rs = getpdo($conn,$sql);
			echo json_encode($rs);
		}else if($_GET['action'] == 'addslip'){
			session_start();

			$sql = "INSERT INTO `slip`(`slip_accounting_name`, `slip_accounting_number`, `slip_pic`, `account_id`, `order_detail_id`) VALUES ('".$_POST['inputname']."','".$_POST['inputnumber']."','".$_POST['inputpic']."','".$_SESSION["account_id"]."','".$_POST['order_id']."')";
			if(getpdo($conn,$sql)){
				$sql = "UPDATE `order_detail` SET `order_detail_status` = '3' WHERE `order_detail_id` = '".$_POST['order_id']."'";
				if(getpdo($conn,$sql))
					echo "OK";
			}
		}else if($_GET['action'] == 'updatetacking'){
			$sql = "UPDATE `order_detail` SET `order_detail_tacking` = '".$_POST['tackingnumber']."', `order_detail_status` = '4' WHERE `order_detail_id` = '".$_POST['order_detail_id']."'";
			if(getpdo($conn,$sql))
				echo "OK";
		}else if($_GET['action'] == 'confirm'){
			$sql = "UPDATE `order_detail` SET `order_detail_status` = '1' WHERE `order_detail_id` = '".$_POST['order_id']."'";
			if(getpdo($conn,$sql))
				echo "OK";
		}else if($_GET['action'] == 'addtocart'){
			session_start();

			if(!isset($_SESSION["intLine"])){
				 $_SESSION["intLine"] = 0;
				 $_SESSION["strProductID"][0] = $_POST["product_id"];
				 $_SESSION["strQty"][0] = $_POST["amount"];
			}
			else{
				$key = array_search($_POST["product_id"], $_SESSION["strProductID"]);
				if((string)$key != ""){
					 $_SESSION["strQty"][$key] = $_SESSION["strQty"][$key];
				}
				else{
					 $_SESSION["intLine"] = $_SESSION["intLine"] + 1;
					 $intNewLine = $_SESSION["intLine"];
					 $_SESSION["strProductID"][$intNewLine] = $_POST["product_id"];
					 $_SESSION["strQty"][$intNewLine] = $_POST["amount"];
				}
			}
			echo "OK";
		}elseif ($_GET['action'] == 'deltocart') {
			session_start();
			$Line = $_GET["Line"];
			unset($_SESSION["strProductID"][$Line]);
			unset($_SESSION["strQty"][$Line]);
			$_SESSION["intLine"] -= 1;
			if($_SESSION["intLine"]+1 < 0){
				unset($_SESSION["intLine"]);
			}

			$_SESSION["strProductID"] = array_values($_SESSION["strProductID"]);
			$_SESSION["strQty"] = array_values($_SESSION["strQty"]);
			echo "OK";
		}elseif ($_GET['action'] == 'getsession') {
			session_start();
			$result = null;
			if(isset($_SESSION["intLine"])&&$_SESSION["intLine"]+1 > 0){
				for ($i=0; $i < $_SESSION["intLine"]+1; $i++) {
					if($_SESSION['strProductID'][$i] != ""){
						$sql = "SELECT `product_id`,`product_name`,`product_price`,`product_pic`,`product_price_mod` FROM `product` WHERE `product_id` = '".$_SESSION['strProductID'][$i]."'";
						$rs = getpdo($conn,$sql);
						$result[$i] = array('product_id' => $rs[0]['product_id'] , 'product_name' => $rs[0]['product_name'], 'product_price' => $rs[0]['product_price'], 'product_pic' => $rs[0]['product_pic'], 'product_price_mod' => $rs[0]['product_price_mod'], 'strQty' => $_SESSION["strQty"][$i]);			
					}
				}

				echo json_encode($result);
			}
			else
				echo "ERROR";
		}elseif ($_GET['action'] == 'saveorder') {
			session_start();
			$check = true;
			for ($i=0; $i < $_SESSION["intLine"]+1; $i++) { 
				$sql = "SELECT `product_name`,`product_amount` FROM `product` WHERE `product_id` = '".$_SESSION['strProductID'][$i]."'";
				$rs = getpdo($conn,$sql);
				if($_SESSION["strQty"][$i] > $rs[0]['product_amount']){
					$check = false;
					echo $rs[0]['product_name'] . " have ".$rs[0]['product_amount']." piece in stock\nyou want ".$_SESSION["strQty"][$i]." piece\n";
				}
			}

			if($check){
				$sql = "INSERT INTO `location_detail`(`location_detail_email`,`location_detail_name`, `location_detail_surname`, `location_detail_company`, `location_detail_street_address`, `location_detail_city`, `location_detail_province`, `location_detail_postal Code`, `location_detail_country`, `location_detail_phone`) VALUES ('".$_POST['email']."','".$_POST['name']."','".$_POST['lastname']."','".$_POST['company']."','".$_POST['street']."','".$_POST['city']."','".$_POST['state']."','".$_POST['zip']."','".$_POST['county']."','".$_POST['phone']."')";
				if(getpdo($conn,$sql)){
					
					$sql = "SELECT `location_detail_id`FROM `location_detail` ORDER BY `location_detail_id` DESC";
					$rs = getpdo($conn,$sql);
					for ($i=0; $i < $_SESSION["intLine"]+1; $i++) {
						$sql = "UPDATE `product` SET `product_amount` = '(SELECT `product_amount` FROM `product` WHERE `product_id` = \'".$_SESSION['strProductID'][$i]."\') - \'".$_SESSION["strQty"][$i]."\')' WHERE `product_id` = '".$_SESSION['strProductID'][$i]."'";

						if(getpdo($conn,$sql)) {
							$order_id = date('Ymd').'O001';
							$sql = "SELECT `order_detail_id`FROM `order_detail` order by `order_detail_id` DESC";
							$result = getpdo($conn,$sql);
							if($result){
								$result_tem =  $result[0][0];
								$id_split = explode('O', $result_tem);
								if($id_split[0] ==  date('Ymd')){
									if((intval($id_split[1])+1) < 10){
										$order_id = date('Ymd').'O00'.(intval($id_split[1])+1);
									}else if((intval($id_split[1])+1) < 100){
										$order_id = date('Ymd').'O0'.(intval($id_split[1])+1);
									}else{
										$order_id = date('Ymd').'O'.(intval($id_split[1])+1);
									}
								}
							}
							$sql = "INSERT INTO `order_detail`(`order_detail_id`,`product_id`, `account_id`, `order_detail_amount`,`order_detail_status`, `location_detail_id`) VALUES ('".$order_id."','".$_SESSION['strProductID'][$i]."','".$_SESSION['account_id']."','".$_SESSION["strQty"][$i]."','2','".$rs[0]['location_detail_id']."')";
							 getpdo($conn,$sql);

							
						 }
					}

					unset($_SESSION['intLine']);
					unset($_SESSION['strProductID']);
					unset($_SESSION['strQty']);

					echo "OK";
				}
			}
		}
	}else{
		session_start();
		if(isset($_SESSION["account_id"])){
			$sql = "SELECT * FROM `account` WHERE `account_id` = '".$_SESSION["account_id"]."'";
			$rs = getpdo($conn,$sql);
			if($rs)
				echo json_encode($rs);
			else
				echo -1;
		}
		else{
			echo -1;
		}
	}

?>