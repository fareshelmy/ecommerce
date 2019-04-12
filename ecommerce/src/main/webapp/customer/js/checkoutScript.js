function checkUserCredit(userCredit) {
    try {
        var totalPrice = $("#total").html();
        totalPrice = totalPrice.substring(3);
        totalPrice = parseInt(totalPrice, 10);
        userCredit = parseInt(userCredit, 10);
        console.log(totalPrice + " " + userCredit);

        if (totalPrice > userCredit) {
            $("#submitBtn").attr("disabled", true);
        }else{
            $("#submitBtn").attr("disabled", false);
        } 
     
    } catch (e) {

    }

}

$("#submitBtn").click(placeOrder);

function placeOrder(){
    console.log("wokdjd");
}
