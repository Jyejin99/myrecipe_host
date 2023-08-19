function checkpw(){
    var pw = document.getElementById("pw");
    var confirm = document.getElementById("confirm");

    if(pw.value==confirm.value){
        document.getElementById("check").innerHTML="비밀번호가 일치합니다.";
        document.getElementById('check').style.color = 'blue';
        document.getElementById('check').style.fontSize = '0.8rem';
    }else{
        document.getElementById("check").innerHTML="비밀번호가 일치하지않습니다.";
        document.getElementById('check').style.color = 'red';
        document.getElementById('check').style.fontSize = '0.8rem';
    }
}