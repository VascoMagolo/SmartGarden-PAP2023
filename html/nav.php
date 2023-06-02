<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../css/styleImportant.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<style>
.bg-dark{
    background-color:#303136 !important;
}
.logo_main{
    width:6rem !important;
}
@media (max-width:575.98px){
    .logo_main{
        visibility:hidden;
    }
}
</style>
<nav class="navbar navbar-expand-sm navbar-light bg-dark" id='navbartoggle'style='min-height:5rem;height:auto;'>
    <div class="container-fluid">

        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="white" class="bi bi-list" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
            </svg>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ">
                <li class='nav-item'>
                    <a href='index.php'><img class="logo_main" src="images/logo.png" style='pointer-events: none;margin-top:-35px;'></a>
                </li>
                <li class="nav-item"  >
                    <a class="nav-link" id='Home' href="index.php">Home</a>
                </li>
                <li class="nav-item" >
                    <a class="nav-link" id='Tutorials'href="blog.php">Tutorials</a>
                </li>
                <li class="nav-item" >
                    <a class="nav-link"id='DD' href="overview_test.php">Demo DashBoard</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link"  id='LNews'href="news.php">Lora News</a>
                </li>
                <?php
                    if(isset($_SESSION['user'])) {
                ?>
                <li class="nav-item " ><a href="logout.php"  id='Logout'class="nav-link" ><span class="glyphicon glyphicon-user"></span> Logout</a></li>
                <li class="nav-item ">
                    <a href="owndashboard.php"  id='PA'class='nav-link'>Hello
                    <?php 
                        echo ($_SESSION['nome']); 
                        if($_SESSION['tipo']==1){
                            ?>
                        </a>
                </li>
                <li>
                        <div class='dropdown'>
                            <ul>
                            <li class="nav-item" style='cursor:pointer;'><a class="dropdown-toggle nav-link" data-toggle="dropdown">Administration</a>
                                <ul class="dropdown-menu bg-dark ">
                                    <li ><a href="listausers.php" id='UM'class='nav-link'>User Management</a></li>
                                    <li ><a href="listaAceitarU.php" id='UC'class='nav-link'>User control</a></li>
                                    <li ><a href="listaLogs.php"id='UL' class='nav-link'>User Logs</a></li>
                                    <li ><a href="percentagemLista.php" id='UP'class='nav-link'>User Percentage</a></li>
                                </ul>
                            </li>
                            </ul>
                        </div>
                </li>
                            <?php
                            }
                    } else {
                        ?>
                        <li class="nav-item" >
                            <a href="log.php" id='login'class='nav-link'><span class="glyphicon glyphicon-user" ></span>Login</a>
                        </li>
                    <?php
                        }
                    ?>
            </div>
        </div>
    </div>
</nav>