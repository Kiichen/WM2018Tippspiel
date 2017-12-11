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
            session_start();
            if($_SERVER['REQUEST_METHOD'] == 'POST')
            {
                $anmeldename = $_POST['anmeldename'];
                $passwort = md5($_POST['passwort']);
                $sql = "SELECT * FROM users WHERE anmeldename = '$anmeldename'";
                $result = mysqli_query($conn, $sql);
                if(mysqli_num_rows($result) == 0)
                {
                    echo "Benutzername existiert nicht!";
                }
                else
                {
                    $row = mysqli_fetch_assoc($result);

                    if($passwort != $row['passwort'])
                    {
                        echo "Passwort stimmt nicht überein!";
                    }
                    else
                    {
                        $_SESSION['ID'] = $row['ID'];
                        echo "Anmeldung Erfolgreich!";
                    }
                }

            }

            if(!isset($_SESSION['ID']))
            {
                ?>

                <main>
                    <form method="post" action="index.php">
                        <table>
                            <tr>
                                <td>Anmeldename:</td>
                                <td><input type="text" name="anmeldename"></td>
                            </tr>
                            <tr>
                                <td>Passwort:</td>
                                <td><input type="password" name="passwort"></td>
                            </tr>
                            <tr>
                                <td colspan="2"><input type="submit" name="anmelden_button" value="Anmelden"></td>
                            </tr>
                            <tr>
                                <td colspan="2"><a href="registrieren.php">hier Registrieren</a></td>
                            </tr>
                        </table>
                    </form>
                </main>
                <?php
            }
            else
            {
                ?>
                    <main>
                        <form method="post" action="logout.php">
                            <input type="submit" name="ausloggen_button" value="Ausloggen">
                        </form>
                    </main>

                <?php
            }
        ?>
    </body>
</html>