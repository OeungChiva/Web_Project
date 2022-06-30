
<?php
	
	if(isset($_POST['dangnhap'])){
		$taikhoan = $_POST['taikhoan'];
		$matkhau = md5($_POST['password']);
		$sql = "SELECT * FROM tbl_dangky ,tbl_admin WHERE tbl_dangky.taikhoan='".$taikhoan."' AND tbl_dangky.matkhau='".$matkhau."'  LIMIT 1";
		$row = mysqli_query($connect,$sql);
		$count = mysqli_num_rows($row);
		if($count>0){
			$row_data = mysqli_fetch_array($row);
			$_SESSION['dangky'] = $row_data['taikhoan'];
			$_SESSION['email'] = $row_data['email'];
            $_SESSION['id_khachhang']= $row_data['id_khachhang'];
			header("Location:index.php");
		}elseif($taikhoan=='admin'){
            header("Location:admin/login.php");
        }else{
			echo '<p style="color:red">Mật khẩu hoặc Email sai ,vui lòng nhập lại.</p>';
        }
	} 
?>


<section class="banner" style="background: url('images/banner.jpg');
    background-size: cover;
    height: 500px;"></section>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style_login.css">
    <title>Login</title>
</head>
<body>
    <div class="new_product">
      <h2>Đăng nhập</h2>
   </div>
   
    <div class="warpper" style="border: 2px solid black; border-radius: 0px;height: 540px;width:30% ; margin-top: 10px;margin-left: 35%;">
    <form action="" method="POST">
        <h1 style="text-align: center;">Đăng nhập</h1>
       <div class="taikhoan" style="margin-left: 10px;">
           <label for=""> Tài Khoản</label><br>
           <input type="text" name="taikhoan">
       </div>

       <div class="matkhau" style="margin-left: 10px;">
           <label for=""> Mật khẩu</label><br>
           <input type="password" name="password">
       </div><br><br>
       <div style="text-align: center;">
           <input type="submit" name="dangnhap" value="Đăng Nhập">
       </div>
    </form>
    </div>
    
   <!--<div class="container-single">
    <div class="login">
        <form action="" method="POST" class="form-login">
            <label for="">Email</label>
            <input type="email" id="email" name="taikhoan" placeholder="Email..." required>
            <label for="password">Mật khẩu</label>
            <input type="" id="password" name="password" placeholder="Mật khẩu..." required>
            <p style="color: red;"></p>
            <input type="submit" name="dangnhap" value="Đăng nhập">
        </form>
        
    </div>
  </div>-->

    
</body>
</html>