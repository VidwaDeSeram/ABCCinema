<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">
</head>
<body>
        <section id="header">
            <div class="nav flex-row">
                <img src="img/menu.png" class="menu-icon" width="25px" alt="menu-icon" onclick="myFunction()">
                <div class="logo-div">
                    <h1 class="logo">ABC<font color="#3D0000">Cinema</font></h1>
                </div>
                <div class="header-navbar">
                    <ul class="navbar-ul" id="menuitems">
                        <li><i class="fa search-res search-color fa-search"></i></li>
                        <li><a href="#">HOME</a></li>
                        <li><a href="#">ABOUT US</a></li>
                        <li><a href="#">CONTACT US</a></li>
                        <div class="social-icon-div">
                            <a href="#" class="fa social-icon fa-twitter"></a>
                            <a href="#" class="fa social-icon fa-instagram"></a>
                        </div>

                    </ul>

                </div>
            </div>

            <div class="below-nav">
                <h2 class="below-nav-heading">SIGN UP TO WATCH UNLIMITED MOVIES</h2>
            </div>
        </section>
        <!-- admin Form Section -->
        <section class="bg-wallpaper-payment-page" style="display: flex; align-items: center; justify-content: center;">
            <div class="adminLoginContainer">
                <div class="adminLoginContent">
                    <h1>Admin Login</h1>
                    <div class="form-content-admin">
                        <form name ="Adminlogin" action="index.jsp" method="post" onsubmit="return validate() ">
                            <div class="form-row">
                                <input type="text" name="adminUsername" id="adminUsername" placeholder="Username: " class="form-input">
                            </div>
                            <div class="form-row">
                                <input type="password" name="adminPassword" id="psw" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" placeholder="Password: " class="form-input">
                            </div>
                            <div class="form-row">
                                <center><input type="submit" value="Login" class="go-btn "></center>
                            </div>
                        </form>


                    </div>
                    <div id="message">
                        <h3>Password must contain the following:</h3>
                        <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
                        <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
                        <p id="number" class="invalid">A <b>number</b></p>
                        <p id="length" class="invalid">Minimum <b>8 characters</b></p>
                    </div>
                    <a href="forgotPassword.jsp">Forgot Password?</a>
                </div>
            </div>
        </section>

        <script language="JavaScript">
            function validate()
            {


                const myInput = document.getElementById("psw");
                const letter = document.getElementById("letter");
                const capital = document.getElementById("capital");
                const number = document.getElementById("number");
                const length = document.getElementById("length");

// When the user clicks on the password field, show the message box
                myInput.onfocus = function() {
                    document.getElementById("message").style.display = "block";
                }

// When the user clicks outside of the password field, hide the message box
                myInput.onblur = function() {
                    document.getElementById("message").style.display = "none";
                }

// When the user starts to type something inside the password field
                myInput.onkeyup = function() {
                    // Validate lowercase letters
                    const lowerCaseLetters = /[a-z]/g;
                    if(myInput.value.match(lowerCaseLetters)) {
                        letter.classList.remove("invalid");
                        letter.classList.add("valid");
                    } else {
                        letter.classList.remove("valid");
                        letter.classList.add("invalid");
                    }

                    // Validate capital letters
                    const upperCaseLetters = /[A-Z]/g;
                    if(myInput.value.match(upperCaseLetters)) {
                        capital.classList.remove("invalid");
                        capital.classList.add("valid");
                    } else {
                        capital.classList.remove("valid");
                        capital.classList.add("invalid");
                    }

                    // Validate numbers
                    const numbers = /[0-9]/g;
                    if(myInput.value.match(numbers)) {
                        number.classList.remove("invalid");
                        number.classList.add("valid");
                    } else {
                        number.classList.remove("valid");
                        number.classList.add("invalid");
                    }

                    // Validate length
                    if(myInput.value.length >= 8) {
                        length.classList.remove("invalid");
                        length.classList.add("valid");
                    } else {
                        length.classList.remove("valid");
                        length.classList.add("invalid");
                    }
                }

                //const regExp1 = /^(\d{1,2})\/(\d{1,2})\/(\d{2})$/;
                //const regExp2 = /^(\d{1,2})\/(\d{1,2})\/(\d{4})$/;
                //const result1 = document.form1.text1.value.match(regExp1);
                //const result2 = document.form1.text1.value.match(regExp2);
                if (document.Adminlogin.adminUsername.value == "")
                {
                    alert("Please Enter Your User Name!")
                    return false
                }


                if (document.Adminlogin.psw.value == "")
                    {
                        alert("Please Enter Your Password!")
                        return false
                    }

                else
                {
                document.Adminlogin.submit()
                }
            }
        </script>
    <footer>
        <div class="footer-upper-section">
            <div class="footer-links">
                <a href="#">Home</a>
                <a href="#">About Us</a>
                <a href="#">Contact Us</a>
                <a href="#">FAQ's</a>
                <a href="#">Feedback</a>
            </div>
            <div class="movie-policie-footer">
                <a href="#">Now Showing</a>
                <a href="#">Upcoming Movie</a>
                <a href="#">Privacy Policy</a>
                <a href="#">Terms & Conditions</a>
            </div>
            <div class="social-download-footer">
                <p>Let's get social!</p>
                <div class="footer-social">
                    <img src="img/social/insta-icon.png" alt="insta">
                    <img src="img/social/twitter-icon.png" alt="twitter">
                    <img src="img/social/youtube.png" alt="youtube">
                    <img src="img/social/tiktok.png" alt="tiktok">
                </div>
                <h3>ABC<font color="red">CINEMA</font> App for Mobile</h3>
                <div class="footer-stickers">
                    <img src="img/social/Appstore.png" alt="Appstore">
                    <img src="img/social/GooglePlay.png" alt="googleplay">

        <!-- End -->
        <section id="footer">
            <div class="fcontainer">
                <div class="frow row-color">
                    <div class="fcol-3">
                        <ul class="footer-ul first-sec-res">
                            <li><a href="#">Home</a></li>
                            <li><a href="#">About us</a></li>
                            <li><a href="#">Contact us</a></li>
                            <li><a href="#">FAQ's</a></li>
                            <li><a href="#">Feedback</a></li>
                        </ul>
                    </div>
                    <div class="fcol-3">
                        <ul class="footer-ul second-sec-res">
                            <li><a href="#">Now Showing</a></li>
                            <li><a href="#">Upcoming movies</a></li>
                            <li><a href="#">Privacy policy</a></li>
                            <li><a href="#">Terms & Conditions</a></li>
                        </ul>
                    </div>
                    <div class="fcol-3">
                        <p class="ftext">Follow us for exclusive offers and content!</p>
                        <a href="#" class="fa soc-icon fb fa-facebook"></a>
                        <a href="#" class="fa soc-icon ig fa-instagram"></a>
                        <a href="#" class="fa soc-icon tw fa-twitter"></a>
                        <a href="#" class="fa soc-icon yt fa-youtube"></a>
                        <p class="ftext">ABCCinema app for mobile</p>
                    </div>

                </div>
                <hr class="footerhr">
            </div>
        
            <div class="fcontainer ">
                <div class="frow row-end-color">
                    <div class="fcol-3">
                        <p class="ftext grey-text">Copyright © 2022 ABCCinema</p>
                    </div>
                    <div class="fcol-3">
                        <h1 class="logo logo-res-padding"><font color="white">ABC</font><font color="#A30000">Cinema</font></h1>
                    </div>
                    <div class="fcol-3">
                        <p class="ftext grey-text">All rights reserved. </p>
                    </div>
                </div>
                
            </div>
        </section>
    <script src="navtoggle.js"></script>
        <script>
            function myFunction() {
                var x = document.getElementById("menuitems");
                if (x.style.display === "none") {
                    x.style.display = "block";
                } else {
                    x.style.display = "none";
                }
            }

            const mediaQuery = window.matchMedia('(max-width: 800px)')

            if (mediaQuery.matches) {
                (function() {
                    var x = document.getElementById("menuitems");
                    x.style.display = "none";
                })();

            }

        </script>
</body>
</html>