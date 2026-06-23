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
  
  // Procesare acțiuni pentru servicii medicale
  if(isset($_POST['action'])) {
      $message = '';
      
      switch($_POST['action']) {
          case 'add':
              if(adaugaServiciu($_POST['specializare'], $_POST['nume_serviciu'], $_POST['pret'])) {
                  $message = "<div class='success'>Serviciul a fost adăugat cu succes!</div>";
              } else {
                  $message = "<div class='error'>Eroare la adăugarea serviciului!</div>";
              }
              break;
              
          case 'edit':
              if(modificaServiciu($_POST['id'], $_POST['nume_serviciu'], $_POST['pret'])) {
                  $message = "<div class='success'>Serviciul a fost modificat cu succes!</div>";
              } else {
                  $message = "<div class='error'>Eroare la modificarea serviciului!</div>";
              }
              break;
              
          case 'delete':
              if(stergeServiciu($_POST['id'])) {
                  $message = "<div class='success'>Serviciul a fost șters cu succes!</div>";
              } else {
                  $message = "<div class='error'>Eroare la ștergerea serviciului!</div>";
              }
              break;
      }
      
      if($message) {
          echo $message;
      }
  }

  // Formular pentru adăugare serviciu
  ?>
  <div class="admin-controls">
    <h4>Adaugă Serviciu Nou</h4>
    <form method="POST" action="">
        <input type="hidden" name="action" value="add">
        <select name="specializare" required>
            <option value="Medicina Interna">Medicina Interna</option>
            <option value="Cardiologie">Cardiologie</option>
            <option value="Pediatrie">Pediatrie</option>
            <option value="Dermatologie">Dermatologie</option>
            <option value="Neurologie">Neurologie</option>
            <option value="Psihiatrie">Psihiatrie</option>
        </select>
        <input type="text" name="nume_serviciu" placeholder="Nume Serviciu" required>
        <input type="number" name="pret" placeholder="Pret" required>
        <input type="submit" value="Adaugă Serviciu">
    </form>
  </div>

  <?php
  // Afișare listă servicii
  $specializare = isset($_GET['specializare']) ? $_GET['specializare'] : 'Medicina Interna';
  $servicii = getServicii($specializare);
  ?>

  <div class="ServiciiTabel">
  <table>
      <tr>
          <th>Servicii</th>
          <th>Pret</th>
          <th>Actiuni</th>
      </tr>
      <?php
      foreach($servicii as $serviciu) {
          echo "<tr>";
          if(isset($_GET['edit']) && $_GET['edit'] == $serviciu['id']) {
              // Formular de editare
              ?>
              <form method="POST" action="">
                  <input type="hidden" name="action" value="edit">
                  <input type="hidden" name="id" value="<?php echo $serviciu['id']; ?>">
                  <td><input type="text" name="nume_serviciu" value="<?php echo htmlspecialchars($serviciu['nume_serviciu']); ?>"></td>
                  <td><input type="number" name="pret" value="<?php echo htmlspecialchars($serviciu['pret']); ?>"></td>
                  <td>
                      <input type="submit" value="Salvează">
                      <a href="?specializare=<?php echo urlencode($specializare); ?>">Anulează</a>
                  </td>
              </form>
              <?php
          } else {
              echo "<td>" . htmlspecialchars($serviciu['nume_serviciu']) . "</td>";
              echo "<td>" . htmlspecialchars($serviciu['pret']) . " RON</td>";
              ?>
              <td>
                  <a href="?specializare=<?php echo urlencode($specializare); ?>&edit=<?php echo $serviciu['id']; ?>">Editează</a> |
                  <form method="POST" action="" style="display:inline;">
                      <input type="hidden" name="action" value="delete">
                      <input type="hidden" name="id" value="<?php echo $serviciu['id']; ?>">
                      <input type="submit" value="Șterge" onclick="return confirm('Sigur doriți să ștergeți acest serviciu?')">
                  </form>
              </td>
              <?php
          }
          echo "</tr>";
      }
      ?>
  </table>
  </div>
  <?php
}
?>