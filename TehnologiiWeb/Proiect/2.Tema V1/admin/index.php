<?php
session_start();
require_once "../connect/config.php";
include DIR_BASE . "connect/connect.php";
include DIR_BASE . "connect/header.php";
include DIR_BASE . "admin/admin-functions.php";
?>

<?php
$comanda = isset($_REQUEST["comanda"]) ? $_REQUEST["comanda"] : NULL;
if (isset($comanda)) {
  switch ($comanda) {
    case 'login':
      $nume = isset($_REQUEST["username"]) ? $_REQUEST["username"] : '';
      $parola = isset($_REQUEST["password"]) ? $_REQUEST["password"] : '';
      // TODO: validare parametrii
      if (!doLogin($nume, $parola)) {
          echo "<div class='error'>Autentificare esuata!</div>";
      }
      break;

    case 'logout':
      doLogout();
      break;
  }
}

if (!isLogged()) {
  include "login.php";
} else {
  printf('<div align="right">Welcome <b>%s</b> | <a href="index.php?comanda=logout">Logout</a></div>', getLoggedUser());
  /* Userul e autentificat */
  switch ($comanda) {
    case 'delete':
      $id = $_POST["id"];
      //TODO: validare parametrii
      if (deleteMesaj($id)) {
        echo "<div class='succes'>Intrarea cu id-ul $id a fost stearsa cu succes.</div>";
      } else {
        echo "<div class='error'>Stergere esuata.</div>";
      }
      break;
    default:
  }

  listMesaje();
}
?>
