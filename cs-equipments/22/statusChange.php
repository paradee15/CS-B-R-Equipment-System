<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>statusChange</title>
    <?php
        include "connect.php";
        // echo $_GET["ID"];
        // echo $_GET["value"];
        // echo $_GET["lock"];
        if($_GET["lock"] == 0){
            if($_GET["value"] == "unavailable"){
                $stmt = $pdo->prepare("UPDATE equipments SET E_Status = 'available' WHERE E_ID = ?");
                $stmt->bindParam(1,$_GET["ID"]);
                // $stmt->execute();
            }elseif ($_GET["value"] == "available") {
                $stmt = $pdo->prepare("UPDATE equipments SET E_Status = 'unavailable' WHERE E_ID = ?");
                $stmt->bindParam(1,$_GET["ID"]);
                // $stmt->execute();
            }
            $stmt->execute();
            header("location: index.php");
        }else{
            header("location: index.php");
        }

        
        
        
        
    ?>
</head>
<body>
    
</body>
</html>