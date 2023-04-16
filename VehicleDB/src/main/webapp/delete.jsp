<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Deletion Page</title>
    <link rel="stylesheet" href="delete.css">
</head>
<body>
    <form action="deleteVehicleById" onsubmit="showAlert()">
        <h1>Enter Id To Delete Details </h1>
    <input type="text" name="id" placeholder="Enter ID">
    <button>DELETE</button>
    </form><br>
    <form action="mainpages">
        <h1>CLICK BELOW TO GO BACK HOME PAGE</h1>
        <button>MAIN PAGE</button>
    </form>
    <script>
        function showAlert() {
            alert("Data Deleted")
        }
    </script>
</body>
</html>