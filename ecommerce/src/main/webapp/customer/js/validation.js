var queryString  = window.location.search;

function checkPasswordConfirmation(){
    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("confirmPassword").value;
    
    if(password === confirmPassword){
        document.getElementById("confirmPasswordError").style.color = "green";
        document.getElementById("confirmPasswordError").innerHTML = "Password Is Matched";
        document.getElementById("signinSubmit").disabled = false;
    }else{
        document.getElementById("confirmPasswordError").style.color = "red";
        document.getElementById("confirmPasswordError").innerHTML = "Password Is Not Matched";
        document.getElementById("signinSubmit").disabled = true;
    }
}

function showSaveMsg(){
    var index = queryString.indexOf("=");
    var msg = queryString.substring(index+1);
    
    console.log(msg);
    if(msg === "saved"){
        document.getElementById("saveMsg").innerHTML = "Your New Data Is Saved Successfully";
    }
}

document.getElementById("confirmPassword").onkeyup = checkPasswordConfirmation;
document.getElementById("password").onkeyup = checkPasswordConfirmation;
window.onload = showSaveMsg;