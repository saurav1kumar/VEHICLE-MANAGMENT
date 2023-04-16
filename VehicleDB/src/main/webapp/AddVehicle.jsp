<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Details Of Vehicle</title>
    <link rel="stylesheet" href="AddVehicle.css">
</head>

<body>
    <form action="saveData" onsubmit="showAlert()">
        <label for="">Vehicle ID</label>
        <input type="text" name="id"><br>
        <label for="">Vehicle Price</label>
        <input type="text" name="price"><br>
        <label for="">Vehicle Model</label>
        <input type="text" name="model">
        <label for="">Vehicle Color</label>
        <input type="text" name="color"><br>
        <button>ADD</button>
    </form>
    <br>
    <form action="mainpage">
        <h1>CLICK BELOW TO GO BACK HOME PAGE</h1>
        <button>MAIN PAGE</button>
    </form>
    <script>
        function showAlert() {
            alert("Data Added")
        }
    </script>
</body>

</html>