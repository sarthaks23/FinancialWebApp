<!DOCTYPE html>
<html>

<head>
<title>Login</title>
<link rel="stylesheet"
	href="resources/bootstrap/bootstrap-3.3.6-dist/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/stylesheet.css">
</head>

<body>
	<div class="container" style="background-color: #000000" id="myHead">

		<div id="header-left">
			<div>
				<a href="http://placehold.it"><img
					src="http://placehold.it/100x100"></a>
			</div>
			<div class="col-md-2" id="headerText-left">
				<h1 id="me">Refine Me</h1>
			</div>
		</div>
		<div id="header-right" class="headerText-right">
			<div id="headerRightTab">
				<a href="/home" style="color: #ffffff"><h3>About</h3></a>
			</div>
			<div id="headerRightTab">
				<a href="/login" style="color: #ffffff"><h3>Log In</h3></a>
			</div>
			<div id="headerRightTab">
				<a href="/signup" style="color: #ffffff"><h3>Sign Up</h3></a>
			</div>
		</div>
	</div>
	<div class="container" id="myBodyForm">
		<form id="login" action="/createuser">
        		<div id="form_right_SI">
            			<h4>Enter Zipcode</h4>
            			<br>
            			<input type="text" name="ZIP" value="" placeholder="5-Digit ZIP" style="margin-right: -75px;">
            			<br> <br> <br>
            			<br> <br>
			        <!--<a href="/createuser">-->
            			<input type="submit" name="button" style="width: 100px; height: 50px; margin-right: -250px;">
        		</div>
        		<div id="form_left">
            			<h4 style="margin-left: -150px">Enter Email</h4>
            			<input type="text" name="Email_Field" value="" placeholder="someone@example.com"> <br> <br>
            			<h4 style="margin-left: -150px">Enter Username</h4>
            			<input type="text" name="UN_Field" value="" placeholder="Username"> <br> <br>
            			<h4 style="margin-left: -150px">Enter Password</h4>
            			<input type="password" name="PW_Field" value="" placeholder="Password"> <br> <br>
            			<h4 style="margin-left: -150px">Re-Enter Password</h4>
            			<input type="password" name="RPW_Field" value="" placeholder="Re-Enter Password">
        		</div>
        		<div class="line" id="verticalLine" style="height: 400px; margin-left: 50%"></div>
        	</form>

	</div>


	<div class="container" id="myFooter">
		<h4>Contact Us</h4>
	</div>

</body>

</html>
