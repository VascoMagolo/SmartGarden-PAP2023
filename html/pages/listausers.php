<?php
session_start();
include ('../scripts/ligaBD.php');
include ('../scripts/verifica_SAdmin.php');
include ('../pages/head.php');
include ('../pages/nav.php');

?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.css">
    <link rel=stylesheet type="text/css" href="../css/styleforLists.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.js"></script>
    <script src="https://kit.fontawesome.com/122655af76.js" crossorigin="anonymous"></script>
    <script>
      $(document).ready(function() {
        $('#example').DataTable({
          "searching": true, 
          "lengthChange": true, 
          //"dom": '<"top"flp>rt<"bottom"ip>', 
          "language": {
            "lengthMenu": "Mostrar _MENU_ entradas por página" ,
            "search": "Pesquisar:",
            "decimal":        "",
            "emptyTable":     "No data available in table",
            "info":           "Showing _START_ to _END_ of _TOTAL_ entries",
            "infoEmpty":      "Showing 0 to 0 of 0 entries",
            "infoFiltered":   "(filtered from _MAX_ total entries)",
            "infoPostFix":    "",
            "thousands":      ",",
            "loadingRecords": "Loading...",
            "processing":     "",
            "zeroRecords":    "No matching records found",
            "paginate": {
                "first":      "First",
                "last":       "Last",
                "next":       "Next",
                "previous":   "Previous"
            },
            "aria": {
                "sortAscending":  ": activate to sort column ascending",
                "sortDescending": ": activate to sort column descending"
            }
          }
        });
      });
      function openForm(id) {
        var IDu=id;
            window.location.href = `../pages/updateU.php?id=${IDu}`;
      }
    function showAlertResetPW(id) {
      var IDu=id;
      var choice = confirm("Are you sure you want to reset the password of this user?");
      if (choice == true) {
        alert("Submitting...");

        window.location.href = `../scripts/resetPWBA.php?id=${IDu}`;
      } else {
        alert("Cancelling...");
        window.location.href = "../pages/listausers.php";
      }
    }
    function showAlertBanir(id) {
      var IDu=id;
      var choice = confirm("Are you sure that you wanna ban this user?");
      if (choice == true) {
        alert("Submitting...")
        window.location.href = `../scripts/banirU.php?id=${IDu}`;
      } else {
        alert("Cancelling...");
        window.location.href = "../pages/listausers.php";
      }
    }
    </script>
  </head>
<!--style="background-image: url('backgroundimage.jpg');"-->
  <body>
      <style>#UM{color: #0cd268;}</style>
<div style='overflow-x:auto;'>
  <table align="center" id="example" class="order-column" style="width:100%;background-color:white;">
  <caption> List of Users </caption>
  <style>
    button{
      background-color:transparent;
      border:0;
    }
  </style>
  <thead>
  <tr>
    <th style="color: white;"> Login </th>
        <th style="color: white;"> Name </th>
        <th style="color: white;"> UserType </th>
        <th style="color: white;"> Registration Date </th>
        <th style="color: white;"> Actions </th>
    </tr>
  </thead>
<tbody>
	<?php

  $result = mysqli_query($ligaBD, "SELECT * FROM users,tipouser where users.IDestado=3 and tipouser.IDtipo=users.IDtipo");
	while($row = mysqli_fetch_assoc($result)) {

		echo "<tr>";
		echo "<td>" . $row['login'] . "</td>";
		echo "<td>" . $row['nome'] . "</td>";
    echo "<td>" . $row['tipo'] . "</td>";
		echo "<td>" . $row['dataRegisto'] . "</td>";
		echo "<td>";
    echo"<button class='open-button ' onclick='openForm(".$row['IDuser'].")' data-toggle='tooltip' title='Edit'>
          <i class='fa-solid fa-user-pen' style='font-size:20px;color:black; aria-hidden=true;'>
          </i>
          </button>";
    if ($_SESSION['idU']==$row['IDuser']){
    }else{
      echo"<button onclick='showAlertBanir(".$row['IDuser'].")' data-toggle='tooltip' title='Ban'>
      <i class='fa-solid fa-user-slash' style='font-size:20px;color:red;aria-hidden=true;'>
      </i></button>";
    }
    echo"<button onclick='showAlertResetPW(".$row['IDuser'].")' data-toggle='tooltip' title='Reset PW'>
    <i class='fa-solid fa-bookmark'style='font-size:20px;color:black;aria-hidden=true;'>
    </i></a>";
    echo"</td>";
		echo"</tr>";
  }
    ?>
	<tfoot>
  <tr>
    <th style="color: white;"> Login </th>
        <th style="color: white;"> Name </th>
        <th style="color: white;"> UserType </th>
        <th style="color: white;"> Registration Date </th>
        <th style="color: white;"> Actions </th>
		</tr>
	</tfoot>
</tbody>
</table>
</div>
</body>
<?php
include ('../pages/footer.php');
?>
</html>

