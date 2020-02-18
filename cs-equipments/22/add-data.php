<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>add-data</title>
    <?php
        include "connect.php";
        // echo $_POST["ID"];
        // echo $_POST["Name"];
        // echo $_POST["Type"];     
        $stmt = $pdo->prepare("INSERT INTO equipments (E_ID,E_Name,E_Type) 
        VALUES (?, ?, ?)");
        $stmt->bindParam(1,$_POST["ID"]);
        $stmt->bindParam(2,$_POST["Name"]);
        $stmt->bindParam(3,$_POST["Type"]);
        $stmt->execute();
        header("location: index.php");
        
        
    ?>
</head>
<body>
    
</body>
</html>