<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>delete-data</title>
    <?php
        include "connect.php";
        // echo $_GET["ID"];
        // echo $_GET["value"];     
        $stmt = $pdo->prepare("DELETE FROM equipments WHERE E_ID = ?");
        $stmt->bindParam(1,$_GET["ID"]);
        $stmt->execute();
        header("location: home.php");
        
        
    ?>
</head>
<body>
    
</body>
</html>