<?php
session_start();
include('../scripts/ligaBD.php');
include ('../scripts/verifica_SN.php');
include("../pages/head.php");
include("../pages/nav.php");
$id=$_SESSION['idU'];
$query = "select dashboard from dashboard where iduser = {$id};";
$result = mysqli_query($ligaBD,$query);
$row = mysqli_fetch_row($result);
$dash=$row[0];
?>
<html>
    <style>
    iframe{
        width:100%;
        min-height:55rem;
        
    }
    </style>
    <main>
        <div>
            <div>
                <p>
                    Welcome To your private area
                    <br>
                    Here you can see your own datacake dashboard with the values of your sensors.
                </p>
                
            </div>
            <div>
                <iframe src='<?php echo $dash ?>' scrolling="no"></iframe>
            </div>
        </div>    
    </main>
</html>
<?php
include("../pages/footer.php");
?>