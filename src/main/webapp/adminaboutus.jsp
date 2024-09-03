
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
   body, h1, h2, p, ul, li {
            margin: 0;
            padding: 0;
        }

        /* Global styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f2f2f2;
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
        
        
         
         
           /* Reset some default styles for browsers */
        body, h1, p, img, ul, li {
            margin: 0;
            padding: 0;
        }

        /* Apply basic styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            text-align: center;
        }

        header {
            background-color: #0077B6;
            color: #fff;
            padding: 20px;
        }

        h1 {
            font-size: 2em;
        }

        .content {
            padding: 20px;
            background-color: #fff;
            margin: 20px auto;
            max-width: 800px;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        p {
            margin: 20px 0;
        }

        ul {
            list-style: none;
            padding-left: 0;
        }

        li {
            margin: 10px 0;
            display: flex;
            align-items: center;
        }

        img {
            max-width: 100%;
            height: auto;
            display: block;
            margin: 20px auto;
        }

        .feature-icon {
            width: 40px;
            height: 40px;
            margin-right: 10px;
            background-color: #0077B6;
            color: #fff;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
        }
</style>
</head>
<body>
  <div class="navbar">
        <a href="adminauto" class="logo">E-Survey</a>
        <div class="services">
            <a href="adminhome">Home</a>
            <a href="adminaboutus">About Us</a>
           
            <a href="contactus">ContactUs</a>
         
        </div>
        <a href="home" class="login-signup">Logout</a>
        <a href="javascript:void(0);" class="icon" onclick="toggleMenu()">
            &#9776;
        </a>
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
   
   
    <header>
        <h1>Welcome to E-Survey Forms</h1>
    </header>

    <div class="content">
        <p>At E-Survey Forms, we are passionate about making data collection and analysis simple and effective.</p>
        <p>Our mission is to help you gather valuable insights from your target audience and make informed decisions.</p>
        <p>Whether you need market research, customer feedback, or academic surveys, we've got you covered.</p>
    </div>

    <img src="https://img.freepik.com/free-vector/online-survey-tablet_3446-296.jpg" alt="Survey Image 1">

    <div class="content">
        <p>Our E-Survey Forms offer a wide range of features:</p>
        <ul>
            <li>
                <div class="feature-icon">1</div>
                Customizable form templates
            </li>
            <li>
                <div class="feature-icon">2</div>
                Real-time data collection
            </li>
            <li>
                <div class="feature-icon">3</div>
                Detailed analytics and reports
            </li>
            <li>
                <div class="feature-icon">4</div>
                Secure and reliable data storage
            </li>
        </ul>
    </div>

    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzefr3zrNh1RUclrNBxwjvp-2Ll2ZvbMkl3rg3gFVLf3wFUWmm3QI4chmgM0PYUOudRoU&usqp=CAU" alt="Survey Image 2">

    <div class="content">
        <p>Join us in the world of online surveys and unlock the power of data-driven decision-making. Your success starts with E-Survey Forms.</p>
    </div>

    <img src="https://cdn3.notifyvisitors.com/blog/wp-content/uploads/2020/08/28101109/What-Are-Online-Surveys.jpg" alt="Survey Image 3">

    <div class="content">
        <h2>Why Choose E-Survey Forms?</h2>
        <p>E-Survey Forms stands out because of:</p>
        <ul>
            <li>
                <div class="feature-icon">5</div>
                Easy-to-use interface
            </li>
            <li>
                <div class="feature-icon">6</div>
                Robust data security
            </li>
            <li>
                <div class="feature-icon">7</div>
                24/7 customer support
            </li>
        </ul>
    </div>

    <img src="https://static.vecteezy.com/system/resources/thumbnails/005/636/774/small/online-survey-concept-design-for-web-or-app-businessmen-fill-online-form-computer-flat-vector.jpg" alt="Survey Image 4">
    
    <div class="content">
        <h2>Get Started Today</h2>
        <p>Don't miss out on the benefits of our E-Survey Forms. Start making informed decisions today!</p>
        <a href="contactus">Contact Us</a>
    </div>
</body>
</html>