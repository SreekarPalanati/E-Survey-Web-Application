<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Survey Cards</title>
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
    overflow: hidden; /* Hide vertical scroll bars */
    position: relative; /* Set the body to relative positioning */
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

/* Floating text animation styles */
.floating-text {
    position: absolute;
    top: 70px;
    left: 700px;
    background-color: transparent;
    color: black;
    padding: 15px;
    font-size: 60px;
    border-radius: 5px;
    font-weight: bold;
    animation: floatText 5s linear infinite, colorChange 2s infinite alternate;
}

/* Define the animation keyframes */
@keyframes floatText {
    0% {
        transform: translate(0, 0);
    }
    50% {
        transform: translate(-50%, -50%);
    }
    100% {
        transform: translate(0, 0);
    }
}

@keyframes colorChange {
    0% {
        color: black;
    }
    100% {
        color: #e74c3c;
    }
}

/* Article styles */
article {
    --img-scale: 1.001;
    --title-color: black;
    --link-icon-translate: -20px;
    --link-icon-opacity: 0;
    position: relative;
    border-radius: 16px;
    box-shadow: none;
    background: #fff;
    transform-origin: center;
    transition: all 0.4s ease-in-out;
    overflow: hidden;
    margin:30px auto;
}

article a::after {
    position: absolute;
    inset-block: 0;
    inset-inline: 0;
    cursor: pointer;
    content: "";
}

/* Basic article elements styling */
article h2 {
    margin: 0 0 18px 0;
    font-family: "Bebas Neue", cursive;
    font-size: 1.9rem;
    letter-spacing: 0.06em;
    color: var(--title-color);
    transition: color 0.3s ease-out;
}

figure {
    margin: 0;
    padding: 0;
    aspect-ratio: 16 / 9;
    overflow: hidden;
}

article img {
    max-width: 100%;
    transform-origin: center;
    transform: scale(var(--img-scale));
    transition: transform 0.4s ease-in-out;
}

.article-body {
    padding: 24px;
}

article a {
    display: inline-flex;
    align-items: center;
    text-decoration: none;
    color: #28666e;
}

article a:focus {
    outline: 1px dotted #28666e;
}

article a .icon {
    min-width: 24px;
    width: 24px;
    height: 24px;
    margin-left: 5px;
    transform: translateX(var(--link-icon-translate));
    opacity: var(--link-icon-opacity);
    transition: all 0.3s;
}

/* Using the has() relational pseudo selector to update custom properties */
article:has(:hover, :focus) {
    --img-scale: 1.1;
    --title-color: #28666e;
    --link-icon-translate: 0;
    --link-icon-opacity: 1;
    box-shadow: rgba(0, 0, 0, 0.16) 0px 10px 36px 0px, rgba(0, 0, 0, 0.06) 0px 0px 0px 1px;
}

/* Generic layout (demo looks) */
*,
*::before,
*::after {
    box-sizing: border-box;
}

body {
    margin: 0;
    padding: 0;
    font-family: "Figtree", sans-serif;
    font-size: 1.2rem;
    line-height: 1.6rem;
    background-image: linear-gradient(45deg, #7c9885, #b5b682);
    min-height: 100vh;
}

.articles {
    display: grid;
    max-width: 1200px;
    margin-inline: auto;
    padding-inline: 24px;
    grid-template-columns: repeat(auto-fill, minmax(320px, 1fr));
    gap: 24px;
}

@media screen and (max-width: 960px) {
    article {
        container: card/inline-size;
    }
    .article-body p {
        display: none;
    }
}

@container card (min-width: 380px) {
    .article-wrapper {
        display: grid;
        grid-template-columns: 100px 1fr;
        gap: 16px;
    }
    .article-body {
        padding-left: 0;
    }
    figure {
        width: 100%;
        height: 100%;
        overflow: hidden;
    }
    figure img {
        height: 100%;
        aspect-ratio: 1;
        object-fit: cover;
    }
}

.sr-only:not(:focus):not(:active) {
    clip: rect(0 0 0 0);
    clip-path: inset(50%);
    height: 1px;
    overflow: hidden;
    position: absolute;
    white-space: nowrap;
    width: 1px;
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
<section class="articles">
    <article>
        <div class="article-wrapper">
            <figure>
                <img src="https://us.123rf.com/450wm/bestshop/bestshop1503/bestshop150300010/37545301-business-meeting-in-an-office.jpg?ver=6" alt="" />
            </figure>
            <div class="article-body">
                <h2>Create an Organization survey</h2>
                <p>
                </p>
                <a href="service" class="read-more">
                    Create  <span class="sr-only"></span>
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon" viewBox="0 0 20 20" fill="currentColor">
                        <path fill-rule="evenodd" d="M12.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-2.293-2.293a1 1 0 010-1.414z" clip-rule="evenodd" />
                    </svg>
                </a>
            </div>
        </div>
    </article>
    <article>
        <div class "article-wrapper">
            <figure>
                <img src="https://images.pexels.com/photos/936137/pexels-photo-936137.jpeg?cs=srgb&dl=pexels-nappy-936137.jpg&fm=jpg" alt="" />
            </figure>
            <div class="article-body">
                <h2>Create a Business survey</h2>
                <p>
                </p>
                <a href="service" class="read-more">
                    Create<span class="sr-only"></span>
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon" viewBox="0 0 20 20" fill="currentColor">
                        <path fill-rule="evenodd" d="M12.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-2.293-2.293a1 1 0 010-1.414z" clip-rule="evenodd" />
                    </svg>
                </a>
            </div>
        </div>
    </article>
    <article>
        <div class="article-wrapper">
            <figure>
                <img src="https://media.istockphoto.com/id/1395304859/photo/businessmen-protecting-personal-data-on-laptop-and-virtual-interfaces.webp?b=1&s=170667a&w=0&k=20&c=qmindqt64G2Z3_E3FrWq1RZLTh5umjhYMZfdz3pNScU=" alt="" />
            </figure>
            <div class="article-body">
                <h2>Create a personal survey</h2>
                <p>
                </p>
                <a href="service" class="read-more">
                    Create <span class="sr-only"></span>
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon" viewBox="0 0 20 20" fill="currentColor">
                        <path fill-rule="evenodd" d="M12.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-2.293-2.293a1 1 0 010-1.414z" clip-rule="evenodd" />
                    </svg>
                </a>
            </div>
        </div>
    </article>
</section>
</body>
</html>
