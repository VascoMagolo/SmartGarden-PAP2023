<?php
session_start();
include ('../scripts/ligaBD.php');
include ('../scripts/verifica_SAdmin.php');
include ('../pages/head.php');
include('../pages/nav.php');

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

      
    </script>
  </head>
<!--style="background-image: url('backgroundimage.jpg');"-->
  <body>
    <style>#UL{color: #0cd268;}</style>
    <div style='overflow-x:auto;'>
  <table align="center" id="example" class="order-column" style="width:100%;background-color:white;">
  <caption> List of Logs </caption>

  <thead>
	  <tr>
    <th style="color: white;"> Login </th>
            <th style="color: white;"> Name </th>
		    <th style="color: white;"> DataLog </th>
			<th style="color: white;"> Type </th>
	  </tr>
  </thead>

<tbody>
	<?php
	$result = mysqli_query($ligaBD, "SELECT * FROM logs,users where Idestado=3 and logs.IDuser=users.IDuser");
	
	while($row = mysqli_fetch_assoc($result)) {
		echo "<tr>";
		echo "<td>" . $row['login'] . "</td>";
    echo "<td>" . $row['nome'] . "</td>";
		echo "<td>" . $row['Datalog'] . "</td>";
		echo "<td>" . $row['tipo'] . "</td>";
		echo"</tr>";
  }
    ?>
	<tfoot>
    <tr>
  <th style="color: white;"> Login </th>
            <th style="color: white;"> Name </th>
		    <th style="color: white;"> DataLog </th>
			<th style="color: white;"> Type </th>
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

