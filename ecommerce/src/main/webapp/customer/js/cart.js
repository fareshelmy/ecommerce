jQuery.noConflict();
var globalSessionId;

function addToCart(button, sessionId, productId) {
    globalSessionId = sessionId;
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
            var total = 0;
            jQuery("#cartDropDownList").html("");
            for (var i = 0; i < data.length; i++) {
                jQuery("#cartDropDownList").append("<div id='cartDropDownList' class='product-widget'><div class='product-img'><img src='" + data[i].image + "' alt=''></div><div class='product-body'><h3 class='product-name'><a href='product.jsp'>" + data[i].name + "</a></h3><h4 class='product-price'>EGP" + data[i].price + "</h4></div><button class='delete' onclick=\"removeFromCart('" + data[i].id + "')\"><i class='fa fa-close'></i></button></div>");
                total += data[i].price;
            }
            if (data.length === 0) {
                jQuery("#cartDropDownList").append("No items found");
            }
            jQuery("#itemsCount").html(data.length + " Item(s) selected");
            jQuery("#subtotal").html("SUBTOTAL: EGP" + total);
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
            viewCart(globalSessionId);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log("error");
        }
    });
}