<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Survey Web Application</title>
    <style>
        /* Reset some default styles */
        body, h1, h2, p, ul, li {
            margin: 0;
            padding: 0;
        }

        /* Global styles */
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            color: #333;
        }

        /* Header styles */
        header {
            background-color: #007bff;
            color: #fff;
            text-align: center;
            padding: 80px 0;
        }

        /* Container styles */
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        /* Heading styles */
        h1 {
            color: #fff;
            font-size: 3rem;
            margin-bottom: 20px;
        }

        /* Subheading styles */
        h2 {
            font-size: 2rem;
            margin-bottom: 30px;
        }

        /* Text styles */
        p {
            font-size: 1.2rem;
            line-height: 1.5;
            margin-bottom: 20px;
        }

        /* Button styles */
        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        /* Image styles */
        .hero-image {
            max-width: 100%;
            height: auto;
        }

        /* Features section styles */
        .features {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 50px;
        }

        .feature {
            flex: 1;
            text-align: center;
            padding: 20px;
            margin: 10px;
            background-color: #fff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        .feature-icon {
            font-size: 2.5rem;
            margin-bottom: 10px;
            color: #007bff;
        }

        /* Footer styles */
        footer {
            background-color: #34495e;
            color: #ecf0f1;
            text-align: center;
            padding: 20px 0;
        }

        /* Navbar styles (shared from previous code) */
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

        .navbar .logo {
            font-size: 24px;
            color: #e74c3c;
            font-weight: bold;
            margin-left: 20px;
        }

        .navbar .services {
            flex: 1;
            display: flex;
            justify-content: flex-start;
        }

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
        
        
       table {
    border-collapse: collapse;
    width: 100%;
    max-width: 800px;
    margin: 0 auto;
}

th, td {
    border: 1px solid #ccc;
    padding: 12px;
    text-align: left;
}

th {
    background-color: #333;
    color: #fff;
    font-weight: bold;
    text-transform: uppercase;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

tr:hover {
    background-color: #ddd;
}

/* Style the table header and the first column differently */
th:first-child {
    border-top-left-radius: 5px;
    border-bottom-left-radius: 5px;
}

td:first-child {
    font-weight: bold;
}

/* Add some spacing between cells */
td, th {
    padding: 12px 16px;
}
td
{
color: black;
}

/* Add a box shadow to the table for a 3D effect */
table {
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
}

/* Center text in the "No of times LoggedIn" column */
td:nth-child(2) {
    text-align: center;
}

    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <a href="adminauto" class="logo">E-Survey</a>
        <div class="services">
            <a href="adminhome">Home</a>
            <a href="adminaboutus">About Us</a>
            <a href="admincontactus">Contact Us</a>
        </div>
        <a href="home" class="login-signup">Logout</a>
        <a href="javascript:void(0);" class="icon" onclick="toggleMenu()">
            &#9776;
        </a>
        
    </div>
    
  
  <table border=1>
    <tr>
      <th align="center">Username</th>
      <th align="center">No of times LoggedIn</th>
      
    </tr>

  <c:forEach items="${clist}"  var="c">
    <tr>
      <td>${c.username }</td>
      <td align="center"><b>${c.count }</b></td>
    </tr>
</c:forEach>
</table>
    <!-- Hero Section -->
    <header>
        <div class="container">
        
    
        	<h1>Hi ADMIN</h1>
            <h1>Welcome to E-Survey</h1>
            <h2>Conduct surveys with ease and gather valuable insights.</h2>
            <p>Our platform provides powerful survey creation tools, analytics, and reporting to help you make informed decisions.</p>
            <a href="usercards" class="btn">Get Started</a>
        </div>
        <img src="https://i.gifer.com/7ImI.gif" alt="Hero Image" class="hero-image">
    </header>

    <!-- Features Section -->
    <div class="container">
    
        <h2>Key Features</h2>
        <div class="features">
            <div class="feature">
                <div class="feature-icon">&#9733;</div>
                <h3>User-Friendly Surveys</h3>
                <p>Create surveys effortlessly with our intuitive interface.</p>
            </div>
            <div class="feature">
                <div class="feature-icon">&#128202;</div>
                <h3>Data Analysis</h3>
                <p>Gain valuable insights from survey responses through powerful analytics.</p>
            </div>
            <div class="feature">
                <div class="feature-icon">&#9993;</div>
                <h3>Customizable Design</h3>
                <p>Customize the look and feel of your surveys to match your brand.</p>
            </div>
        </div>
    </div>

    <!-- Additional Content -->
    <div class="container">
        <h2>Why E-Survey is Important</h2>
        <p>E-Survey is an essential tool for businesses and organizations of all sizes. Here's why it's important:</p>
        <ul>
            <li>**Gather Valuable Insights:** E-Survey allows you to collect feedback and data from your target audience, helping you make informed decisions and improvements.</li>
            <li>**Time and Cost-Efficient:** Conducting surveys online is cost-effective and saves time compared to traditional paper surveys.</li>
            <li>**Wide Reach:** Reach a larger audience with online surveys, expanding your data collection efforts.</li>
            <li>**Versatile:** E-Surveys can be used for small-scale surveys or large-scale market research, making it adaptable to various needs.</li>
        </ul>
    </div>

    <!-- Uses of E-Survey -->
    <div class="container">
        <h2>Uses of E-Survey</h2>
        <p>E-Survey has a wide range of applications, including:</p>
        <ul>
            <li>**Market Research:** Understand market trends and consumer preferences.</li>
            <li>**Customer Feedback:** Gather feedback from customers to enhance products and services.</li>
            <li>**Employee Engagement:** Measure employee satisfaction and engagement within your organization.</li>
            <li>**Academic Research:** Conduct research surveys in educational institutions.</li>
        </ul>
    </div>
	<!-- Number of Users Analysis -->
	<div class="container" style="display: flex; align-items: center;">
		<div style="flex: 1;">
    <h2>Number of E-Survey Users</h2>
    <p>Our E-Survey platform has been adopted by a diverse range of users:</p>
    <ul>
        <li>**Small Businesses:** Thousands of small businesses use E-Survey to gather feedback from their customers and improve their products and services.</li>
        <li>**Enterprises:** Major corporations and enterprises rely on E-Survey for in-depth market research, employee engagement, and more.</li>
        <li>**Academic Institutions:** Educational institutions, including universities and schools, use E-Survey for academic research and student feedback.</li>
        <li>**Government Organizations:** Government agencies leverage E-Survey for citizen engagement and data collection.</li>
    </ul>
    <p>The collective user base of E-Survey continues to grow, making it a trusted platform for survey and data analysis needs.</p>
		</div>
    <!-- Add your image here -->
    <img src="https://media.licdn.com/dms/image/D5612AQFRJ2AkBN37iA/article-inline_image-shrink_1000_1488/0/1692325914479?e=1701907200&v=beta&t=NW2swgJAxLkAB4R2x__1GzAA1eg0p4DXX-HYryyQSJA" alt="Number of E-Survey Users" class="user-analysis-image">
</div>


    <!-- Footer -->
    <footer>
        <div class="container">
            &copy; 2023 E-Survey Web Application. All rights reserved.
        </div>
    </footer>

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
