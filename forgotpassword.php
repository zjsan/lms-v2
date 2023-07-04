<style>
    .forgotpassword-container{
        margin-top: 3rem;
        font-size: 25px
    }
</style>

<p style>To reset your password, submit your username. If we can find you in the database, an email will be sent to your email address, with instructions how to get access again.</p>
<div class = "forgotpassword-container">
    <form id="forgot_password" class="form-forgotpassword" method="POST">

						<h3 class="form-signin-heading"><i class="icon-lock"></i>Search by Username</h3>
						<input type="text" class="input-block-level" id="username" name="username" placeholder="Username" required>
                        <button data-placement="right" title="Click Here to Search" id="search_username" name="search_username" class="btn btn-info" type="submit"><i class="icon-signin icon-large"></i>Search</button>
                        <br><br>
														<script type="text/javascript">
														$(document).ready(function(){
															$('#signin').tooltip('show');
															$('#signin').tooltip('hide');
														});
														</script>								
			</form>		
</div>
<?php

include('admin/dbcon.php');


if(!empty($_POST['username']) && isset($_POST['username']))
    {

    	$username = $_POST['username'];

		 /* student */
		 $query = "SELECT * FROM student WHERE username='$username'";
		 $result = mysqli_query($conn,$query)or die(mysqli_error());
		 $row = mysqli_fetch_array($result);
		 $num_row = mysqli_num_rows($result);

		 /* teacher */
		 $query_teacher = mysqli_query($conn,"SELECT * FROM teacher WHERE username='$username'")or die(mysqli_error());
		 $num_row_teacher = mysqli_num_rows($query_teacher);
		 $row_teacher = mysqli_fetch_array($query_teacher);

		if( $num_row > 0 ) { 
		
			//for debugging
			echo 'true_student';
			echo $username;
		}else if ($num_row_teacher > 0){

			//for debugging
			echo 'true';
			echo $username;
		}
		else
		{ 
			echo 'false';
			echo '<script type="text/javascript">
			alert("Check Your Username");
			</script>';
		}	
	}
?>
