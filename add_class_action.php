<?php
    ini_set('display_errors', 1);
    error_reporting(E_ALL);
    
    session_start();
    if(include('dbcon.php') == true)
    {
        echo "Connected to the database!";
        $session_id = $_POST['session_id'];
        echo $session_id;//debugging purposes
        $subject_id = $_POST['subject_id'];
        $class_id = $_POST['class_id'];
        $school_year = $_POST['school_year'];
        $students_limit = $_POST['students_limit'];
    
        $query = mysqli_query($conn,"select * from teacher_class where subject_id = '$subject_id' and class_id = '$class_id' and teacher_id = '$session_id' and school_year = '$school_year' ")or die(mysqli_error());
        var_dump($query);
        $count = mysqli_num_rows($query);
        if ($count > 0){ 
            echo "true";
            ?>
            <script>
            alert('Class Already Exist');
            </script>
            <?php
        } else {
     
            //THERES AN ERROR IN THE ADDING OF CLASSES
            $insert_teacher_class  = mysqli_query($conn,"insert into teacher_class (teacher_id,subject_id,class_id,thumbnails,school_year,students_limit) values('$session_id','$subject_id','$class_id','admin/uploads/thumbnails.jpg','$school_year','$students_limit')")or die(mysqli_error());
            var_dump($insert_teacher_class);
            $teacher_class = mysqli_query($conn,"select * from teacher_class order by teacher_class_id DESC")or die(mysqli_error());
            $teacher_row = mysqli_fetch_array($teacher_class);
            $teacher_id = $teacher_row['teacher_class_id'];
    
            $insert_query = mysqli_query($conn,"select * from student where class_id = '$class_id'")or die(mysqli_error());
            var_dump($insert_query);
            while($row = mysqli_fetch_array($insert_query)){
                $id = $row['student_id'];
                mysqli_query($conn,"insert into teacher_class_student (teacher_id,student_id,teacher_class_id) value('$session_id','$id','$teacher_id')")or die(mysqli_error());
                echo "yes";
            }
        }
    }
    else{
        "There was a problem connecting to the database";
         die(mysqli_error($conn));
    }
?>