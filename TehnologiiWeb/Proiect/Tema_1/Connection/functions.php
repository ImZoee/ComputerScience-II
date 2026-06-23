<?php

function displaySarmale($conn) {
    // Afișează produsele din tabelul Meniu_Items_Sarmale
    displayCategory($conn, 'Meniu_Items_Sarmale', 'sarmale-item');
}

function displayAleaDeLanga($conn) {
    // Afișează produsele din tabelul Meniu_Items_AleaDeLanga
    displayCategory($conn, 'Meniu_Items_AleaDeLanga', 'alea-de-langa-item');
}

function displayDesert($conn) {
    // Afișează produsele din tabelul Meniu_Items_AleaDeLanga
    displayCategory($conn, 'Meniu_Items_AleaDeLanga', 'desert');
}
function displayCategory($conn, $table, $class) {
    // Verificăm dacă numele tabelului este valid (pentru securitate)
    $allowedTables = ['Meniu_Items_Sarmale', 'Meniu_Items_AleaDeLanga'];
    if (!in_array($table, $allowedTables)) {
        die("Tabel invalid!");
    }

    // Construim interogarea SQL dinamic
    $sql = "SELECT * FROM $table";
    $result = mysqli_query($conn, $sql);

    // Verificăm dacă interogarea a returnat rezultate
    if (!$result) {
        die("Eroare la executarea interogării: " . mysqli_error($conn));
    }

    // Afișăm produsele dacă există rezultate
    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            echo '<div class="produs ' . htmlspecialchars($class) . '">';
            echo '<img src="' . htmlspecialchars($row['imagine']) . '" alt="' . htmlspecialchars($row['nume']) . '">';
            echo '<h3>' . htmlspecialchars($row['nume']) . '</h3>';
            echo '<p>' . htmlspecialchars($row['descriere']) . '</p>';
            echo '<span>' . number_format($row['pret'], 2) . ' RON</span>';
            echo '</div>';
        }
    } else {
        // Mesaj dacă nu există produse în categoria respectivă
        echo '<p class="no-products">Nu sunt produse disponibile în această categorie.</p>';
    }
}
?>