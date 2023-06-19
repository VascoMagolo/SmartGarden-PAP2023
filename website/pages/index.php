<?php
session_start();
include("../pages/head.php");
include("../pages/nav.php");

?>
<body>   
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<link rel="stylesheet" href="../css/styleImportant.css">
<style>
        #Home{color: #0cd268;}
        .content-index{display:flex;flex-wrap:wrap;justify-content:center;align-items:center;margin-top:50px;}
        .about_section{padding-bottom:0px;}
        .col-md-5{display: flex;align-items: flex-start;}
      
        .typewriter {
        overflow: hidden;
        white-space: nowrap;
        width: 0;
        animation: typing;
        animation-duration: 3.5s;
        animation-timing-function: steps(30, end);
        animation-fill-mode: forwards;
        }

        @keyframes typing {
        from { width: 0 }
        to { width: 100% }
        }

</style>
    <div class="banner_section">
            <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 padding_0" style='padding-left:0;'>
                <div id="main_slider" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="banner_bg">
                        <div class="banner_taital_main content-index">
                            <h1 class="banner_taital">Creating home automation solutions suitable for gardens</h1>
                           <!--
                            <p class="long_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                           -->                             
                           <div class="btn_main">
                            <div class="about_us"><a href="#about">About Us</a></div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="banner_bg">
                        <div class="banner_taital_main content-index">
                            <h1 class="banner_taital">Making a concerted effort to reduce our water consumption</h1>
                           <!--
                            <p class="long_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                           -->                             <div class="btn_main">
                            <div class="about_us"><a href="#about">About Us</a></div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="banner_bg">
                        <div class="banner_taital_main">
                            <h1 class="banner_taital">Utilizing LoRaWAN technology to contribute to a more sustainable future for our planet</h1>
                           <!--
                            <p class="long_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                           --> 
                            <div class="btn_main">
                            <div class="about_us"><a href="#about">About Us</a></div>
                            </div>
                        </div>
                        </div>
                    </div>
                    </div>
                    
                    <a class="carousel-control-next" href="#main_slider" role="button" data-slide="next" style='background-color:#fff;color:#303136;margin-left:30px;'>
                    <i class="fa fa-angle-left"></i></a>
                    <a class="carousel-control-prev" href="#main_slider" role="button" data-slide="prev" style='background-color:#303136;color:#fff;margin-top:-30px;margin-left:30px;'>
                    <i class="fa fa-angle-right"></i>
                    </a>
                </div>
                </div>

            </div>
            </div>
        </div>
        <!-- banner section end -->
        <div class="about_section layout_padding">
        <div class="container-fluid">
          <div class="row">
           <div class="col-md-1"></div> 
            <div class="col-md-5">
              <div class="about_taital">
                <h4 class="about_text" id="about" style='margin-top:30px;'>About</h4>
                <h1 class="highest_text">The Project</h1>
                <p class="lorem_text" style='text-align:justify;'>This project aims to develop an innovative solution that addresses the pressing need to reduce water consumption in home garden irrigation systems. 
                The proposed solution will be completely automatic, self-sustainable, and powered by solar energy, making it an eco-friendly option. 
                To implement this solution, the cutting-edge LoRaWAN technology will be employed, and a thorough investigation will be conducted to explore the true potential and capabilities of this network type. 
                The sensor network will be comprised of advanced equipment designed to accurately detect the water level in the soil, and by leveraging the power of the LoRaWAN network, data will be transmitted and stored in a secure and reliable database.</p>
                <div class="read_bt"><a href="#">Read More</a></div>
              </div>
            </div>
            <div class="col-md-1"></div>
            <div class="col-md-4" style='padding-left:20px;margin-top:100px;padding-right:0px;'>
              <iframe class='image_2' src="https://docs.google.com/presentation/d/e/2PACX-1vQ5Jkg9pCSx69zK1jaMEau6ZlIyrtZpoEDOStozQdydevSUA2BylquAk6XhX0r6EwTjfeeSUwkYQ49r/embed?start=true&loop=true&delayms=3000" frameborder="0" width="480" height="299" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true" autofocus="false"></iframe>
            </div>
            <div class="col-md-1"></div>
          </div>
          <div class='row'>
              <div class='col-md-1'></div>
            <div class='col-md-10' style=overflow:hidden;;>
                <h1 class="highest_text" style='padding-top:55px;'>Where are we</h1>
                <iframe id='maps' src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5558.669072721147!2d-8.561084632625645!3d40.923224704163886!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd2380e18e9e8de7%3A0xa24ca1f0475f99be!2sEscola%20Secund%C3%A1ria%20de%20Santa%20Maria%20da%20Feira!5e0!3m2!1spt-PT!2spt!4v1684402706574!5m2!1spt-PT!2spt" width="100" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" scrolling="no"></iframe>            
            </div>
            <div class='col-md-1'></div>
        </div>
            <script>
            document.getElementById("maps").width = window.innerWidth-35;
                function foo() {
                   document.getElementById("maps").width = window.innerWidth-35;
                }
                // Set up a listener 
            window.addEventListener('resize', foo);
            </script>
        </div>
      </div>
          <!-- copyright section end -->
      <!-- Javascript files-->
      <script src="../js/jquery.min.js"></script>
      <script src="../js/popper.min.js"></script>
      <script src="../js/bootstrap.bundle.min.js"></script>
      <script src="../js/jquery-3.0.0.min.js"></script>
      <script src="../js/plugin.js"></script>
      <!-- sidebar -->

      

      
<?php
include("../pages/footer.php");
?>