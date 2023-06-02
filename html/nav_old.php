<body>
        <div class="header_section">
            <nav class="desktop_header navbar navbar-expand-lg navbar-light bg-light">
            <div class="logo"></div>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item" id='logoNav'>
                        <a class="logo_main" href="index.php"><img src="images/logo.png" style='pointer-events: none;'></a>
                    </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.php">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="blog.php">Tutorials</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="overview_test.php">Demo DashBoard</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="news.php">Lora News</a>
                </li>
                <?php
                    if(isset($_SESSION['user'])) {
                ?>
                <li class="nav-item active"><a href="logout.php"  class="nav-link" ><span class="glyphicon glyphicon-user"></span> Logout</a></li>
                <li class="nav-item active">
                    <a href="owndashboard.php" class='nav-link'>Hello
                    <?php 
                        echo ($_SESSION['user']); 
                        if($_SESSION['tipo']==1){
                            ?>
                        <div class='dropdown'>
                            <li class="nav-item active" style='cursor:pointer;'><a class="dropdown-toggle nav-link" data-toggle="dropdown">Administration <span class='caret'></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="listausers.php">User Management</a></li>
                                    <li><a href="listaAceitarU.php">User control</a></li>
                                    <li><a href="listaLogs.php">User Logs</a></li>
                                    <li><a href="percentagemLista.php">User Percentage</a></li>
                                </ul>
                            </li>
                        </div>
                            <?php
                            }
                            
                    } else {
                        ?>
                        <li class="nav-item active">
                            <a href="log.php" class='nav-link'><span class="glyphicon glyphicon-user" ></span> Login</a>
                        </li>

                    <?php
                        }
                    ?>
                        </a>
                    </li>   
                </ul>
            </ul>
        </div>
    </nav>