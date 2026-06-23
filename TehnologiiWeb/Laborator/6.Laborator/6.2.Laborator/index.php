<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Bine ati venit</h1>
    <?php
    $nume = $_REQUEST["numePers"];
    $mesaj = "Salut $nume";
    $OraCurenta = date("G");

    if ($OraCurenta <= 10){
        $mesaj = "Buna Dimineata, $nume";
    }else if($OraCurenta <= 19){
            $mesaj = "Buna Dimineata, $nume";
        }else{
            $mesaj = "Buna Seara, $nume";
        }
        echo "<h2>$mesaj</h2>";
    ?>
</body>
</html>
