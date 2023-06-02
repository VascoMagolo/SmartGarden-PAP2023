<?php
session_start();
include ('head.php');
include ('nav.php');
include('verifica_SS.php');
?>

<body>
<style>
        .main{
            height:525;
        }
        .myA{
            justify-content: center;
	        display: flex;
            color:#0cd268 !important;
        }
        #password-strength {
            margin-top: 5px;
            margin-bottom: 5px;
            font-size:1rem;
        }
        .weak {
            color: red;
        }
        .strong {
            color: green;
        }
                .myA{
        justify-content: center;
	    display: flex;
        color:#0cd268 !important;
        }
  
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
<main>
<section>
		   <div class="column is-4 is-offset-4">
                <h3 class="title myA">Change Password</h3>
                <?php
                if(isset($_SESSION['nao_autenticado'])):
                ?>
                <div class="notification is-danger">
                    <p> Username/Password invalid.</p>
                </div>
            </div>
<?php
endif;
unset($_SESSION['naoigual']);
?>
<script>
    
        function checkPasswordStrength(password) {
      var strengthElement = document.getElementById('password-strength');
      var strengthText = '';

      // Check length
      if (password.length < 8) {
        strengthText = 'Weak';
        strengthElement.className = 'weak';
      } else {
        // Check for uppercase letter
        if (!/[A-Z]/.test(password)) {
          strengthText += 'Missing uppercase letter. ';
        }

        // Check for lowercase letter
        if (!/[a-z]/.test(password)) {
          strengthText += 'Missing lowercase letter. ';
        }

        // Check for digit
        if (!/\d/.test(password)) {
          strengthText += 'Missing digit. ';
        }

        // Check for special character
        if (!/[^a-zA-Z\d]/.test(password)) {
          strengthText += 'Missing special character. ';
        }

        // Password passed all checks
        if (strengthText === '') {
          strengthText = 'Strong';
          strengthElement.className = 'strong';
        } else {
          strengthElement.className = 'weak';
        }
      }

      strengthElement.textContent = strengthText;
    }
  </script>
    <div class="bodyEditUser" >
        <div class="containerEditUser" style='overflow-x:0;'>
        <form action="resetPW.php" method="POST">
            <div>
            <label class="lblEditUser" for="login"style='margin-left:0.2rem;'>Email:</label>
            <input name="log" placeholder="email" autofocus="" type='email' class="inputEditUser"  required>
            </div>
            <div>
            <label class="lblEditUser" for="login"style='margin-left:0.2rem;'>New Passowrd:</label>
            <input class="inputEditUser" placeholder="Password"type="password" name="pass" required> <br>
            </div>
            <div>
            <label class="lblEditUser" for="login"style='margin-left:0.2rem;'>Confirm Password:</label>
            <input class="inputEditUser" placeholder="Password"type="password" name="Cpass" id='password' oninput="checkPasswordStrength(this.value)" required> <br>
                 <div id="password-strength" style='text-align:center;' ></div>
            </div>
            <p></p>
            <button class="btnEditUser" type="submit" onclick="location.href='log.php'" > Enter </button>
            <div class='box2'>
            <p>Don't have an account?</p>
            <p style='margin-top:-20px;'>Create One<a href="registar.php" class='myA'> Register </a></p>
        </form>
    </div>
    </div>
</section>
</div>
</section>
</main>
</body>
<?php
include('footer.php');
?>