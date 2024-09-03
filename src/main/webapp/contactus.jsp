<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - E-Survey Web Application</title>
    <style>
        /* Reset some default styles */
        
         body, h1, h2, p, ul, li, form, input, textarea, button {
            margin: 0;
            padding: 0;
        }

        /* Apply basic styles */
        body {
            font-family: Arial, sans-serif;
        }

        header {
            background-color: #0077B6;
            color: #fff;
            text-align: center;
            padding: 20px;
        }

        h1 {
            font-size: 2em;
        }

        .contact-container {
            display: flex;
            justify-content: space-between;
        }

        .contact-info, .contact-form {
            flex: 1;
            padding: 20px;
        }

        .contact-info h2, .contact-form h2 {
            color: #0077B6;
            font-size: 1.5em;
        }

        ul {
            list-style: none;
            padding: 0;
        }

        ul li {
            margin-bottom: 10px;
        }

        a {
            text-decoration: none;
            color: #0077B6;
        }

        .contact-form input, .contact-form textarea {
            width: 100%;
            margin-bottom: 10px;
            padding: 10px;
            border: 1px solid #ccc;
        }

        .contact-form button, .actions button {
            background-color: #0077B6;
            color: #fff;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }

        .contact-form button:hover, .actions button:hover {
            background-color: #005f8c;
        }

        .contact-image {
            flex: 1;
            max-width: 100%;
            height: auto;
        } 
        
        
        
        /* Global styles */
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
       

        /* Your custom navbar styles */
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

        .navbar .services {
            flex: 1;
            display: flex;
            justify-content: flex-start;
        }

        .navbar .services a {
            color: #ecf0f1; /* Change the color of the navbar links */
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
    </style>
</head>
<body>
    <div class="navbar">
        <a href="auto" class="logo">E-Survey</a>
        <div class="services">
            <a href="home">Home</a>
            <a href="aboutus">About Us</a>
            <a href="login">Services</a>
            <a href="contactus">ContactUs</a>
            <a href="#">My Surveys</a>
        </div>
        <a href="login" class="login-signup">Login / Sign Up</a>
        <a href="javascript:void(0);" class="icon" onclick="toggleMenu()">
            &#9776;
        </a>
    </div>

      <header>
        <h1>Contact Us</h1>
        <p>We're here to assist you!</p>
    </header>
    <div class="contact-container">
        <div class="contact-info">
            <h2>Contact Information</h2>
            <ul>
                <li><a href="tel:123-456-7890">Phone: 123-456-7890</a></li>
                <li><a href="mailto:contact@yourcompany.com">Email: contact@yourcompany.com</a></li>
                <li>Business Address: 123 Main St, City, Country</li>
            </ul>
        </div>
        <div class="contact-form">
            <h2>Contact Us</h2>
            <form>
                <input type="text" name="name" placeholder="Your Name" required>
                <input type="email" name="email" placeholder="Your Email" required>
                <input type="tel" name="phone" placeholder="Your Phone">
                <input type="text" name="subject" placeholder="Subject" required>
                <textarea name="message" placeholder="Your Message" required></textarea>
                <button type="submit">Send Message</button>
            </form>
        </div>
    </div>
    <div class="actions">
        <button class="callback">Request a Callback</button>
        <button class "meeting">Schedule a Meeting</button>
        <button class="live-chat">Live Chat Support</button>
    </div>
    <img class="contact-image" src="https://static.vecteezy.com/system/resources/thumbnails/001/263/984/small/contact-us-concept.jpg" alt="Contact Image">

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
