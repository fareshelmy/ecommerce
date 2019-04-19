jQuery.noConflict();

function addToCart(button, productId) {
    var jsonData = {"productId": productId, reason: "add"};
    jQuery.ajax({
        url: "/ecommerce/cartHandler",
        type: 'POST',
        data: jsonData,
        dataType: 'text',
        success: function (data, textStatus, jqXHR) {
            jQuery("#cartQuantity").html(data);
            if (button !== null) {
                button.innerHTML = "Added To Cart";
                jQuery(button).prop("disabled", true);
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log("error");
        }
    });
}

function viewCart() {
    jQuery.ajax({
        url: "/ecommerce/cartHandler",
        type: 'GET',
        dataType: 'json',
        success: function (data, textStatus, jqXHR) {
            window.location.href = "/ecommerce/customer/pages/checkout.jsp";
            return false;
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log("error");
        }
    });
}

function removeFromCart(productId) {
    var jsonData = {"productId": productId, reason: "remove"};
    jQuery.ajax({
        url: "/ecommerce/cartHandler",
        type: 'POST',
        data: jsonData,
        dataType: 'text',
        success: function (data, textStatus, jqXHR) {
            jQuery("#cartQuantity").html(data);
            viewCart();
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log("error");
        }
    });
}

function updateView(divId) {
    jQuery("#" + divId).remove();
    jQuery("#total" + divId).remove();
}