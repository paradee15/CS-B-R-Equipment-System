<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>connect</title>
    <?php
    try{
        $pdo=new PDO("mysql:host=10.199.66.227;dbname=20s2_g2;charset=utf8","20S2_g2","sJe6xAt7");
        $pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
    }catch(PDOException $e){
        echo "เกิดข้อผิดพลาด : ".$e->getMessage();
    }
    ?>
</head>
<body>
    
</body>
</html>