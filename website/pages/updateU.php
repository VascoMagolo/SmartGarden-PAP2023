<?php
session_start();
include ('../scripts/ligaBD.php');
include ('../scripts/verifica_SAdmin.php');
include ('../pages/head.php');
include ('../pages/nav.php');
$idToEdit = $_GET['id'];
$query = "SELECT IDuser, login, nome, IDtipo, IDestado from users where IDuser = ". $idToEdit;
$result = mysqli_query($ligaBD, $query);
$row = mysqli_fetch_array($result);
?>

<html>
<head>   
    <meta charset="utf-8">
</head>
<style>
body{
    background-color:white !important;
}
.bodyEditUser {
    text-align: center;
    vertical-align: middle;
    margin: auto;
    padding: 18px;
    padding-left: 25px;
    padding-right: 25px;
    position: relative;
    width:25%;
    top: 0; left: 0; bottom: 0; right: 0;
}
.pageTitleEditUser {
    color: #0cd268;
    margin-left: 8%;
    margin-right: 8%;
    text-align: center;
    font-weight: bold;
}
.containerEditUser {
    padding: 10px 10px 10px 10px;
    margin-bottom: 10px;
    background-color: lightgreen;
    border-radius: 10px;
    border: 1px solid green;
    overflow-x: auto;
    text-align: center;
    color: black;
}
.lblEditUser{
    font-weight: bold;
    color: black;
}
.inputEditUser {
    border: 1px solid green;
    background-color: white;
    border-radius: 4px;
    color: black;
    padding: 5px;
    margin-bottom: 6px;
}
.inputEditUser:read-only {
    filter: blur(0.8px);
    opacity: 60%;
    color: white;
}
.selectEditUser {
    border: 1px solid green;
    background-color: white;
    border-radius: 4px;
    color: black;
    padding: 5px;
    margin-bottom: 6px;
}
.selectEditUser:disabled {
    filter: blur(0.8px);
    opacity: 60%;
    color: black;
}
.btnEditUser {
    border: 1px solid white;
    background-color: white;
    color: black;
    padding-top: 5px;
    padding-bottom: 5px;
    padding-left: 14px;
    padding-right: 14px;
    border-radius: 6px;
}
.btnEditUser:hover {
    transition-duration: 0.3s;
    opacity: 0.8;
}
@media only screen and (max-width:3000px){.bodyEditUser{width:25%;}}
@media only screen and (max-width:1600px){.bodyEditUser{width:30%;}}
@media only screen and (max-width:1400px){.bodyEditUser{width:35%;}}
@media only screen and (max-width:1200px){.bodyEditUser{width:45%;}}
@media only screen and (max-width:1000px){.bodyEditUser{width:60%;}}
@media only screen and (max-width:800px){.bodyEditUser{width:75%;}}
@media only screen and (max-width: 600px) {
    .bodyEditUser {
        padding-left: 15px;
        padding-right: 15px;
        width:100%;
    }
    .containerEditUser {
        padding: 10px 5px 10px 5px;
    }
}
</style>
<script>      
    function showAlertEdit() {
        var choice = confirm("Are you sure you want to update the information about this user?");
        if (choice == true) {
            alert("Submitting...");
            document.getElementById("theForm").action = "../scripts/updateUser.php";
            document.getElementById("theForm").submit();
        } 
        else {
            alert("Cancelling...");
        }
    }
</script>
<body >
    <div class="bodyEditUser" >
        <div class="containerEditUser" style='overflow-x:0;'>
            <form action="" id="theForm" method='Post'>
                <label class="lblEditUser" for="id" style='margin-left:1.7rem;'>ID:</label>
                <input class="inputEditUser" type="text" id="id" name="id" value="<?php echo $idToEdit; ?>" readOnly = "true"style='color:black;'> <br>
                <label class="lblEditUser" for="login"style='margin-left:0.2rem;'>Email:</label>
                <input class="inputEditUser" type="email" id="login" name="login" value="<?php echo $row[1]; ?>"> <br>
                <label class="lblEditUser" for="name">Name:</label>
                <input class="inputEditUser" type="text" id="name" name="name" value="<?php echo $row[2]; ?>"> <br>
                <label class="lblEditUser" for="idtipo" style='margin-left:-7.5rem;'>UserType:</label>
                <select class="selectEditUser" id="idtipo" name="idtipo" <?php if(($idToEdit == $_SESSION['idU']) and ($row[3] == 1)) echo "disabled"; ?> > 
                    <option <?php if($row[3] == 3) echo "selected = 'selected'" ?> value="3">Normal</option>
                    <option <?php if($row[3] == 1) echo "selected = 'selected'" ?> value="1">Admin</option>
                </select>
                <br>
                <label class="lblEditUser" for="idestado" style='margin-left:-5.5rem;'>UserState:</label>
                <select class="selectEditUser" id="idestado" name="idestado" <?php if(($idToEdit == $_SESSION['idU']) and ($row[3] == 1)) echo "disabled"; ?> > <br>
                    <option <?php if($row[4] == 1) echo "selected = 'selected'" ?> value="1">Not Registed</option>
                    <option <?php if($row[4] == 2) echo "selected = 'selected'" ?> value="2">Banned</option>
                    <option <?php if($row[4] == 3) echo "selected = 'selected'" ?> value="3">Registed</option>
                </select>
                <br> <br>
                <button class="btnEditUser" onclick=showAlertEdit()>Update Information</button><p></p>
            </form>
            <button class="btnEditUser" onclick="location.href='../pages/listausers.php'">Cancel</button>
        </div>
    </div>
</body>
<?php
include ('../pages/footer.php');
?>
</html>
