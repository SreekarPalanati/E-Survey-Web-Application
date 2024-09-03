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
            background-image: url('https://www.calsurvey.com/wp-content/uploads/2022/06/online-web-surveys-legal-research.jpg'); /* Add your background image URL here */
            background-size: cover;
            background-color: rgba(255, 255, 255, 0.75); /* Add the desired background transparency here */
            margin: 0;
        }

        /* Navbar styles */
        .navbar {
            background-color: #34495e;
            overflow: hidden;
            display: flex;
            justify-content: space-between;
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
            margin-bottom: 5px;
            font-weight: bold;
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
${message}
    <div class="navbar">
        <a href="adminauto" class="logo">E-Survey</a>
        <div class="services">
            <a href="adminhome">Home</a>
            <a href="adminaboutus">About Us</a>
            
            <a href="admincontactus">ContactUS</a>

        </div>
        <a href="home" class="login-signup">Logout</a>
        <a href="javascript:void(0);" class="icon" onclick="toggleMenu()">
            &#9776;
        </a>
    </div>

    <div class="container">
    ${message}
        <h1>Login</h1>
        <form action="checkadminlogin" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <div class="btn-container">
                <button type="submit" class="btn-login">Login</button>
            </div>
        </form>

        <div class="redirect-link">
            <p>Not registered? <a href="register">Register here</a></p>
        </div>
    </div>

    <script>
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
</body>
</html>
