jQuery.noConflict();

function addToCart(button, productId) {
    var jsonData = {"productId": productId, reason: "add"};
    jQuery.ajax({
        url: "http://foodland-env-1.2hyy9yyf8i.us-east-2.elasticbeanstalk.com/cartHandler",
        type: 'POST',
        data: jsonData,
        dataType: 'text',
        success: function (data, textStatus, jqXHR) {
            jQuery("#cartQuantity").html(data);
            if (button !== null) {
                button.innerHTML = "Added To Cart";
                jQuery(button).prop("disabled", true);
            }
        }
    });
}

function viewCart() {
    jQuery.ajax({
        url: "http://foodland-env-1.2hyy9yyf8i.us-east-2.elasticbeanstalk.com/cartHandler",
        type: 'GET',
        dataType: 'json',
        success: function (data, textStatus, jqXHR) {
            window.location.href = "http://foodland-env-1.2hyy9yyf8i.us-east-2.elasticbeanstalk.com/customer/pages/checkout.jsp";
            return false;
        }
    });
}

function removeFromCart(productId) {
    var jsonData = {"productId": productId, reason: "remove"};
    jQuery.ajax({
        url: "http://foodland-env-1.2hyy9yyf8i.us-east-2.elasticbeanstalk.com/cartHandler",
        type: 'POST',
        data: jsonData,
        dataType: 'text',
        success: function (data, textStatus, jqXHR) {
            jQuery("#cartQuantity").html(data);
            viewCart();
        }
    });
}

function updateView(divId) {
    jQuery("#" + divId).remove();
    jQuery("#total" + divId).remove();
}