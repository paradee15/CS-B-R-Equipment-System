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
        // echo $_GET["newStatus"];
       
        $stmt = $pdo->prepare("UPDATE equipments SET E_Status = ? WHERE E_ID = ?");
        $stmt->bindParam(1,$_GET["newStatus"]);
        $stmt->bindParam(2,$_GET["ID"]);

        $stmt->execute();
        header("location: home.php");


        
        
        
        
    ?>
</head>
<body>
    
</body>
</html>