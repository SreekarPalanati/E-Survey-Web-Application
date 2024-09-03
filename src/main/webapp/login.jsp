<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - E-Survey Web Application</title>
    <style>
        /* Reset some default styles */
        body, h1, p, ul, li {
            margin: 0;
            padding: 0;
        }

        /* Global styles */
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            background-image: url('https://images.unsplash.com/photo-1504868584819-f8e8b4b6d7e3?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c3vydmv5fGVufdb8fdb8fhww'); /* Add your background image URL here */
            background-size: cover;
            background-color: rgba(255, 255, 255, 0.75); /* Add the desired background transparency here */
            margin: 0;
        }

        /* Navbar styles */
        .navbar {
            background-color: #34495e;
            overflow: hidden;
            display: flex;
            justify-content: space between;
            align-items: center;
            padding: 15px 0;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }

        .navbar a {
            font-size: 18px;
            color: #ecf0f1;
            text-decoration: none;
            margin: 0 20px;
            transition: color 0.3s;
        }

        .navbar a:hover {
            color: #3498db;
        }

        /* Logo styles */
        .navbar .logo {
            font-size: 24px;
            color: #e74c3c;
            font-weight: bold;
            margin-left: 20px;
        }

        /* Mobile navigation icon */
        .navbar .icon {
            display: none;
            font-size: 24px;
            margin-right: 20px;
            cursor: pointer;
        }

        /* Align services to the left */
        .navbar .services {
            flex: 1;
            display: flex;
            justify-content: flex-start;
        }

        /* Create a dropdown when the screen is less than 600px wide */
        @media screen and (max-width: 600px) {
            .navbar {
                flex-direction: column;
                align-items: flex-start;
                padding: 15px;
            }
            .navbar .services {
                display: none;
            }
            .navbar .icon {
                display: block;
            }
        }

        /* Container styles */
        .container {
            background-color: rgba(255, 255, 255, 0.8); /* Add a semi-transparent white background color */
            backdrop-filter: blur(10px); /* Add a blur effect to the background */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
            max-width: 400px;
            margin: 0 auto;
            position: relative;
            top: 50px;
            border-radius: 5px;
        }

        /* Heading styles */
        h1 {
            color: #007bff;
            font-size: 2rem;
            text-align: center;
        }

        /* Form styles */
        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
            transparent: 100%;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        /* Button styles */
        .btn-container {
            text-align: center;
        }

        .btn-login {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
        }

        /* Redirect link styles */
        .redirect-link {
            text-align: center;
            margin-top: 20px;
        }

        .redirect-link a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="auto" class="logo">E-Survey</a>
        <div class="services">
            <a href="home">Home</a>
            <a href="aboutus">About Us</a>
            <a href="cards">Services</a>
            <a href="contactus">ContactUS</a>
            <a href="#">My Surveys</a>
        </div>
        <a href="login" class="login-signup">Login / Sign Up</a>
        <a href="javascript:void(0);" class="icon" onclick="toggleMenu()">
            &#9776;
        </a>
    </div>

    <div class="container">
        <h1>Login</h1>
        <form action="checkuserlogin" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <label>Enter Captcha:</label>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <input type="text" class="form-control" readonly id="capt">
                </div>
                <div class="form-group col-md-6">
                    <input type="text" class="form-control" id="textinput">
                </div>
            </div>

            <div class="form-group">
                <button onclick="validcap()" class="btn btn-lg btn-success btn-block">Submit</button>
            </div>

        </form>

        <div class="redirect-link">
            <p>Not registered? <a href="register">Register here</a></p>
        </div>
    </div>
    <h6>Captcha not visible <img src="https://previews.123rf.com/images/vasiffeyzullazadeh/vasiffeyzullazadeh1904/vasiffeyzullazadeh190400882/122592541-refresh-icon-isolated-on-white-background-refresh-icon-in-trendy-design-style-refresh-vector-icon.jpg" width="40px" onclick="cap()"></h6>
</body>
<script type="text/javascript">
    function cap() {
        var alpha = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V',
                    'W','X','Y','Z','1','2','3','4','5','6','7','8','9','0','a','b','c','d','e','f','g','h','i',
                    'j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z', '!','@','#','$','%','^','&','*','+'];
        var a = alpha[Math.floor(Math.random()*71)];
        var b = alpha[Math.floor(Math.random()*71)];
        var c = alpha[Math.floor(Math.random()*71)];
        var d = alpha[Math.floor(Math.random()*71)];
        var e = alpha[Math.floor(Math.random()*71)];
        var f = alpha[Math.floor(Math.random()*71)];

        var final = a + b + c + d + e + f;
        document.getElementById("capt").value = final;
    }

    function validcap() {
        var stg1 = document.getElementById('capt').value;
        var stg2 = document.getElementById('textinput').value;
        if (stg1 === stg2) {
            alert("CAPTCHA is validated successfully");
        } else {
            alert("Please enter a valid CAPTCHA");
        }
    }

    // Toggle the mobile menu
    function toggleMenu() {
        var menu = document.querySelector(".navbar");
        if (menu.className === "navbar") {
            menu.className += " responsive";
        } else {
            menu.className = "navbar";
        }
    }
</script>
</html>
