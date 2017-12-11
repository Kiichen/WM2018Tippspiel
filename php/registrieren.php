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
    ?>
    <!--Hier kommt die Navigationsleiste hin! -->
</header>
<?php
    require("db_verbindung.php");

    if($_SERVER['REQUEST_METHOD'] == 'POST')
    {
        $anmeldename = $_POST["anmeldename"];
        $vorname = $_POST["vorname"];
        $nachname = $_POST["nachname"];
        $passwort = $_POST["passwort"];

        if (empty($anmeldename) || empty($vorname) || empty($nachname) || empty($passwort))
        {
            echo "Es müssen alle Felder ausgefüllt sein!";
        }
        else if($passwort != $_POST["passwortwdh"])
        {
            echo "Die Passwörter müssen übereinstimmen!";
        }
        else
        {
            $sql = "SELECT * FROM users WHERE anmeldename = '$anmeldename'";
            $result = mysqli_query($conn, $sql);
            if(mysqli_num_rows($result) > 0)
            {
                echo "Benutzername ist bereits vergeben!";
            }
            else
            {
                $passwort = md5($passwort);
                $sql = "INSERT INTO users (anmeldename, vorname, nachname, passwort) VALUES('$anmeldename', '$vorname', '$nachname', '$passwort')";

                if (mysqli_query($conn, $sql))
                {
                    echo "Registrierung war erfolgreich!";
                } else
                {
                    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
                }

                mysqli_close($conn);
            }
        }
    }
?>
<main>
    <form method="post" action="registrieren.php">
        <table>
            <tr>
                <td>Anmeldename:</td><td><input type="text" name="anmeldename"></td>
            </tr>
            <tr>
                <td>Vorname:</td><td><input type="text" name="vorname"></td>
            </tr>
            <tr>
                <td>Nachname:</td><td><input type="text" name="nachname"></td>
            </tr>
            <tr>
                <td>Passwort:</td><td><input type="password" name="passwort"></td>
            </tr>
            <tr>
                <td>Passwort wiederholen:</td><td><input type="password" name="passwortwdh"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" name="submit_button" value="Registrieren"></td>
            </tr>
        </table>
    </form>
</main>
</body>
</html>