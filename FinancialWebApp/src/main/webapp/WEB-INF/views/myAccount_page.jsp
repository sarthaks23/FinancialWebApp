<!DOCTYPE html>
<html>

<head>
    <title>My Account</title>
    <link rel="stylesheet" href="resources/bootstrap/bootstrap-3.3.6-dist/css/bootstrap.css">
  	<link rel="stylesheet" href="resources/css/stylesheet.css">
</head>

<body>
    <div class="container" style="background-color: #000000" id="myHead">

        <div id="header-left">
            <div>
                <a href="http://placehold.it"><img src="http://placehold.it/100x100"></a>
            </div>
            <div class="col-md-2" id="headerText-left">
                <h1 id="me">Refine Me</h1>
            </div>
        </div>
        <div id="header-right" class="headerText-right">
            <div id="headerRightTab" style="color: #000000">
              <form id="dropdown" action="/FinancialWebApp/myHome" method="post">
                <select name="Calculations" style="margin-top: 22px;">
                  <option value="newCalc" style="color: #000000">New Calculation</option>
                  <option value="myCalc" style="color: #000000">My Calculations</option>
                  <option value="help" style="color: #000000">Help</option>
                </select>
              </form>
            </div>
            <div id="headerRightTab">
                <a href="" style="color:#ffffff"><h3>About</h3></a>
            </div>
            <div id="headerRightTab">
                <a href="" style="color:#ffffff"><h3>${username}</h3></a>
            </div>
            <div id="headerRightTab">
                <a href="" style="color:#ffffff"><h3>Sign Out</h3></a>
            </div>
        </div>
    </div>
    <div class="container" id="myBody">
      <h1>Welcome to your account, ${username}</h1>
      <div style="margin-top: 25px; height: 1px; width: 100%; background: #000000"></div>
      <div style="vertical-align: middle; margin: 25px; text-align: left">
        <form action="">
          <h3>Change Username:</h3>
          <br>
          <input id="UN" type="text" placeholder="${username}"/>
          <br>
          <br>
          <br>
          <h3>Change Password:</h3>
          <br>
          <input id="PW" type="password" placeholder="${password}"/>
          <br>
          <br>
          <br>
          <h3>Re-Enter New Password:</h3>
          <br>
          <input id="PW_Check" type="password" placeholder=""/>
          <br>
          <br>
          <br>
          <h3>Change Zip Code:</h3>
          <br>
          <input id="ZIP" type="text" placeholder="${zip}"/>
          <br>
          <br>
          <br>
          <input type="submit"/>
        </form>
      </div>
    </div>

    <div class="container" id="myFooter">
        <h4>Contact Us</h4>
    </div>

</body>

</html>
