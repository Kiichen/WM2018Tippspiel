<?php
session_start();
if ($_SESSION['sortierart']=='gruppe')
{
    gruppesortiert();
}
elseif ($_SESSION['sortierart']=='datum')
{
    datumsortiert();
}

function gruppesortiert()
{
    if($_SERVER['REQUEST_METHOD'] == 'POST')
    {
        require("db_verbindung.php");
        $gruppe = $_SESSION['gruppe'];
        $sql = "SELECT * FROM spielplan WHERE Gruppe = '$gruppe'";
        $result = mysqli_query($conn, $sql);
        insert($result);
    }
    mysqli_close($conn);
    header('Location: tippen.php');
}

function datumsortiert()
{
    if($_SERVER['REQUEST_METHOD'] == 'POST')
    {
        require("db_verbindung.php");

        $sql = "SELECT * FROM spielplan ORDER BY Datum";
        $result = mysqli_query($conn, $sql);
        insert($result);
    }
    mysqli_close($conn);
    header('Location: tippen.php');

}

function insert ($result)
{
    require ('DB_Verbindung.php');
    $i = 1;
    while ($row = mysqli_fetch_assoc($result))
    {
        $spieleID = $_SESSION['SpieleID' . $i];
        $userID = $_SESSION['ID'];

        $schongetippt = "SELECT * FROM tipps WHERE benutzerid = '$userID' AND spieleid = '$spieleID'";
        $result2 = mysqli_query($conn, $schongetippt);

        $hmhz = $_POST['hmhz' . $i];
        $gmhz = $_POST['gmhz' . $i];
        $hme = $_POST['hme' . $i];
        $gme = $_POST['gme' . $i];
        $hmg = $_POST['hmg' . $i];
        $gmg = $_POST['gmg' . $i];
        $hmr = $_POST['hmr' . $i];
        $gmr = $_POST['gmr' . $i];

        $tippdatum = date("Y-m-d H:i:sa");

        if (mysqli_num_rows($result2) <= 0)
        {
            $sql = "INSERT INTO tipps (benutzerid, spieleid, tippdatum, tippheimhz, tippgasthz, tippheimende, tippgastende, tippgelbeheim, tippgelbegast, tipproteheim, tipprotegast) 
                VALUES ('$userID', '$spieleID', '$tippdatum', '$hmhz', '$gmhz', '$hme', '$gme', '$hmg', '$gmg', '$hmr', '$gmr')";
            if (mysqli_query($conn, $sql)) {
                echo "<p style='background: green; color: lightgray; width: 270px; padding: 5px;'>Der Tipp wurde gespeichert!</p>";
            }
            else
            {
                echo "Error: " . $sql . "<br>" . mysqli_error($conn);
            }
        }
        else
        {
            $sql = "UPDATE tipps SET tippdatum = '$tippdatum', tippheimhz = '$hmhz', tippgasthz='$gmhz', tippheimende='$hme', tippgastende='$gme', tippgelbeheim='$hmg', tippgelbegast='$gmg', tipproteheim='$hmr', tipprotegast='$gmr'
                        WHERE benutzerid='$userID' AND spieleid='$spieleID'";

            if (mysqli_query($conn, $sql))
            {
                echo "Record updated successfully";
            }
            else
            {
                echo "Error updating record: " . mysqli_error($conn);
            }
        }
        $i++;

    }
}
?>