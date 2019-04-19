sortBy = document.getElementById("sortBy");
show = document.getElementById("show");

function getShowNumber(){
    return show.options[show.selectedIndex].value;
}
function getPageNumber(){
    return ;
}
show.onchange = function changeShow() {
    jQuery.ajax({
        url: "/ecommerce/customer/searchHandler",
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