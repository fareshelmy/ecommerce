jQuery.noConflict();
var globalSessionId;
function addToCart(sessionId, productId) {
    globalSessionId = sessionId;
    var jsonData = {"sessionId": sessionId, "productId": productId, reason: "add"};
    jQuery.ajax({
        url: "/ecommerce/cartHandler",
        type: 'POST',
        data: jsonData,
        dataType: 'text',
        success: function (data, textStatus, jqXHR) {
            jQuery("#cartQuantity").html(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log("error");
        }
    });
}

function viewCart(sessionId) {
    var jsonData = {"sessionId": sessionId};
    jQuery.ajax({
        url: "/ecommerce/cartHandler",
        type: 'GET',
        data: jsonData,
        dataType: 'json',
        success: function (data, textStatus, jqXHR) {
            jQuery("#cartDropDownList").html("");
            for (var i = 0; i < data.length; i++) {
                jQuery("#cartDropDownList").append("<div id='cartDropDownList' class='product-widget'><div class='product-img'><img src='" + data[i].image + "' alt=''></div><div class='product-body'><h3 class='product-name'><a href='product.jsp'>" + data[i].name + "</a></h3><h4 class='product-price'>EGP" + data[i].price + "</h4></div><button class='delete' onclick=\"removeFromCart('${pageContext.session.id}', '" + data[i].id + "')\"><i class='fa fa - close'></i></button></div>");
            }
            if(data.length === 0){
                jQuery("#cartDropDownList").append("No items found");
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log("error");
        }
    });
}

function removeFromCart(sessionId, productId) {
    var jsonData = {"sessionId": globalSessionId, "productId": productId, reason: "remove"};
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