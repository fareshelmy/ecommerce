var initialPrice = document.getElementsByName("spanPrice");
var price = convertToArray(initialPrice);

$(document).ready(checkUserCredit);
function checkUserCredit(userCredit) {
    checkCreditWithQuantity();
    try {
        var totalPrice = $("#total").html().trim();
        totalPrice = totalPrice.substring(3);
        totalPrice = parseInt(totalPrice, 10);
        userCredit = parseInt(userCredit, 10);
        

        if (totalPrice > userCredit) {
            $("#submitBtn").attr("disabled", true);
        } else {
            $("#submitBtn").attr("disabled", false);
        }

    } catch (e) {

    }

    $("#submitBtn").click(sayHello);
}

function checkCreditWithQuantity() {
    var inputs = document.getElementsByName("inputQty");
    var recieptQTy = document.getElementsByName("spanQty");

    for (var i = 0; i < inputs.length; i++) {
        recieptQTy[i].innerHTML = inputs[i].value;
        var calculatedPrice = changePrice(recieptQTy[i].innerHTML, price[i]);
        initialPrice[i].innerHTML = calculatedPrice;
    }
    
    $("#total").html(changeTotal());

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

function changePrice(quantity, price) {

    quantity = parseInt(quantity.trim());
    price = parseInt(price);
    var result = price*quantity;  
    return result.toFixed(1);
}

function convertToArray(arr){
    var copyArray = [];
    for(var i=0;i<arr.length;i++){
        copyArray[i] = parseInt(arr[i].innerHTML.trim());
    }
    
    return copyArray;
}

function changeTotal(){
    var sum=0;
    
    for(var i=0;i<initialPrice.length;i++){
        sum += parseInt(initialPrice[i].innerHTML.trim());
    }
    
    return sum.toFixed(1);
}
