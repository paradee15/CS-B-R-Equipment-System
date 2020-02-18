
    <?php
        include "connect.php";
        include "templates_cs/header.php";
        echo '<title>Home</title>';
        $stmt = $pdo->prepare("SELECT * FROM equipments");
        //$stmt->bindParam(1,$_POST["pcode"]);
        $stmt->execute();


        function nameLock($Lock_Status){
            if($Lock_Status == 0){
                $Lock_Name = "Lock";
            }elseif($Lock_Status == 1){
                $Lock_Name = "Unlock";
            }
            return $Lock_Name;
        }
        //include('h.php');
        //1. เชื่อมต่อ database:
        //include('condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
        //2. query ข้อมูลจากตาราง tb_admin:
        // $query = "SELECT * FROM equipments ORDER BY E_ID ASC" or die("Error:" . mysqli_error());
        //3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
        // $result = mysqli_query($con, $query);
        // //4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:
        
        
        
        echo '<h1 class="center space">Equipments List</h1>
        <div class="container col-md-8 mt-md-0 mt-3 center">';
        ?>
        <div class="right"><button class="btn btn-primary" id="add" onclick="location.href='addForm.php'">+ Add New Equipment</button></div>
        <?php
        echo ' <table class="table table-hover table-wrapper-scroll-y my-custom-scrollbar">';
        //     //หัวข้อตาราง 
            echo "
                <tr class='head-table'>
                    <td>Equipment ID</td>
                    <td>Equipment Name</td>
                    <td>Equipment Type</td>
                    <td>Status</td>
                    <td>Change Status</td>
                    <td>Lock Status</td>
                    <td>Lock</td>
                    <td>Delete Equipment</td>
                </tr>";
                
                while ($row = $stmt->fetch()) {
                    $E_ID = $row["E_ID"];
                    $E_Name = $row["E_Name"];
                    $E_Type = $row["E_Type"];
                    $E_Status = $row["E_Status"];
                    $Lock_Status = $row["Lock_Status"];

                    echo "<tr>";
                    echo "<td>" .$row["E_ID"] .  "</td> ";
                    echo "<td>" .$row["E_Name"] .  "</td> ";
                    echo "<td>" .$row["E_Type"] .  "</td> ";
                    echo "<td>" .$row["E_Status"] .  "</td> ";

                    //ปุ่มเปลี่ยนสถานะ
                    echo "<td>
                    <button id='change'  
                    onclick="."location.href='checkLock.php?status=$row[3]&ID=$row[0]&lock=$row[4]'"."
                    class='btn btn-success'>Change</button>
                    </td> ";

                    echo "<td>" .$row["Lock_Status"] .  "</td> ";
                    
                    
                    //ล็อกสถานะ
                    echo "<td><a href='lockStatus.php?ID=$row[0]&lock=$row[4]' id='lock' 
                    onclick=\"return confirm('Do you want to " . nameLock($row[4]) . " status of this record? !!!')\" 
                    class='btn btn-warning btn-xs'>".nameLock($row[4])."</a></td> ";

                    //ลบข้อมูล
                    echo "<td><a href='delete-data.php?ID=$row[0]' id='delete' 
                    onclick=\"return confirm('Do you want to delete this record? !!!')\" 
                    class='btn btn-danger btn-xs'>Delete</a></td> ";

                }
       
            echo "</tr>";
            // }
        echo "</table>";
        //5. close connection
        // mysqli_close($con);
    ?>
    <!-- <script>
        function checkLock(lockStatus,tmp){
            //$msg = "statusChangeForm.php?value="+$e_status+"&ID="+$e_id+"&lock="+$lockStatus;
            //var msg = string.concat(lockStatus,tmp);
            if(lockStatus == 1){
                alert("This equipment is locked.");
                backHome();
            }else{
                alert(lockStatus);
                //console.log($tmp);
                //window.location.href="";
            }
            function backHome(){
                window.location.href ="home.php";
            }
        }
    </script> -->
</head>
<body>
        
        <!-- <h2>Add new equipments</h2>
        <form action="add-data.php" method="post">
        Equipment ID: <input type="text" name="ID"><br>
        Equipment Name: <input type="text" name="Name"><br>
        Equipment Type: <input type="text" name="Type"><br>
        <input type="submit" value="Add" onclick="return confirm('Do you want to add this data to your database? !!!')">
        </form> -->
        <?php include "templates_cs/footer.php"; ?>
