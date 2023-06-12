<?php
session_start();
include("../scripts/ligaBD.php");
include("../pages/head.php");
include("../pages/nav.php");
?>
<head><meta name="viewport" content="width=device-width, initial-scale=1.0"></head>
<body>
     <style>
     .buttonPDF{width: 100%;
    float: left;
    font-size: 18px;
    background-color: #ffffff;
    color: #303036;
    padding: 10px 0px;
    text-align: center;
       
     }
     .no-cursor {
  cursor: not-allowed;
        
}
    #Tutorials { color: #0cd268; }
    #conts { min-width: 100; }
    .paddingTop { padding-top: 15px; padding-bottom: 15px; }
    @media only screen and (max-width: 320px) {
        .greenbox { width: 100%; }
        .col-lg-3{ width: 100%; }
        
        .col-lg-3{height:90%;}
    }
    @media only screen and (max-width: 767px) {
        .col-lg-3 { width: 500px; }
       
  
    }
    @media only screen and (min-width: 768px) and (max-width: 991px) {
        .col-lg-3 { width: 100%; }


    }
    @media only screen and (max-width:1000px){
        embed{
        visibility:hidden;width:0 !important;height:0 !important;}
        .col-lg-4{width:0;height:0;}
        .row{display:block;}
        .buttonPDF {visibility: visible;}
    }
     @media only screen and (min-width:1000px){
        .buttonPDF {visibility: hidden;}
    }
    </style>
      <!-- services section start -->
      <div class="services_section layout_padding padding_bottom_0">
        <div class="container" id='containerblog'>
          <h1 class="blog_text">Tutorial</h1>
    <script>
        let link='';
        let button;
    </script>
    <?php
    
    $result = mysqli_query($ligaBD, "SELECT * FROM projeto");
	while($row = mysqli_fetch_assoc($result)) {
    $titulo=explode("%",$row["Titulo"]);
    ?>
            <div class="row">
                <div class="col-lg-3 paddingTop greenbox">
                  <div class="call_box active">
                    <h2 class="emergency_text"><?php echo $titulo[0]?></h2>
                    <h1 class="call_text"><?php echo $titulo[1]?></h1>
                    <p class="dolor_text"><?php echo $row["Descricao"]; ?></p>
                    <a href='<?php echo $row["linkPdf"]; ?>' id='pdfB'class='buttonPDF' download>Download PDF</a>
                  </div>
                </div>
            <div class="col-lg-4 paddingTop">
                <embed id="pdf"src=<?php echo $row["linkPdf"]; ?> type="application/pdf" height="100%" width="200%" style='min-height:300px;'/>
            </div>
            </div>
                    <script>
                        link = '<?php echo $row["linkPdf"];?>';
                        b=document.getElementById("pdfB");
                        if(link.includes("#")){
                            b.setAttribute("onclick","return false");
                            b.classList.add("no-cursor");
                        }
                    </script>
            <?php
	}?>
        </div>
      </div>
      <!-- services section end -->
    
   </body>
   </html>
   <?php
	
   include("../pages/footer.php");
   ?>