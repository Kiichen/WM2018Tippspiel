<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>WM 2018 - Tippspiel</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
<header>
    <h1>Fußball Weltmeisterschaft 2018</h1>
    <h2>Tippspiel</h2>

    <?php
    require("navbar.php");
    session_start();
    require ("db_verbindung.php");

    if(isset($_SESSION['ID']))
    {
    ?>

    <!--Hier kommt die Navigationsleiste hin! -->
</header>

<main>
    <form method="post" action="tippen.php">
        <select name="Spiel">
            <option value="A">Gruppe A</option>
            <option value="B">Gruppe B</option>
            <option value="C">Gruppe C</option>
            <option value="D">Gruppe D</option>
            <option value="E">Gruppe E</option>
            <option value="F">Gruppe F</option>
            <option value="G">Gruppe G</option>
            <option value="H">Gruppe H</option>
        </select>
        <input type="submit" value="Anzeigen">
    </form>
    <form method="post" action="tippabgeben.php">
        <table>
            <tr>
                <td>Spiele-ID</td>
                <td>Gruppe</td>
                <td>Spielort</td>
                <td>Datum</td>
                <td>Uhrzeit</td>
                <td>Heimmannschaft</td>
                <td>Gastmannschaft</td>
                <td>Heimmannschaft Halbzeit</td>
                <td>Gastmannschaft Halbzeit</td>
                <td>Heimmannschaft Ende</td>
                <td>Gastmannschaft Ende</td>
                <td>Heimmannschaft Gelb</td>
                <td>Gastmannschaft Gelb</td>
                <td>Heimmannschaft Rot</td>
                <td>Gastmannschaft Rot</td>
            </tr>
            <?php


            if ($_SERVER['REQUEST_METHOD'] == 'POST') {
                $gruppe = $_POST['Spiel'];
                $_SESSION['gruppe'] = $gruppe;

                $sql = "SELECT * FROM spielplan WHERE Gruppe = '$gruppe'";
                $result = mysqli_query($conn, $sql);

                $userID = $_SESSION['ID'];

                $i = 1;

                while ($row = mysqli_fetch_assoc($result))
                {
                    $spieleID = $row['ID'];
                    $_SESSION['SpieleID' . $i] = $spieleID;

                    $schongetippt = "SELECT * FROM tipps WHERE benutzerid = '$userID' AND spieleid = '$spieleID'";

                    $spielbezeichnung = $row['Gruppe'];
                    $spielort = UTF8_encode($row['Spielort']);
                    $datumuhrzeit = $row['Datum'];
                    $heimmannschaft = UTF8_encode($row['Heimmannschaft']);
                    $gastmannschaft = UTF8_encode($row['Gastmannschaft']);
                    $datumuhrzeit = date_create($datumuhrzeit);
                    $datum = date_format($datumuhrzeit, "d.m.y");
                    $uhrzeit = date_format($datumuhrzeit, "H:i:s");
                    echo "<tr><td>$spieleID</td><td>$spielbezeichnung</td><td>$spielort</td><td>$datum</td><td>$uhrzeit</td><td>$heimmannschaft</td><td>$gastmannschaft</td>
                            <td><input type='number' name='hmhz" . $i . "'></td><td><input type='number' name='gmhz" . $i . "'></td><td><input type='number' name='hme" . $i . "'></td><td><input type='number' name='gme" . $i . "'></td>
                            <td><input type='number' name='hmg" . $i . "'></td><td><input type='number' name='gmg" . $i . "'></td><td><input type='number' name='hmr" . $i . "'></td><td><input type='number' name='gmr" . $i . "'></td>
                            </tr>";
                    $i++;

                }
            }


            ?>
            <tr><td colspan="14"><input type="submit" value="Tipp abgeben"></td></tr>
        </table>
    </form>
    <?php
        }
        else
        {
            echo "Du bist nicht angemeldet!";
        }
        ?>
</main>

</body>
</html>