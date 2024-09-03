<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-SURVEY</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.5.2/dist/css/bootstrap.min.css">
    <style>
        /* Reset some default styles */
        .carousel {
            text-align: center;
        }

        /* Style the carousel images */
        .carousel-inner {
            width: 100%;
            height: 100vh; /* Set the height of the carousel to 100% of the viewport height */
        }

        .carousel-inner img {
            object-fit: cover; /* Maintain aspect ratio and cover the entire container */
            width: 100%;
            height: 100%; /* Set the height of the image to 100% to cover the entire carousel */
        }

        body, h1, h2, p, ul, li {
            margin: 0;
            padding: 0;
        }

        /* Global styles */
        body {
            font-family: "Press Start 2P", "consolas" sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            overflow: hidden; /* Hide vertical scroll bars */
            position: relative; /* Set the body to relative positioning */
        }

        /* Navbar styles (unchanged) */
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

        .navbar .logo {
            font-size: 24px;
            color: #e74c3c;
            font-weight: bold;
            margin-left: 20px;
        }

        .navbar .icon {
            display: none;
            font-size: 24px;
            margin-right: 20px;
            cursor: pointer;
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

        /* Add styles for the floating text animation */
        .floating-text {
            position: absolute; /* Set to absolute positioning */
            top: 70px; /* Adjust the distance from the bottom */
            left: 700px; /* Adjust the distance from the right */
            background-color: transparent; /* Semi-transparent white background */
            color: black; /* Text color is black */
            padding: 15px;
            font-size: 60px; /* Increased font size */
            border-radius: 5px;
            font-family: "Press Start 2P";
            font-weight: bold; /* Make the text bold */
            animation: floatText 5s linear infinite, colorChange 2s infinite alternate; /* Animation for floating text and color change */
        }

        /* Define the animation keyframes */
        @keyframes floatText {
            0% {
                transform: translate(0, 0); /* Start from the bottom right corner */
            }
            50% {
                transform: translate(-50%, -50%); /* Move up and left */
            }
            100% {
                transform: translate(0, 0); /* Return to the bottom right corner */
            }
        }

        @keyframes colorChange {
            0% {
                color: black; /* Start with black color */
            }
            100% {
                color: #e74c3c; /* End with the desired color (e.g., red) */
            }
        }
    </style>
</head>
<body>
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

    <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel" data-bs-interval="3000">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="https://media.licdn.com/dms/image/D5612AQHnasTKNB9Q-Q/article-cover_image-shrink_600_2000/0/1692323229467?e=2147483647&v=beta&t=-V5ypIYSInwqBspdTniyaUOESsgDlREFd6g6MJasgqE"
                    alt="Full-page GIF">
            </div>
        </div>
    </div>

    <!-- Add the floating text element -->
    <div class="floating-text">CREATE YOUR OWN FORMS</div>

    <!-- Include Bootstrap JS (jQuery is also required for Bootstrap) -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.5.2/dist/js/bootstrap.min.js"></script>
</body>
</html>
