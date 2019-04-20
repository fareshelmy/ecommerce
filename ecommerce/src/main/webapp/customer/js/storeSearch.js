var request = null;



function generataSearchRequest() {
    var j = 0;
    var selectedItems = document.getElementsByName("categories");
    var numberOfResults = document.getElementById("show").value;
    var selectedItemsArray = [];
    var JsonSelected;
    for (var i = 0; i < selectedItems.length; i++) {
        if (selectedItems[i].checked === true) {
            selectedItemsArray[j] = selectedItems[i].id;
            j++;
        }
        JsonSelected = JSON.stringify(selectedItemsArray);

    }
     if (window.XMLHttpRequest) {
     request = new XMLHttpRequest();
     } else if (window.ActiveXObject) {
     request = new ActiveXObject(Microsoft.XMLHTTP);
     }
     var url = "http://localhost:8095/ecommerce/rest/sideSearch?categories=" + JsonSelected + "&show="+ numberOfResults +"&t=" + new Date().getTime();
     request.onreadystatechange = searchItems;
     request.open("GET", url);
     request.send();
     

}

function searchItems() {
    if (request.readyState === 4 && request.status === 200) {
        $("#products").load(" #products");
    }
}



document.getElementById("meat").onclick = generataSearchRequest;
document.getElementById("seafood").onclick = generataSearchRequest;
document.getElementById("fruit").onclick = generataSearchRequest;
document.getElementById("bakery").onclick = generataSearchRequest;
document.getElementById("cheese").onclick = generataSearchRequest;
document.getElementById("dessert").onclick = generataSearchRequest;
document.getElementById("home").onclick = generataSearchRequest;


