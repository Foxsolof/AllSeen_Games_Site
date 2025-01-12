
<html>
    <head>
        <link href="webhub.css" rel="stylesheet">
        <title>
            Yorum sayfası
         
        </title>
        <link rel="shortcut icon" href="resimlerim/AllSeenGamesic.png.png" type="image/png">
    </head>
    <body style="height: 60px;color: snow; font-size: 60px;width: 580px;border: 1;border-color: snow;border-style: outset;box-shadow: 0 0 7px snow,0 0 10px snow;">
    <div style="color: chartreuse; font-size: 60px;text-shadow: 0 0 7px aqua,0 0 10px aqua;text-align: center;" >   
     Yorum
</div>
    <br>
    <form action="" method="post">
    Ad    giriniz:<input type="text" name="isim" required>
    Soyad giriniz:<input type="text" name="soyisim" required>
    Email giriniz:<input type="text" name="email" required>
    Metin giriniz:<textarea name="mtn" cols="30" rows="7" required> </textarea>   
    <button type="submit"  name="gonder"><img src="resimlerim/mailcik.png" title="anamenü" style="height: 80px;" > </button>
    </form>
    <?php
     if(isset($_POST['gonder'])){
        echo "gonderi basarili";
    $con = mysqli_connect("localhost","root","","blm2537");
    if(mysqli_connect_errno())
    {
        echo "failed to connect to server".mysqli_connect_error();
    }
    else{
       
        //echo"bağlantı tamam";
        $yorum = "INSERT INTO yorum (ad,soyad,email,yorumlar) VALUES('".$_POST['isim']."','".$_POST['soyisim']."','".$_POST['email']."','".$_POST['mtn']."')";
        $sorgu= mysqli_query($con,$yorum);  //where ad=ali gibi birşey
        
    }   
    }
    echo'<br>';
        ?>
    <div style="margin-left: 10px;margin-top: 40;height: 80px;">
        <a href="projehub.html" > <img src="resimlerim/portalacik.png" title="anamenü" style="height: 80px;"> </a>
     </div>
     <div style="margin-left: 80px;margin-top: -80;height: 80px;">
        <a href="yorumlar.php" > <img src="resimlerim/mailcik.png" title="yorumlar" style="height: 80px;" > </a>
     </div>
    </body>
</html>