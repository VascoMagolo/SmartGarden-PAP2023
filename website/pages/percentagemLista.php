<?php
session_start();
include ('../scripts/ligaBD.php');
include ('../scripts/verifica_SAdmin.php');
include ('../pages/head.php');
include('../pages/nav.php');
include('../scripts/percentagem.php');
?>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);
      var NumAdmin =<?php Print($NumAdmin); ?>;
      var NumUserA =<?php Print($NumUserA); ?>;
      var NumUN =<?php Print($NumUserN); ?>;

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Admins',     NumAdmin],
          ['User Normal',      NumUN],
          ['User Não aceite',  NumUserA]
        ]);

        var options = {
          title: 'Percentagem de Utilizador',
          is3D:true
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>

    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);
      var NumL23 =<?php Print($NumL23); ?>;
      var NumL22 =<?php Print($NumL22); ?>;
      var NumL21 =<?php Print($NumL21); ?>;
      var NumLO23 =<?php Print($NumLO23); ?>;
      var NumLO22 =<?php Print($NumLO22); ?>;
      var NumLO21 =<?php Print($NumLO21); ?>;

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Ano', 'Logins', 'Logouts'],
          ['2021',  NumL21,      NumLO21],
          ['2022',  NumL22,      NumLO22],
          ['2023',  NumL23,       NumLO23]
        ]);

        var options = {
          title: 'Logins E Logouts',
          legend: { position: 'bottom' }
        };

        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

        chart.draw(data, options);
      }
    </script>
</head>
<body>
    <style>#UP{color: #0cd268;}.col{min-height:20rem;}</style>
    <main>
    
        <div class="row" style='width:100%;'>  
            <div class="col">
                <div id="piechart" style="height:100%;"></div>
            </div>
            <div class="col">
                <div id="curve_chart" style="height:100%;"></div>
            </div>
        </div>
    
    </main>
  </body>
  <?php
include ('../pages/footer.php');
?>