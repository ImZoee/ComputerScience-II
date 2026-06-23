<?php
  /**
   * Verifica detaliile de autentificare transmise ca parametru.
   * In caz de succes stocheaza in sesiune proprietatile:
   *  'user' - userul logat
   *  'logat' - cu valoarea TRUE
   */
  function doLogin($user, $password) {
    global $id_conexiune;
    $logat = FALSE;
    if (isLogged())
      doLogout();

    //$sql = "SELECT * FROM admin WHERE nume='$user' AND parola= md5('$password')";//Gresit! Permite SQL Injection
    $sql = sprintf("SELECT * FROM admin WHERE nume='%s' AND parola= md5('%s')",
              mysqli_real_escape_string($id_conexiune, $user),
              mysqli_real_escape_string($id_conexiune, $password));
    //echo "Query: $sql <br>";
    if (!($result = mysqli_query($id_conexiune, $sql))) {
      echo('Error: ' . mysqli_error($id_conexiune));
    }
    if ($row = mysqli_fetch_array($result)) {
      $logat = TRUE;
      $_SESSION['user'] = $user;
      $_SESSION['logat'] = TRUE;
    }
    return $logat;
  }

  /**
   * Sterge din sesiune variabilele stocate la autentificare.
   */
  function doLogout() {
    unset($_SESSION['user']);
    unset($_SESSION['logat']);
  }

  /**
   * Verifica daca userul este logat sau nu.
   */
  function isLogged() {
    return isset($_SESSION['logat']) && $_SESSION['logat'] == TRUE;
  }

  /**
   * Extrage din sesiune numele userului logat.
   */
  function getLoggedUser() {
    return isset($_SESSION['user']) ? $_SESSION['user'] : NULL;
  }


  function adaugaServiciu($specializare, $nume_serviciu, $pret) {
    global $id_conexiune;
    
    $specializare = mysqli_real_escape_string($id_conexiune, $specializare);
    $nume_serviciu = mysqli_real_escape_string($id_conexiune, $nume_serviciu);
    $pret = mysqli_real_escape_string($id_conexiune, $pret);
    
    $sql = "INSERT INTO Servicii (specializare, nume_serviciu, pret) 
            VALUES ('$specializare', '$nume_serviciu', '$pret')";
    
    return mysqli_query($id_conexiune, $sql);
  }

  function modificaServiciu($id, $nume_serviciu, $pret) {
    global $id_conexiune;
    
    $id = mysqli_real_escape_string($id_conexiune, $id);
    $nume_serviciu = mysqli_real_escape_string($id_conexiune, $nume_serviciu);
    $pret = mysqli_real_escape_string($id_conexiune, $pret);
    
    $sql = "UPDATE Servicii 
            SET nume_serviciu='$nume_serviciu', 
                pret='$pret' 
            WHERE id=$id";
    
    return mysqli_query($id_conexiune, $sql);
  }

  function stergeServiciu($id) {
    global $id_conexiune;
    $id = mysqli_real_escape_string($id_conexiune, $id);
    $sql = "DELETE FROM Servicii WHERE id=$id";
    return mysqli_query($id_conexiune, $sql);
  }

  function getServicii($specializare = null) {
    global $id_conexiune;
    
    if($specializare) {
        $specializare = mysqli_real_escape_string($id_conexiune, $specializare);
        $sql = "SELECT * FROM Servicii WHERE specializare='$specializare'";
    } else {
        $sql = "SELECT * FROM Servicii WHERE specializare='Medicina Interna'";
    }
    
    $result = mysqli_query($id_conexiune, $sql);
    $servicii = array();
    
    if($result) {
        while($row = mysqli_fetch_assoc($result)) {
            $servicii[] = $row;
        }
    }
    return $servicii;
  }

?>
