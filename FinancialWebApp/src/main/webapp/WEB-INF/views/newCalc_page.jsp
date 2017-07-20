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
        <div class="container" style="border: 1px #000000 dashed">
          <form id="newCalc" action="" method="post">
            <p>Enter input fields later</p>
            <br>
            <br>
            <input type="submit" name="submit">
          </form>
        </div>
    </div>

    <div class="container" id="myFooter">
        <h4>Contact Us</h4>
    </div>

</body>

</html>
