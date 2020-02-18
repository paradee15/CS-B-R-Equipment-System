
    <title>statusChangeForm</title>
    <?php
        include "connect.php";
        include "templates_cs/header.php";

        $stmt = $pdo->prepare("SELECT * FROM equipments GROUP BY E_Status");
        //$stmt->bindParam(1,$_POST["pcode"]);
        $stmt->execute();

        // echo $_GET["ID"];
        // echo $_GET["status"];
        // echo $_GET["lock"];
        
        echo "
        <div class='container col-md-3 mt-md-0 mt-3'>
        <h1 class='space'>Status Change</h1>
        <form method='get' action='statusChange.php'>

        <p><b>ID:</b> ".$_GET["ID"]."</p>
        <p><b>Current Status:</b> ".$_GET["status"]."</p>
        <input name='ID' type='hidden' value='".$_GET["ID"]."'>
        <input name='value' type='hidden' value='".$_GET["status"]."'>

        <label for='Type'><b>Select New Status:</b></label>
        <select id='Type' name='newStatus' class='bginput'>";

        while ($row = $stmt->fetch()) {
            $E_ID = $row["E_ID"];
            $E_Name = $row["E_Name"];
            $E_Type = $row["E_Type"];
            $E_Status = $row["E_Status"];
            $Lock_Status = $row["Lock_Status"];
            
            echo "<option value='$E_Status'>$E_Status</option>";
        }
        echo "
        </select><br>
        <input type='button' class='btn btn-dark btn-mgn' value='Back' onclick='history.back()'>
        <input type='submit' class='btn btn-primary btn-mgn' value='Change'>
        </form>
        
        ";
        
        
    ?>
</head>
<body>

        
<?php include "templates_cs/footer.php";