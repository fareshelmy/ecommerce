sortBy = document.getElementById("sortBy");
show = document.getElementById("show");

show.onchange = function () {
    window.location.href = `/ecommerce/customer/searchHandler?showNumber=${getShowNumber()}&pageNumber=1&searchBarCategory=All%20Categories`;
};
function getShowNumber() {
    return show.options[show.selectedIndex].value;
}
gotoSpecificPage = function(pageNumber){
    window.location.href = `/ecommerce/customer/searchHandler?showNumber=${getShowNumber()}&pageNumber=${pageNumber}&searchBarCategory=All%20Categories`;
}

function submitSearch(){
    $("#searchForm").submit();
}