
<html>
    <head>
        <link href="webhub.css" rel="stylesheet">
        <title>
            Yorum sayfası
         
        </title>
        <link rel="shortcut icon" href="resimlerim/AllSeenGamesic.png.png" type="image/png">
    </head>
    <body style="height: 60px;color: snow; font-size: 60px;width: 100%px;border: 1;border-color: snow;border-style: outset;box-shadow: 0 0 7px snow,0 0 10px snow;">
    <div style="color: chartreuse; font-size: 60px;text-shadow: 0 0 7px aqua,0 0 10px aqua;text-align: center;" >    
    AllSeen Games Yorumlar:
</div>
    <br>
    <div style="margin-left: 500px;margin-top: 80;height: 80px;">
        <a href="projehub.html"  > <img src="resimlerim/portalacik.png" title="anamenü"style="height: 80px;" > </a>
     </div>
     <div style="margin-left: 1230px;margin-top: -80;height: 80px;">
        <a href="yolla.php" > <img src="resimlerim/mailcik.png" title="yeniyorum" style="height: 80px;" > </a>
     </div>
    <?php
    $con = mysqli_connect("localhost","root","","blm2537");
    if(mysqli_connect_errno())
    {
        echo "failed to connect to server".mysqli_connect_error();
    }
    else{
        //echo"bağlantı tamam";

        $sorgu= mysqli_query($con,"SELECT * FROM yorum");  //where ad=ali gibi birşey

        while($str=mysqli_fetch_assoc($sorgu)){
            echo '<font size="5"'." face=‘Arial’>";
            echo'<div style="border: 3px 10px 10px 10px;
    border-color: white;
    border-style: outset;padding: 1px 20px;margin-left: 500px;width:770px">';
            print"<br>";
            print $str['ad'];
            print"<br>";
            print $str['soyad'];
            print"<br>";
            print $str['email'];
            print("<br>");
            print("<br>");
            print $str['yorumlar'];
            print("<br>");
            print("<br>");
            echo '</div>';
        }
    }
    echo'<br>';
        ?>
    
    </body>
</html>