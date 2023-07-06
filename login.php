<?php
    include('admin/dbcon.php');
    session_start();

    $username = $_POST['username'];
    $password = $_POST['password'];

    // Check for student
    $studentQuery = "SELECT * FROM student WHERE username='$username' AND password='$password'";
    $studentResult = mysqli_query($conn, $studentQuery) or die(mysqli_error($conn));
    $numStudentRows = mysqli_num_rows($studentResult);

    // Check for teacher
    $teacherQuery = "SELECT * FROM teacher WHERE username='$username' AND password='$password'";
    $teacherResult = mysqli_query($conn, $teacherQuery) or die(mysqli_error($conn));
    $numTeacherRows = mysqli_num_rows($teacherResult);

    if ($numStudentRows > 0) {
        $studentRow = mysqli_fetch_array($studentResult);
        $_SESSION['id'] = $studentRow['student_id'];

        $insertQuery = "INSERT INTO user_log (username, login_date, user_id) VALUES ('$username', NOW(), ".$studentRow['student_id'].")";
        mysqli_query($conn, $insertQuery) or die(mysqli_error($conn));
        echo 'true';

    } else if ($numTeacherRows > 0) {
        $teacherRow = mysqli_fetch_array($teacherResult);
        $_SESSION['id'] = $teacherRow['teacher_id'];

        $insertQuery = "INSERT INTO user_log (username, login_date, user_id) VALUES ('$username', NOW(), ".$teacherRow['teacher_id'].")";
        mysqli_query($conn, $insertQuery) or die(mysqli_error($conn));

        echo 'true';
    } else {
        echo 'false';
    }
?>
