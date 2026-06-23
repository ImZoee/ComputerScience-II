<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IMC</title>
    <style>
        .error {
            color: red;
        }
    </style>
</head>
<body>
    <h1>Rezultat Evaluare IMC</h1>
    <?php
        function evaluareIMC($imc){
            if($imc <=18.55){
                $rezultat = "Subponderal";
            }else if($imc < 25){
                $rezultat = "Greutate Normala";
            }else if($imc < 30){
                $rezultat = "Supraboderal";
            }else if($imc < 35){
                $rezultat = "Obezitate Grad I";
            }else if($imc < 40){
                $rezultat = "Obezitate Grad II";
            }else if($imc < 45){
                $rezultat = "Obezitate Morbida";
            }
            return $rezultat;
        }
        $inaltime = $_REQUEST["inaltime"];
        $greutate = $_REQUEST["greutate"];

        $eroare = "";
        $valid = true;

        if (empty($inaltime) || !is_numeric($inaltime)) {
            $valid = false;
            $eroare .= "Valoare invalida pentru inaltime! ";
        }
        if (empty($greutate) || !is_numeric($greutate)) {
            $valid = false;
            $eroare .= "Valoare invalida pentru greutate!";
        }

        if ($valid) {
            $imc = $greutate / ($inaltime * $inaltime);
            $rezultat = evaluareIMC($imc);
            echo "<h2>IMC: $imc</h2>";
            echo "<h2>Rezultat evaluare: $rezultat</h2>";
        } else {
            echo "<p class='error'>$eroare</p>";
        }
    ?>
</body>
</html>
