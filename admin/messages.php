<?php
	session_start();

	$data = new mysqli("localhost","root","","make");
	$check = $data->query("SELECT * FROM user WHERE login ='$_SESSION[login]';");
	$row = $check->fetch_row();
	$_SESSION['Id'] = $row[0];
	if (isset($_GET['from_mess']) ) {
	$_SESSION["from_mess"] = htmlspecialchars($_GET['from_mess']);
	$_SESSION['to_mess'] = htmlspecialchars($_GET['to_mess']);
	}
?>

<html>
<head>
	<title>Message</title>
</head>
<body>
				<div>
					<?php echo "<br>Name : ".$row[3].'<br><br>'; ?>
					<?php echo "Surname : ".$row[4].'<br><br>'; ?>			
				</div>
				<div class='add_news' id='chatlogs'>
					<?php include('show_messages.php'); ?>
				</div>
				<form onsubmit="return false;" name="form3">
					<?php
						echo "<input type='text' value='".$_SESSION['from_mess']."' name='from_mess' style='display:none;'></input>".
					    	 "<input type='text' value='".$_SESSION['to_mess']."' name='to_mess' style='display:none;'></input>";
					?>
					<textarea name="message1" rows="2" class="text_news" onkeypress="key(event);" placeholder="message"></textarea>
					<input type="submit" class="button_mess" onclick='submit_messages1()' id="button_news" name='butt_message' value="Send message" disabled></input>
				</form>	
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="..js/javascript.js"></script>
<script type="text/javascript" src="..js/jquery-1.12.3.min.js"></script>
</html>