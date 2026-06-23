<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tabla Inmultirii</title>
</head>
<body>
    <h1>Tabla Inmultirii</h1>
    <?php
    for ($i = 1; $i < 10; $i++) {
        echo "<h2>Tabla inmultirii cu $i</h2>";
        echo "<table border='1'>";
        
        for ($j = 1; $j < 10; $j++) {
            $p = $i * $j;
            echo "<tr><td>$i * $j = $p</td></tr>";
        }

        echo "</table>";
    }
    ?>
</body>
</html>
