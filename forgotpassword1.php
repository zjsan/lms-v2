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

			
		include('session.php');
		include('dbcon.php');

    
        $username = $_POST["username"] ?? "";  

		if(!empty($userName)) {
			/* student */
			$query = "SELECT * FROM student WHERE username='$userName'  AND `status`='Registered'";
			$result1 = mysqli_query($conn,$query)or die(mysqli_error());
			

			/* teacher */
			$query_teacher = mysqli_query($conn,"SELECT * FROM teacher WHERE username='$userName'  AND `teacher_status`='Registered' AND teacher_stat NOT IN('Deactivated')")or die(mysqli_error());
			$result2 = mysqli_query($conn,$query_teacher)or die(mysqli_error());

			if($result1 > 0 ) { 
				
                //Fetching Results -->
       					while ($row = $data->fetch_assoc()) 
       					{

       					//Displaying Data from mysql 
		       			echo"<p>".$row['username']."</p>";	
       					}
			}else if ($result2 > 0){
				echo "hi";
                //Fetching Results -->
       					while ($row = $data->fetch_assoc()) 
       					{

       					//Displaying Data from mysql 
		       			echo"<p>".$row['username']."</p>";
       					}
			}else{ 
					echo 'false';
			}	
		} 
		
    
		?>
