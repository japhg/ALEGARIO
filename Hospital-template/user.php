<?php
session_start();
include 'database/connection.php';
require 'function.php';
?>

<?php
$errors = array();


if (isset($_POST["insertsuperAdmin"])) {
  $firstname = mysqli_real_escape_string($con1, $_POST['firstname']);
  $middlename = mysqli_real_escape_string($con1, $_POST['middlename']);
  $lastname = mysqli_real_escape_string($con1, $_POST['lastname']);
  $email = mysqli_real_escape_string($con1, $_POST['email']);

  $randomNumber = mt_rand(100, 999);
  $username = "superAdmin" . $randomNumber;
  $randomPassNumber = mt_rand(10000000, 99999999);
  $password = "#SA12345678";
  $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

  // Start a transaction
  mysqli_autocommit($con1, false);

  $sql1 = "INSERT INTO user_table (username, password, role) 
VALUES ('$username', '$hashedPassword', 'SUPER ADMIN')";

  if (mysqli_query($con1, $sql1)) {
    $last_id = mysqli_insert_id($con1);

    $sql2 = "INSERT INTO admins (user_id, firstname, middlename, lastname, email) VALUES ('$last_id','$firstname','$middlename','$lastname', '$email')";

    if (mysqli_query($con1, $sql2)) {
      // Commit the transaction
      mysqli_commit($con1);
      $errors['username'] = "Successfully Added";
    } else {
      // Rollback the transaction
      mysqli_rollback($con1);
      echo "Error: " . $sql2 . "<br>" . $con1->error;
    }
  } else {
    // Rollback the transaction
    mysqli_rollback($con1);
    echo "Error: " . $sql1 . "<br>" . $con1->error;
  }
} else if (isset($_POST["inserthrAdmin"])) {
  $firstname = mysqli_real_escape_string($con1, $_POST['firstname']);
  $middlename = mysqli_real_escape_string($con1, $_POST['middlename']);
  $lastname = mysqli_real_escape_string($con1, $_POST['lastname']);
  $email = mysqli_real_escape_string($con1, $_POST['email']);

  $randomNumber = mt_rand(100, 999);
  $username = "hrAdmin" . $randomNumber;
  $randomPassNumber = mt_rand(10000000, 99999999);
  $password = "#HA12345678";
  $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

  // Start a transaction
  mysqli_autocommit($con1, false);

  $sql1 = "INSERT INTO user_table (username, password, role) 
VALUES ('$username', '$hashedPassword', 'HR ADMIN')";

  if (mysqli_query($con1, $sql1)) {
    $last_id = mysqli_insert_id($con1);

    $sql2 = "INSERT INTO admins (user_id, firstname, middlename, lastname, email) VALUES ('$last_id','$firstname','$middlename','$lastname', '$email')";

    if (mysqli_query($con1, $sql2)) {
      // Commit the transaction
      mysqli_commit($con1);
      $errors['username'] = "Successfully Added";
    } else {
      // Rollback the transaction
      mysqli_rollback($con1);
      echo "Error: " . $sql2 . "<br>" . $con1->error;
    }
  } else {
    // Rollback the transaction
    mysqli_rollback($con1);
    echo "Error: " . $sql1 . "<br>" . $con1->error;
  }
} else if (isset($_POST["insertcoreAdmin"])) {
  $firstname = mysqli_real_escape_string($con1, $_POST['firstname']);
  $middlename = mysqli_real_escape_string($con1, $_POST['middlename']);
  $lastname = mysqli_real_escape_string($con1, $_POST['lastname']);
  $email = mysqli_real_escape_string($con1, $_POST['email']);

  $randomNumber = mt_rand(100, 999);
  $username = "coreAdmin" . $randomNumber;
  $randomPassNumber = mt_rand(10000000, 99999999);
  $password = "#CA12345678";
  $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

  // Start a transaction
  mysqli_autocommit($con1, false);

  $sql1 = "INSERT INTO user_table (username, password, role) 
VALUES ('$username', '$hashedPassword', 'CORE ADMIN')";

  if (mysqli_query($con1, $sql1)) {
    $last_id = mysqli_insert_id($con1);

    $sql2 = "INSERT INTO admins (user_id, firstname, middlename, lastname, email) VALUES ('$last_id','$firstname','$middlename','$lastname', '$email')";

    if (mysqli_query($con1, $sql2)) {
      // Commit the transaction
      mysqli_commit($con1);
      $errors['username'] = "Successfully Added";
    } else {
      // Rollback the transaction
      mysqli_rollback($con1);
      echo "Error: " . $sql2 . "<br>" . $con1->error;
    }
  } else {
    // Rollback the transaction
    mysqli_rollback($con1);
    echo "Error: " . $sql1 . "<br>" . $con1->error;
  }
} else if (isset($_POST["insertlogisticsAdmin"])) {
  $firstname = mysqli_real_escape_string($con1, $_POST['firstname']);
  $middlename = mysqli_real_escape_string($con1, $_POST['middlename']);
  $lastname = mysqli_real_escape_string($con1, $_POST['lastname']);
  $email = mysqli_real_escape_string($con1, $_POST['email']);

  $randomNumber = mt_rand(100, 999);
  $username = "logAdmin" . $randomNumber;
  $randomPassNumber = mt_rand(10000000, 99999999);
  $password = "#LA12345678";
  $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
  // Start a transaction
  mysqli_autocommit($con1, false);

  $sql1 = "INSERT INTO user_table (username, password, role) 
VALUES ('$username', '$hashedPassword', 'LOGISTICS ADMIN')";

  if (mysqli_query($con1, $sql1)) {
    $last_id = mysqli_insert_id($con1);

    $sql2 = "INSERT INTO admins (user_id, firstname, middlename, lastname, email) VALUES ('$last_id','$firstname','$middlename','$lastname', '$email')";

    if (mysqli_query($con1, $sql2)) {
      // Commit the transaction
      mysqli_commit($con1);
      $errors['username'] = "Successfully Added";
    } else {
      // Rollback the transaction
      mysqli_rollback($con1);
      echo "Error: " . $sql2 . "<br>" . $con1->error;
    }
  } else {
    // Rollback the transaction
    mysqli_rollback($con1);
    echo "Error: " . $sql1 . "<br>" . $con1->error;
  }
} else if (isset($_POST["insertfinancialAdmin"])) {
  $firstname = mysqli_real_escape_string($con1, $_POST['firstname']);
  $middlename = mysqli_real_escape_string($con1, $_POST['middlename']);
  $lastname = mysqli_real_escape_string($con1, $_POST['lastname']);
  $email = mysqli_real_escape_string($con1, $_POST['email']);

  $randomNumber = mt_rand(100, 999);
  $username = "financialAdmin" . $randomNumber;
  $randomPassNumber = mt_rand(10000000, 99999999);
  $password = "#FA12345678";
  $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

  // Start a transaction
  mysqli_autocommit($con1, false);

  $sql1 = "INSERT INTO user_table (username, password, role) 
VALUES ('$username', '$hashedPassword', 'FINANCIALS ADMIN')";

  if (mysqli_query($con1, $sql1)) {
    $last_id = mysqli_insert_id($con1);

    $sql2 = "INSERT INTO admins (user_id, firstname, middlename, lastname, email) VALUES ('$last_id','$firstname','$middlename','$lastname', '$email')";

    if (mysqli_query($con1, $sql2)) {
      // Commit the transaction
      mysqli_commit($con1);
      $errors['username'] = "Successfully Added";
    } else {
      // Rollback the transaction
      mysqli_rollback($con1);
      echo "Error: " . $sql2 . "<br>" . $con1->error;
    }
  } else {
    // Rollback the transaction
    mysqli_rollback($con1);
    echo "Error: " . $sql1 . "<br>" . $con1->error;
  }
}










?>



<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="refresh" content="3000; url=index.php">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Users | Alegario Cure Hospital</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/alegario_logo.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@500&family=Inter:wght@300;400;600;800&family=Poiret+One&family=Poppins&family=Raleway:wght@500;600&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,400;1,500;1,700;1,900&family=Rubik:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="assets/vendor/">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/mdb.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <script src="js/sweetalert.min.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>

  <style>
    button {
      font-family: 'Poppins', sans-serif;
      font-style: normal;
    }

    table thead {
      text-align: center;
      text-transform: uppercase;
    }

    table tbody tr th {
      font-weight: 400;
      font-family: 'Inter', sans-serif;
    }

    label {
      width: 100px;
    }

    .alert {
      display: none;
    }

    .requirements {
      list-style-type: none;
    }

    .wrong .fa-check {
      display: none;
    }

    .good .fa-times {
      display: none;
    }
  </style>
</head>

<body>

  <?php
  include 'header.php';
  include 'sidebar.php';
  ?>
  <main id="main" class="main">
    <?php
    if (isset($_SESSION['success'])) { ?>
      <script>
        swal({
          title: "<?php echo $_SESSION['success']; ?>",
          icon: "success",
          button: "OK"
        })
      </script>
    <?php unset($_SESSION['success']);
    } ?>

    <?php
    if (count($errors) > 0) { ?>
      <?php
      foreach ($errors as $showerror) {
      ?>
        <script>
          swal({
            title: "<?php echo $showerror ?>",
            icon: "success",
            button: "OK"
          })
        </script>
      <?php
      }

      ?>
    <?php
    }
    ?>



    <div class="pagetitle">
      <h1>Users</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.php">Home</a></li>
          <li class="breadcrumb-item active">Users</li>
        </ol>
      </nav>
    </div>

    <div class="card-body">

      <!-- Modal for add button-->
      <div class="modal fade" id="add" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h1 class="modal-title fs-5" id="exampleModalLabel">Add User</h1>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <select class="form-select" onchange="showFormFields(this.value)">
                <option value="" selected disabled>Select user type</option>
                <option value="superAdmin">SUPER ADMIN </option>
                <option value="hrAdmin">HR ADMIN</option>
                <option value="coreAdmin">CORE ADMIN</option>
                <option value="logisticsAdmin">LOGISTICS ADMIN</option>
                <option value="financialAdmin">FINANCIAL ADMIN</option>
              </select>
              <div id="superAdmin-fields" style="display:none">
                <form class="row g-3 needs-validation" novalidate method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">

                  <div class="mb-3">
                    <label for="firstname" class="form-label">Firstname</label>
                    <input type="text" class="form-control" name="firstname" id="firstname" required>
                    <div class="invalid-feedback">Please enter firstname</div>
                  </div>
                  <div class="mb-3">
                    <label for="middlename" class="form-label">Middlename</label>
                    <input type="text" class="form-control" name="middlename" id="middlename" required>
                    <div class="invalid-feedback">Please enter middlename</div>
                  </div>
                  <div class="mb-3">
                    <label for="lastname" class="form-label">Lastname</label>
                    <input type="text" class="form-control" name="lastname" id="lastname" required>
                    <div class="invalid-feedback">Please enter lastname</div>
                  </div>
                  <div class="mb-3">
                    <label for="lastname" class="form-label">Email Address</label>
                    <input type="email" class="form-control" name="email" id="email" required>
                    <div class="invalid-feedback">Please enter Email Address</div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary" name="insertsuperAdmin" id="insert">Add</button>
                  </div>
                </form>
              </div>


              <div id="hrAdmin-fields" style="display:none">
                <form class="row g-3 needs-validation" novalidate method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">

                  <div class="mb-3">
                    <label for="firstname" class="form-label">Firstname</label>
                    <input type="text" class="form-control" name="firstname" id="firstname" required>
                    <div class="invalid-feedback">Please enter firstname</div>
                  </div>
                  <div class="mb-3">
                    <label for="middlename" class="form-label">Middlename</label>
                    <input type="text" class="form-control" name="middlename" id="middlename" required>
                    <div class="invalid-feedback">Please enter middlename</div>
                  </div>
                  <div class="mb-3">
                    <label for="lastname" class="form-label">Lastname</label>
                    <input type="text" class="form-control" name="lastname" id="lastname" required>
                    <div class="invalid-feedback">Please enter lastname</div>
                  </div>
                  <div class="mb-3">
                    <label for="lastname" class="form-label">Email Address</label>
                    <input type="email" class="form-control" name="email" id="email" required>
                    <div class="invalid-feedback">Please enter Email Address</div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary" name="inserthrAdmin" id="insert">Add</button>
                  </div>
                </form>
              </div>

              <div id="coreAdmin-fields" style="display:none">
                <form class="row g-3 needs-validation" novalidate method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">

                  <div class="mb-3">
                    <label for="firstname" class="form-label">Firstname</label>
                    <input type="text" class="form-control" name="firstname" id="firstname" required>
                    <div class="invalid-feedback">Please enter firstname</div>
                  </div>
                  <div class="mb-3">
                    <label for="middlename" class="form-label">Middlename</label>
                    <input type="text" class="form-control" name="middlename" id="middlename" required>
                    <div class="invalid-feedback">Please enter middlename</div>
                  </div>
                  <div class="mb-3">
                    <label for="lastname" class="form-label">Lastname</label>
                    <input type="text" class="form-control" name="lastname" id="lastname" required>
                    <div class="invalid-feedback">Please enter lastname</div>
                  </div>
                  <div class="mb-3">
                    <label for="lastname" class="form-label">Email Address</label>
                    <input type="email" class="form-control" name="email" id="email" required>
                    <div class="invalid-feedback">Please enter Email Address</div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary" name="insertcoreAdmin" id="insert">Add</button>
                  </div>
                </form>
              </div>

              <div id="logisticsAdmin-fields" style="display:none">
                <form class="row g-3 needs-validation" novalidate method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">

                  <div class="mb-3">
                    <label for="firstname" class="form-label">Firstname</label>
                    <input type="text" class="form-control" name="firstname" id="firstname" required>
                    <div class="invalid-feedback">Please enter firstname</div>
                  </div>
                  <div class="mb-3">
                    <label for="middlename" class="form-label">Middlename</label>
                    <input type="text" class="form-control" name="middlename" id="middlename" required>
                    <div class="invalid-feedback">Please enter middlename</div>
                  </div>
                  <div class="mb-3">
                    <label for="lastname" class="form-label">Lastname</label>
                    <input type="text" class="form-control" name="lastname" id="lastname" required>
                    <div class="invalid-feedback">Please enter lastname</div>
                  </div>
                  <div class="mb-3">
                    <label for="lastname" class="form-label">Email Address</label>
                    <input type="email" class="form-control" name="email" id="email" required>
                    <div class="invalid-feedback">Please enter Email Address</div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary" name="insertlogisticsAdmin" id="insert">Add</button>
                  </div>
                </form>
              </div>

              <div id="financialAdmin-fields" style="display:none">
                <form class="row g-3 needs-validation" novalidate method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">

                  <div class="mb-3">
                    <label for="firstname" class="form-label">Firstname</label>
                    <input type="text" class="form-control" name="firstname" id="firstname" required>
                    <div class="invalid-feedback">Please enter firstname</div>
                  </div>
                  <div class="mb-3">
                    <label for="middlename" class="form-label">Middlename</label>
                    <input type="text" class="form-control" name="middlename" id="middlename" required>
                    <div class="invalid-feedback">Please enter middlename</div>
                  </div>
                  <div class="mb-3">
                    <label for="lastname" class="form-label">Lastname</label>
                    <input type="text" class="form-control" name="lastname" id="lastname" required>
                    <div class="invalid-feedback">Please enter lastname</div>
                  </div>
                  <div class="mb-3">
                    <label for="lastname" class="form-label">Email Address</label>
                    <input type="email" class="form-control" name="email" id="email" required>
                    <div class="invalid-feedback">Please enter Email Address</div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary" name="insertfinancialAdmin" id="insert">Add</button>
                  </div>
                </form>
              </div>

            </div>

          </div>
        </div>
      </div>
    </div>
    </div>



    <div class="row">
      <div class="col-md-12 float-right">
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#add">Add</button>
      </div>
    </div>
    <br>
    <div class="card-body">
      <div class="table-responsive">

        <table class="table table-bordered table-hover table-striped" id="dataTable" width="100%" cellspacing="0" style="border: 1px solid #121212;">
          <thead>
            <tr>
              <th>User ID</th>
              <th>Username</th>
              <th>Password <br>(Default Password)</th>
              <th>First Name</th>
              <th>Middle Name</th>
              <th>Last Name</th>
              <th>User Type</th>
              <th>Date Joined</th>
              <th colspan="2">Actions</th>
            </tr>
          </thead>
          <tbody>
            <?php
            $query = "SELECT user.*, admin.* FROM user_table user, admins admin WHERE admin.user_id = user.u_id";
            $result = mysqli_query($con1, $query);
            if (mysqli_num_rows($result)) {
              while ($row = mysqli_fetch_assoc($result)) {
            ?>
                <tr>
                  <th><?php echo $row['u_id']; ?></th>
                  <th><?php echo $row['username']; ?></th>
                  <th>
                    <?php if($row['role'] === "SUPER ADMIN")
                    {
                      echo "#SA12345678";
                    }  
                    elseif($row['role'] === "HR ADMIN")
                    {
                      echo "#HA12345678";
                    }
                    elseif($row['role'] === "CORE ADMIN")
                    {
                      echo "#CA12345678";
                    }
                    elseif($row['role'] === "LOGISTICS ADMIN")
                    {
                      echo "#LA12345678";
                    }
                    elseif($row['role'] === "FINANCIALS ADMIN")
                    {
                      echo "#FA12345678";
                    }
                    ?>
                  </th>
                  <th><?php echo $row['firstname']; ?></th>
                  <th><?php echo $row['middlename']; ?></th>
                  <th><?php echo $row['lastname']; ?></th>
                  <th><?php echo $row['role']; ?></th>
                  <th><?php echo $row['date_added']; ?></th>

                  <th style="text-align: center;">
                    <div class="row">
                      <div class="col-md-12">
                        <form action="updateUser.php" method="post">
                          <input type="hidden" name="updates" id="updates" value="<?php echo $row['user_id']; ?>">
                          <button type="submit" class="btn btn-success">Update</button>
                        </form>
                      </div>
                    </div>
                  </th>
                  <th>
                    <div class="row">
                      <div class="col-md-12">
                        <input type="hidden" name="deletes" class="deletes" id="delete" value="<?php echo $row['user_id']; ?>">
                        <a href="javascript:void(0)" class="delete_btn_ajax btn btn-danger">Delete</a>
                      </div>
                    </div>
                  </th>
                </tr>
            <?php
              }
            }
            ?>
          </tbody>
        </table>
      </div>
    </div>
    </div>
    <script>
      function showFormFields(userType) {
        if (userType === "superAdmin") {
          document.getElementById("superAdmin-fields").style.display = "block";
          document.getElementById("hrAdmin-fields").style.display = "none";
          document.getElementById("coreAdmin-fields").style.display = "none";
          document.getElementById("logisticsAdmin-fields").style.display = "none";
          document.getElementById("financialAdmin-fields").style.display = "none";
        } else if (userType === "hrAdmin") {
          document.getElementById("superAdmin-fields").style.display = "none";
          document.getElementById("hrAdmin-fields").style.display = "block";
          document.getElementById("coreAdmin-fields").style.display = "none";
          document.getElementById("logisticsAdmin-fields").style.display = "none";
          document.getElementById("financialAdmin-fields").style.display = "none";
        } else if (userType === "coreAdmin") {
          document.getElementById("superAdmin-fields").style.display = "none";
          document.getElementById("hrAdmin-fields").style.display = "none";
          document.getElementById("coreAdmin-fields").style.display = "block";
          document.getElementById("logisticsAdmin-fields").style.display = "none";
          document.getElementById("financialAdmin-fields").style.display = "none";
        } else if (userType === "logisticsAdmin") {
          document.getElementById("superAdmin-fields").style.display = "none";
          document.getElementById("hrAdmin-fields").style.display = "none";
          document.getElementById("coreAdmin-fields").style.display = "none";
          document.getElementById("logisticsAdmin-fields").style.display = "block";
          document.getElementById("financialAdmin-fields").style.display = "none";
        } else if (userType === "financialAdmin") {
          document.getElementById("superAdmin-fields").style.display = "none";
          document.getElementById("hrAdmin-fields").style.display = "none";
          document.getElementById("coreAdmin-fields").style.display = "none";
          document.getElementById("logisticsAdmin-fields").style.display = "none";
          document.getElementById("financialAdmin-fields").style.display = "block";
        }
      }
    </script>

    <script>
      $(document).ready(function() {
        $('.delete_btn_ajax').click(function(e) {
          e.preventDefault();

          var deleteid = $(this).closest("tr").find('.deletes').val();

          swal({
              title: "Are you sure?",
              text: "Once deleted, you will not be able to recover this data again!",
              icon: "warning",
              buttons: true,
              dangerMode: true,
            })
            .then((willDelete) => {
              if (willDelete) {

                $.ajax({
                  type: "POST",
                  url: "action.php",
                  data: {
                    "delete_btn_set": 1,
                    "delete_id": deleteid,
                  },
                  success: function(response) {

                    swal("Data Deleted Successfully!", {
                      icon: "success",
                    }).then((result) => {
                      location.reload();
                    });

                  }
                });

              }
            });

        });
      });
    </script>

    <script>
      $(function() {
        var $password = $(".form-control[type='password']");
        var $passwordAlert = $(".password-alert");
        var $requirements = $(".requirements");
        var leng, bigLetter, num, specialChar;
        var $leng = $(".leng");
        var $bigLetter = $(".big-letter");
        var $num = $(".num");
        // var $specialChar = $(".special-char");
        // var specialChars = "!@#$%^&*()-_=+[{]}\\|;:'\",<.>/?`~";
        var numbers = "0123456789";

        $requirements.addClass("wrong");
        $password.on("focus", function() {
          $passwordAlert.show();
        });

        $password.on("input blur", function(e) {
          var el = $(this);
          var val = el.val();
          $passwordAlert.show();

          if (val.length < 8) {
            leng = false;
          } else if (val.length > 7) {
            leng = true;
          }


          if (val.toLowerCase() == val) {
            bigLetter = false;
          } else {
            bigLetter = true;
          }

          num = false;
          for (var i = 0; i < val.length; i++) {
            for (var j = 0; j < numbers.length; j++) {
              if (val[i] == numbers[j]) {
                num = true;
              }
            }
          }

          // specialChar=false;
          // for(var i=0; i<val.length;i++){
          //     for(var j=0; j<specialChars.length; j++){
          //         if(val[i]==specialChars[j]){
          //             specialChar = true;
          //         }
          //     }
          // }

          console.log(leng, bigLetter, num, specialChar);

          if (leng == true && bigLetter == true && num == true) {
            $(this).addClass("valid").removeClass("invalid");
            $requirements.removeClass("wrong").addClass("good");
            $passwordAlert.removeClass("alert-warning").addClass("alert-success");
          } else {
            $(this).addClass("invalid").removeClass("valid");
            $passwordAlert.removeClass("alert-success").addClass("alert-warning");

            if (leng == false) {
              $leng.addClass("wrong").removeClass("good");
            } else {
              $leng.addClass("good").removeClass("wrong");
            }

            if (bigLetter == false) {
              $bigLetter.addClass("wrong").removeClass("good");
            } else {
              $bigLetter.addClass("good").removeClass("wrong");
            }

            if (num == false) {
              $num.addClass("wrong").removeClass("good");
            } else {
              $num.addClass("good").removeClass("wrong");
            }

            // if(specialChar==false){$specialChar.addClass("wrong").removeClass("good");}
            // else{$specialChar.addClass("good").removeClass("wrong");}
          }


          if (e.type == "blur") {
            $passwordAlert.hide();
          }
        });
      });
    </script>

    <?php include 'footer.php' ?>
</body>

</html>