var initialPrice = document.getElementsByName("spanPrice");
var price = convertToArray(initialPrice);
var userCredit;
function checkUserCredit(userCredit, total) {
    try {
        total = total.trim();
        total = parseInt(total, 10);
        userCredit = parseInt(userCredit, 10);

        if (total > userCredit) {
            $("#submitBtn").attr("disabled", true);
        } else {
            $("#submitBtn").attr("disabled", false);
        }
    } catch (e) {
        console.log("exception happened");
    }
}

function checkCreditWithQuantity(credit) {
    var inputs = document.getElementsByName("inputQty");
    var recieptQTy = document.getElementsByName("spanQty");
    userCredit = credit;

    for (var i = 0; i < inputs.length; i++) {
        recieptQTy[i].innerHTML = inputs[i].value;
        var calculatedPrice = changePrice(recieptQTy[i].innerHTML, price[i]);
        initialPrice[i].innerHTML = calculatedPrice;
    }

    $("#total").html(changeTotal());
    var total = $("#total").html();
    checkUserCredit(userCredit, total);
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
        sum += parseFloat(initialPrice[i].innerHTML.trim());
    }

    return sum.toFixed(1);
}


function placeOrder() {
    Swal.fire({
        title: "Processing...",
        text: "Your order is now being processed...",
        type: "info",
        showCancelButton: false,
        showConfirmButton: false
    });

    var recieptQTy = document.getElementsByName("spanQty");
    var orderSpecificationIds = document.getElementsByName("orderSpecification");

    var orderSpecifications = new Array(recieptQTy.length);

    for (var i = 0; i < recieptQTy.length; i++) {
        var orderSpecification = {"productId": orderSpecificationIds[i].id, "productQuantity": recieptQTy[i].innerHTML};
        orderSpecifications[i] = orderSpecification;
    }

    var jsonData = {"orderSpecifications": JSON.stringify(orderSpecifications), "total": $("#total").html()};
    jQuery.ajax({
        url: "http://foodland-env-1.2hyy9yyf8i.us-east-2.elasticbeanstalk.com/checkout",
        type: 'POST',
        data: jsonData,
        dataType: 'text',
        success: function (data, textStatus, jqXHR) {
            if (data == "done") {
                Swal.fire({
                    title: "Thank you!",
                    text: "Your order has been submitted successfully",
                    type: "success",
                    confirmButtonColor: '#D10024',
                    confirmButtonText: 'OK'
                }).then((result) => {
                    if (result.value) {
                        window.location = "http://foodland-env-1.2hyy9yyf8i.us-east-2.elasticbeanstalk.com/home";
                    }
                });
            } else {
                var notAvailableProducts = JSON.parse(data);
                for (var i = 0; i < notAvailableProducts.length; i++) {
                    $("#error" + notAvailableProducts[i].productId).html("<h6 class='title' style='color: #D10024;'>Only " + notAvailableProducts[i].productQuantity + " items left</h6>");
                }
            }
        }
    });
}