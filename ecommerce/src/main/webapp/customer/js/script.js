/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//check if cookies are enabled
function areCookiesEnabled() {

    var isEnabled = (navigator.cookieEnabled) ? true : false;

    if (typeof navigator.cookieEnabled === "undefined" && !areCookiesEnabled()) {
        document.cookie = "mytestcookie";
        isEnabled = (document.cookie.indexOf("mytestcookie") !== -1) ? true : false;
    }
   if(!isEnabled){
       window.location.replace("http://foodland-env-1.2hyy9yyf8i.us-east-2.elasticbeanstalk.com/customer/pages/cookieError.jsp");
   }
}

document.onload = areCookiesEnabled();

