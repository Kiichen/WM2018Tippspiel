<?php
session_start();
if($_SERVER['REQUEST_METHOD'] == 'POST')
{
    require("db_verbindung.php");

    $i=1;

    $gruppe = $_SESSION['gruppe'];
    $sql = "SELECT * FROM spielplan WHERE Gruppe = '$gruppe'";
    $result = mysqli_query($conn, $sql);

    while($row = mysqli_fetch_assoc($result))
    {
        $spieleID = $_SESSION['SpieleID'.$i];
        $userID = $_SESSION['ID'];

        $hmhz = $_POST['hmhz'.$i];
        $gmhz = $_POST['gmhz'.$i];
        $hme = $_POST['hme'.$i];
        $gme = $_POST['gme'.$i];
        $hmg = $_POST['hmg'.$i];
        $gmg = $_POST['gmg'.$i];
        $hmr = $_POST['hmr'.$i];
        $gmr = $_POST['gmr'.$i];


        $sql = "INSERT INTO tipps (benutzerid, spieleid, tippheimhz, tippgasthz, tippheimende, tippgastende, tippgelbeheim, tippgelbegast, tipproteheim, tipprotegast) 
            VALUES ('$userID', '$spieleID', '$hmhz', '$gmhz', '$hme', '$gme', '$hmg', '$gmg', '$hmr', '$gmr')";
        if(mysqli_query($conn, $sql))
        {
            echo "<p style='background: green; color: lightgray; width: 270px; padding: 5px;'>Der Tipp wurde gespeichert!</p>";
        }
        else
        {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        }

        $i++;

    }



    mysqli_close($conn);
}
?>