<?php
    include "../connect/config.php"
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Servicii Medicale</title>
    <link rel="stylesheet" href="../styles.css">
</head>
<body>
    <nav>
        <div class="Logo">
            <div class="Navlinks">
                <ul>
                    <li><a href="../index.php">Home</a></li>
                    <li><a href="#">Servicii Mediacale</a></li>
                    <li><a href="#">Medici</a></li>
                    <li><a href="#">Galerie</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="ServMedicale">
        <h3>Servicii Medicale</h3>
    </div>

    <div class="Specializari">
        <ul>
            <li><a href="?specializare=Medicina Interna">Medicina Interna</a></li>
            <li><a href="?specializare=Cardiologie">Cardiologie</a></li>
            <li><a href="?specializare=Pediatrie">Pediatrie</a></li>
            <li><a href="?specializare=Dermatologie">Dermatologie</a></li>
            <li><a href="?specializare=Neurologie">Neurologie</a></li>
            <li><a href="?specializare=Psihiatrie">Psihiatrie</a></li>
        </ul>
    </div>

    <div class="ServiciiTabel">
        <table>
            <tr>
                <th>Servicii</th>
                <th>Pret</th>
            </tr>
            <?php
                if(isset($_GET['specializare'])) {
                    $specializare = mysqli_real_escape_string($conn,$_GET['specializare']);
                    $sql = "SELECT nume_serviciu, pret FROM Servicii WHERE specializare = '$specializare'";
                } else {
                    $sql = "SELECT nume_serviciu, pret FROM Servicii WHERE specializare = 'Medicina Interna'";
                }
                
                $result = mysqli_query($conn, $sql);

                if(mysqli_num_rows($result) > 0){
                    while($row = mysqli_fetch_assoc($result)){
                        echo "<tr>";
                        echo "<td>" . htmlspecialchars($row['nume_serviciu']) . "</td>";
                        echo "<td>" . htmlspecialchars($row['pret']) . " RON</td>";
                        echo "</tr>";
                    }
                } else {
                    echo "<tr><td colspan='2'>Nu există servicii disponibile.</td></tr>";
                }
            ?>
        </table>
    </div>

    <?php include "../footer.php"; ?>
</body>
</html>