function ok(){
    user = document.getElementById("user").value ;
    sifre = document.getElementById("sifre").value ;
    if (sifre=="doğru"&& user =="kullanıcı"){
        document.getElementById("hatala").innerHTML = "Doğru";
        alert("Girişi başarıyla tamamladınız :)")
        document.getElementById("girdik").submit();
    }
    else{
        document.getElementById("hatala").innerHTML = "Bir şey hatalı gibi";
    }
}