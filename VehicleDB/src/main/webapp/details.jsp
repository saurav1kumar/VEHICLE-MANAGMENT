<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Details of the Vehicle</title>
    <link rel="stylesheet" href="details.css">
</head>
<body>
    <form action="VehicleDetailsById" onsubmit="showAlert()">
        <h1>Enter Id to see the Detils Of Vehicle</h1>
    <input type="text" name="id" placeholder="Enter Id">
    <button>DETAIL</button>
    </form>
    <br>
    <form action="MAINPAGE">
        <h1>CLICK BELOW TO GO BACK HOME PAGE</h1>
        <button>MAIN PAGE</button>
    </form>
    <script>
        function showAlert() {
            alert("Data Retrieved")
        }
    </script>
</body>
</html>