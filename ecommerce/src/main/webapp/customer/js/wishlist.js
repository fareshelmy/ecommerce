jQuery.noConflict();

function addToWishlist(button, productId) {
    var jsonData = {"productId": productId, reason: "add"};
    jQuery.ajax({
        url: "/ecommerce/wishlist",
        type: 'POST',
        data: jsonData,
        dataType: 'text',
        success: function (data, textStatus, jqXHR) {
            jQuery("#wishlistQuantity").html(data);
            jQuery(button).children().eq(1).html("Added To Wishlist");
            jQuery(button).children().eq(0).removeClass("fa-heart-o");
            jQuery(button).children().eq(0).addClass("fa-heart");
        }
    });
}

function removeFromWishlist(productId, listLength) {
    var jsonData = {"productId": productId, reason: "remove"};
    jQuery.ajax({
        url: "/ecommerce/wishlist",
        type: 'POST',
        data: jsonData,
        dataType: 'text',
        success: function (data, textStatus, jqXHR) {
            jQuery("#wishlistQuantity").html(data);
            jQuery("#" + productId).remove();
            if (listLength == 1) {
                jQuery("#wishlistContainer").html("<div class=\"section-title text-center\"><h5 class=\"title\">Your Wishlist is Empty!</h5></div>");
            }
        }
    });
}