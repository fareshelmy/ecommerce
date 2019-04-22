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
var input = document.getElementById("searchProduct");
input.addEventListener("keyup", function(event) {
  // Number 13 is the "Enter" key on the keyboard
  if (event.keyCode === 13) {
   // event.preventDefault();
    window.location.href = "ProductSearchServlet?searchProduct=" + input.value();
  }
});
/////--------use Ajax to not refresh page --------
$(document).ready(function () {
    $("#btnSearch").click(function () {
       var searchParamater = $("#searchProduct").val();
        $.ajax({url:'ProductSearchServlet'+'?searchProduct='+searchParamater+'&Date='+new Date().getTime(),
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


