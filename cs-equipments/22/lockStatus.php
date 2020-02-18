<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>lockStatus</title>
    <?php
        include "connect.php";
        // echo $_GET["ID"];
        // echo $_GET["value"];
        // echo $_GET["lock"];
        if($_GET["lock"] == 0){
            $stmt = $pdo->prepare("UPDATE equipments SET Lock_Status = 1 WHERE E_ID = ?");
            $stmt->bindParam(1,$_GET["ID"]);
            // $stmt->execute();
        }elseif ($_GET["lock"] == 1) {
            $stmt = $pdo->prepare("UPDATE equipments SET Lock_Status = 0 WHERE E_ID = ?");
            $stmt->bindParam(1,$_GET["ID"]);
            // $stmt->execute();
        }
        $stmt->execute();
        header("location: index.php");

        
        
        
        
    ?>
</head>
<body>
    
</body>
</html>