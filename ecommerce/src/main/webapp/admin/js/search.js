function processProductSearch() {
    var searchParamater = $("#searchProduct").val();
    window.location.href = "ProductSearchServlet?searchProduct=" + searchParamater;
    return false;
}

function processUserSearch() {
    var searchParamater = $("#searchText").val();
    window.location.href = "UserSearchServlet?searchedUser=" + searchParamater;
    return false;
}

////------------ handle when key Enter ----- 
function productFun()
{
   if (event.keyCode===13)
   {
             document.getElementById("productsearch").click();
        }
    
}
function userFun()
{
   if (event.keyCode===13)
   {
            document.getElementById("searchUser").click();
   }
    
}

/////--------use Ajax to not refresh page --------
$(document).ready(function () {
    $("#btnSearch").click(function () {
        var searchParamater = $("#searchProduct").val();
        $.ajax({url: 'ProductSearchServlet' + '?searchProduct=' + searchParamater + '&Date=' + new Date().getTime(),
            type: 'GET',
            success: function (data) {
                console.log("Sucess");
                console.log(data);
            },
            error: function (data) {
                console.log("Faild");
            }
        });
    });
});


