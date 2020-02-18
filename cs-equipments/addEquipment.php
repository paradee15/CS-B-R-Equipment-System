<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>addEquipment</title>
    <?php
        include "connect.php";
        // echo $_GET["ID"];
        // echo $_GET["value"];     
        // $stmt = $pdo->prepare("DELETE FROM equipments WHERE E_ID = ?");
        // $stmt->bindParam(1,$_GET["ID"]);
        // $stmt->execute();
        // header("location: home.php");
        
        
    ?>
</head>
<body>
     <h2>Add new equipments</h2>
    <form action="add-data.php" method="post">
    Equipment ID: <input type="text" name="ID"><br>
    Equipment Name: <input type="text" name="Name"><br>
    Equipment Type: <input type="text" name="Type"><br>
    <input type="submit" value="Add" onclick="return confirm('Do you want to add this data to your database? !!!')">
    </form>
</body>
</html>