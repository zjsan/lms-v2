<?php

    include('dbcon.php');
    session_start();

    if($conn->connect_error)
    {
        die("Database Connection Failed: ".$conn->connect_error);
    }
    
    $session_id = $_POST['session_id'];
    echo $session_id;//debugging purposes
    $subject_id = $_POST['subject_id'];
    $class_id = $_POST['class_id'];
    $school_year = $_POST['school_year'];
    $students_limit = $_POST['students_limit'];

    //checking different variables if they contain values
    if(!empty($_POST['session_id']) && isset($_POST['session_id']) && !empty($_POST['subject_id']) && 
    isset($_POST['subject_id']) && !empty($_POST['class_id']) && isset($_POST['class_id']) && 
    !empty($_POST['school_year']) && isset($_POST['school_year']) && !empty($_POST['students_limit']) && isset($_POST['students_limit']))
    {
        $query = mysqli_query($conn,"select * from teacher_class where subject_id = '$subject_id' and class_id = '$class_id' and teacher_id = '$session_id' and school_year = '$school_year' ")or die(mysqli_error());
        var_dump($query);
        $count = mysqli_num_rows($query);

        if ($count > 0){ 

            echo "true";
            echo '<script type="text/javascript">
           alert("Class Already Exist");
           window.location.href = "dashboard_teacher.php";
           </script>';

        } else {
     
            //THERES AN ERROR IN THE ADDING OF CLASSES
            $insert_teacher_class  = mysqli_query($conn,"insert into teacher_class (teacher_id,subject_id,class_id,thumbnails,school_year,students_limit) values('$session_id','$subject_id','$class_id','admin/uploads/thumbnails.jpg','$school_year','$students_limit')")or die(mysqli_error());
            var_dump($insert_teacher_class);//for debugging purposes

            //debugging
            if (!$insert_teacher_class) {
                die("Insert query error: " . mysqli_error($conn));
            }
            $teacher_class = mysqli_query($conn,"select * from teacher_class order by teacher_class_id DESC")or die(mysqli_error());
            $teacher_row = mysqli_fetch_array($teacher_class);
            $teacher_id = $teacher_row['teacher_class_id'];
    
            $insert_query = mysqli_query($conn,"select * from student where class_id = '$class_id'")or die(mysqli_error());
            var_dump($insert_query);
            
            while($row = mysqli_fetch_array($insert_query)){
                $id = $row['student_id'];
                mysqli_query($conn,"insert into teacher_class_student (teacher_id,student_id,teacher_class_id) values ('$session_id','$id','$teacher_id')")or die(mysqli_error());
                echo "yes";
            }
        }
    }
$conn->close();
?>