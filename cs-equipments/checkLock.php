<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>checkLock</title>

    <script>
        function locked() {
            alert('This equipment is locked.');
        }
        function backHome(){
            window.location.href ="home.php";
        }
    </script>

    <?php
        include "connect.php";
        // echo $_GET["ID"];
        // echo $_GET["status"];
        // echo $_GET["lock"];

        $id = $_GET["ID"];
        $st = $_GET["status"];
        $lck = $_GET["lock"];
       
        if($lck == 1){
            // header("location: home.php");
            echo "<script>
            locked();
            backHome();
            </script>";
        }else{
            header("location: statusChangeForm.php?status=$st&ID=$id&lock=$lck");
        }


        
        
        
        
    ?>
</head>
<body>
    
</body>
</html>