function checkUserCredit(userCredit) {
    try {
        var totalPrice = $("#total").html();
        totalPrice = totalPrice.substring(3);
        totalPrice = parseInt(totalPrice, 10);
        userCredit = parseInt(userCredit, 10);
        console.log(totalPrice + " " + userCredit);

        if (totalPrice > userCredit) {
            $("#submitBtn").attr("disabled", true);
        } else {
            $("#submitBtn").attr("disabled", false);
        }

    } catch (e) {

    }

}


function placeOrder(cartProducts) {
    var jsonData = {"orderSpecifications": cartProducts};
    jQuery.ajax({
        url: "/ecommerce/checkout",
        type: 'POST',
        data: jsonData,
        dataType: 'text',
        success: function (data, textStatus, jqXHR) {
           console.log("done");
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log("error");
        }
    });
}
