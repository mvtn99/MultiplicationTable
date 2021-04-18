<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>Multiplication</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <div class="container center">
      <h2 class="title">Multiplication Table</h2><br>
      <?php
      $rows = 10;
      $cols = 10;

      echo "<table cellspacing='0' cellpadding='0' class='table'><thead>";
      for($th=0;$th<=$cols;$th++){
        echo "<th scope='col'>".$th."</th>";
      }
      echo "</thead><tbody>";
      for($tr=1;$tr<=$rows;$tr++){

          echo "<tr><th scope='row'>".$tr."</th>";
              for($td=1;$td<=$cols;$td++){
                  echo "<td>".$tr * $td."</td>";
              }
          echo "</tr>";
      }

      echo "</tbody></table>";
      ?>
    </div>
  </body>
</html>