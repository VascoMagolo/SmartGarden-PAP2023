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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel=stylesheet type="text/css" href="../css/styleforLists.css" />
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.js"></script>
    <script src="https://kit.fontawesome.com/122655af76.js" crossorigin="anonymous"></script>
    <script>
      $(document).ready(function() {
        $('#example').DataTable({
          "searching": true, 
          "lengthChange": true, 
          //"dom": '<"top"flp>rt<"bottom"ip>', 
          "language": {
            "lengthMenu": "Showing _MENU_ entrys per page" ,
            "search": "Search:",
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
    function showAlertAceitar(id) {
      var IDu=id;
      var choice = confirm("Are you sure you want to accept this user?");
      if (choice == true) {
        alert("Submitting...");

        window.location.href = `../scripts/Uaceitar.php?IDu=${IDu}`;
      } else {
        alert("Cancelling...");
        window.location.href = "../pages/listaAceitarU.php";
      }
    }
    function showAlertApagar(id) {
      var IDu=id;
      var choice = confirm("Are you sure that you want to delete this user?");
      if (choice == true) {
        alert("Submitting...");

        window.location.href = `../scripts/deleteuser.php?IDu=${IDu}`;
      } else {
        alert("Cancelling...");
        window.location.href = "../pages/listaAceitarU.php";
      }
    }
  </script>

  </head>
<!--style="background-image: url('backgroundimage.jpg');"-->
  <body>
      <style>#UC{color: #0cd268;}</style>
      <div style='overflow-x:auto;padding:15px;'>
  <table align="center" id="example" class="order-column" style="width:90%;background-color:white;">
  <caption> List of users to aprove </caption>
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
      <th style="color: white;"> UserState </th>
			<th style="color: white;"> Registration Date </th>
			<th style="color: white;"> Actions </th>
		</tr>
  </thead>

<tbody>
	<?php
  $result = mysqli_query($ligaBD, "SELECT * FROM users,tipouser,estados where (users.IDtipo=0 or users.IDestado=2 or users.IDestado=1) and tipouser.IDtipo=users.IDtipo and estados.IDestado=users.IDestado");
	while($row = mysqli_fetch_assoc($result)) {

		echo "<tr>";
		echo "<td>" . $row['login'] . "</td>";
		echo "<td>" . $row['nome'] . "</td>";
    echo "<td>" . $row['tipo'] . "</td>";
    echo "<td>" . $row['Estado'] . "</td>";
		echo "<td>" . $row['dataRegisto'] . "</td>";
		echo "<td>";
        echo"<button onclick='showAlertAceitar(".$row['IDuser'].")' data-toggle='tooltip' title='Accept'><i class='fa-solid fa-check' style='font-size:25px;color:green; aria-hidden=true;'></i></button>";
        echo"<button onclick='showAlertApagar(".$row['IDuser'].")'data-toggle='tooltip' title='Delete'><i class='fa-solid fa-user-slash' style='font-size:20px;color:red;aria-hidden=true;'></i></button>";
		echo"</td>";
		echo"</tr>";
  }
    ?>
	<tfoot>
  <tr>
      <th style="color: white;"> Login </th>
			<th style="color: white;"> Name </th>
			<th style="color: white;"> UserType </th>
            <th style="color: white;"> UserState </th>
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

