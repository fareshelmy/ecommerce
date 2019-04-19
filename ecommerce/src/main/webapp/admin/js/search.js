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