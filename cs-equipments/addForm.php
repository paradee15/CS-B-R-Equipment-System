<?php
    include "connect.php";
    include "templates_cs/header.php";
    echo '<title>Add Equipment</title>';?>
    
    <div class="container col-md-4 mt-md-0 mt-3">
    <h1 class="space">Add New Equipment</h1>
    <form action="add-data.php" method="post">
    Equipment ID: <input type="text" name="ID" id="eid" placeholder="e.g. M00000" pattern="[A-Za-z0-9]{6}" autofocus autocomplete='off' required><br>
    Equipment Name: <input type="text" name="Name" id="ename" placeholder="e.g. Notebook Acer" autocomplete='off' required><br>
    Equipment Type: <input type="text" name="Type" id="etype" placeholder="e.g. Keyboard, Mouse, Laptop" autocomplete='off' required><br>
    <input type="button" class="btn btn-dark btn-mgn" value="Back" onclick="history.back()">
    <input class="btn btn-primary btn-mgn" type="submit" value="Add" id="add" onclick="return confirm('Do you want to add this data to your database? !!!')">
    </form>
    <!-- <button class="btn btn-success" onclick="location.href='home.php'">Back</button> -->
<?php include "templates_cs/footer.php";?>