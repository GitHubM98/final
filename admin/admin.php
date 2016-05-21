<?php
	require 'auth.php';
	session_start();

	$data = new mysqli("localhost","root","","make");
	$check = $data->query("SELECT * FROM user WHERE login ='$_SESSION[login]';");
	$row = $check->fetch_row();
	$_SESSION['id'] = $row[0];
?>

<html>
<head>
	<title>Admin page</title>
</head>
<body>
	<div class="main">
		<div class="head">
		</div>
		<div class="body">
			<div class="wall">	
				<form class='add_news' action="admin_query.php" method="POST">
					<p style="color:blue;">1) INSERT INTO `user`(`Login`, `Password`, `Name`, `Surname`) VALUES ([value-1],[value-2],[value-3],[value-4])</p>
					<p style="color:purple;">2) UPDATE `user` SET `id`=[value],`username`=[value],`surname`=[value],`login`=[value],`password`=[value],`city`=[value],`image_src`=[value] WHERE 1</p>
					<p style="color:red;">3) DELETE FROM `user` WHERE 1</p>
					<p style="color:green;">4) CREATE TABLE MyGuests (
					id INT(6) AUTO_INCREMENT PRIMARY KEY,
					firstname VARCHAR(30) NOT NULL,
					lastname VARCHAR(30) NOT NULL,
					email VARCHAR(50)
					)</p>
					<input type="text" name="query" style="width:600px; margin:30px">
					<input type="submit" value="DO">
				</form>				
				<form action="admin.php"><a href="admin.php?do=logout">Logout</a></form>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="js/javascript.js"></script>
<script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
</html> 
<html>
<head>
    <title>Message</title>
    <link rel="stylesheet" type="text/css" href="css/style1.css">
</head>
<body>
    <div class="main">
        <div style="margin-left:100px; margin-top:90px">
                <div>
                    <?php echo "<br>Name : ".$row[3].'<br><br>'; ?>
                    <?php echo "Surname : ".$row[4].'<br><br>'; ?>      
                </div>
            <div>  
                <?php
                    $result = $data->query("SELECT `Id`, `Login`, `Password`, `Name`, `Surname` FROM user;");
                    
                    if ($result->num_rows > 0) {
                        while($row = $result->fetch_assoc()) {
                            echo "<form class='add_news' action='messages.php' method='GET'>".
                                    "<p> ".$row['Name']." ".$row['Surname']."</p>".
                                    "<input type='text' value='".$row['Id']."' name='to_mess' style='display:none;'></input>".
                                    "<input type='text' value='".$_SESSION['Id']."' name='from_mess' style='display:none;'></input>".
                                    "<input type='submit' name='start_chat' value='start chat' class='start_chat'></input>".
                                "</form>";
                                
                        }
                    }
            
                ?>
            </div>
        </div>
    </div>
</body>
<script type="text/javascript" src="..js/javascript.js"></script>
<script type="text/javascript" src="..js/jquery-1.12.3.min.js"></script>
</html>