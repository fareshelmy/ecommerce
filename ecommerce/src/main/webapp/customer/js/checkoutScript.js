var test1;
var test2;
var initialPrice = document.getElementsByName("spanPrice");
var price = convertToArray(initialPrice);

$(document).ready(checkUserCredit);
function checkUserCredit(userCredit) {
    try {
        var totalPrice = $("#total").html().trim();
        totalPrice = totalPrice.substring(3);
        totalPrice = parseInt(totalPrice, 10);
        userCredit = parseInt(userCredit, 10);
        test1 = totalPrice;
        test2 = userCredit;

        if (totalPrice > userCredit) {
            $("#submitBtn").attr("disabled", true);
        } else {
            $("#submitBtn").attr("disabled", false);
        }

    } catch (e) {

    }

    function sayHello() {
        console.log(test1 + " " + test2);
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


function changePrice(quantity, price) {

    quantity = parseInt(quantity.trim());
    price = parseInt(price);
    var result = price * quantity;
    return result.toFixed(1);
}

function convertToArray(arr) {
    var copyArray = [];
    for (var i = 0; i < arr.length; i++) {
        copyArray[i] = parseInt(arr[i].innerHTML.trim());
    }

    return copyArray;
}

function changeTotal() {
    var sum = 0;

    for (var i = 0; i < initialPrice.length; i++) {
        sum += parseInt(initialPrice[i].innerHTML.trim());
    }

    return sum.toFixed(1);
}


function placeOrder() {
    var recieptQTy = document.getElementsByName("spanQty");
    var orderSpecificationIds = document.getElementsByName("orderSpecification");

    var orderSpecifications = new Array(recieptQTy.length);

    for (var i = 0; i < recieptQTy.length; i++) {
        var orderSpecification = {"productId": orderSpecificationIds[i].id, "productQuantity": recieptQTy[i].innerHTML};
        orderSpecifications[i] = orderSpecification;
    }

    var jsonData = {"orderSpecifications": JSON.stringify(orderSpecifications), "total": $("#total").html()};
    jQuery.ajax({
        url: "/ecommerce/checkout",
        type: 'POST',
        data: jsonData,
        dataType: 'text',
        success: function (data, textStatus, jqXHR) {
            if (data == "done") {
                location.href = "/ecommerce/home";
            } else {
                var notAvailableProducts = JSON.parse(data);
                for (var i = 0; i < notAvailableProducts.length; i++) {
                    $("#error" + notAvailableProducts[i].productId).html("<h6 class='title' style='color: #D10024;'>Only " + notAvailableProducts[i].productQuantity + " items left</h6>");
                }
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log("error");
        }
    });
}