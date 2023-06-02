<?php
session_start();
include("head.php");
include("nav.php");
?>
<head><meta name="viewport" content="width=device-width, initial-scale=1.0"></head>
<body>
     <style>
    #Tutorials { color: #0cd268; }
    #conts { min-width: 100; }
    .paddingTop { padding-top: 15px; padding-bottom: 15px; }
    @media only screen and (max-width: 320px) {
        .greenbox { width: 100%; }
        .col-lg-3, .col-lg-4 { width: 100%; }
        .col-sm-1 { display: none; }
        embed { width: 100%; }
        .col-lg-3{height:90%;}
    }
    @media only screen and (max-width: 767px) {
        .col-lg-3, .col-lg-4 { width: 100%; }
        .col-sm-1 { display: none; }
        embed { width: 100%; }
    }
    @media only screen and (min-width: 768px) and (max-width: 991px) {
        .col-lg-3 { width: 100%; }
        .col-lg-4 { width: 100%; }
        .col-sm-1 { display: none; }
        embed { width: 100%; }
    }
    </style>
      <!-- services section start -->
      <div class="services_section layout_padding padding_bottom_0">
        <div class="container" id='containerblog'>
          <h1 class="blog_text">Tutorial</h1>
            <div class="row">
                <div class="col-lg-3 paddingTop">
                  <div class="call_box active greenbox" >
                    <h2 class="emergency_text">WisGate Edge Lite 2</h2>
                    <h1 class="call_text">Configuration</h1>
                    <p class="dolor_text">In this tutorial,I'm going to explain step by step w/ images ,how to configure this gateway to be able to connect to the internet of things </p>
                  </div>
                </div>
                <div class="col-sm-1 paddingTop">
                </div>
                <div class="col-lg-4 paddingTop">
                    <embed src="./text_tutorial/#.pdf" type="application/pdf" height="100%" width="200%" style='min-height:300px;'/>
                </div>
           <div class="w-100"></div>
            <div class="col-lg-3 paddingTop greenbox">
              <div class="call_box active">
                <h2 class="emergency_text">WisGate Edge Lite 2</h2>
                <h1 class="call_text">Connection to TTN</h1>
                <p class="dolor_text">In this tutorial,I'm going to explain step by step w/ images ,how to connect this gateway to TTN as well as a end device </p>
              </div>
            </div>
            <div class="col-sm-1 paddingTop">
                
            </div>
            <div class="col-lg-4 paddingTop">
                <embed src="./text_tutorial/ttnTest.pdf" type="application/pdf" height="100%" width="200%" style='min-height:300px;'/>
            </div>
        </div>
      </div>
      <!-- services section end -->

   </body>
   </html>
   <?php
   include("footer.php");
   ?>