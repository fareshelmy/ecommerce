function checkUserCredit(userCredit) {
    var totalPrice = parseInt($("#total").val(), 10);
    userCredit = parseInt(userCredit, 10);

    if (totalPrice < userCredit) {
        $("#submitBtn").attr("disabled",true);
    }

}

$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();   
});


$("#submitBtn").click(placeOrder);

function placeOrder(){
    console.log("wokdjd");
}