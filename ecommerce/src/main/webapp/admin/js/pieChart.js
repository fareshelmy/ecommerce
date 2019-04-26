
function drawChart() {
    var meat = Number(document.getElementById("hidReqAttr1").value);
    var cheese = Number(document.getElementById("hidReqAttr3").value);
    var seafood = Number(document.getElementById("hidReqAttr4").value);
    var bakery = Number(document.getElementById("hidReqAttr6").value);
    var fruit = Number(document.getElementById("hidReqAttr5").value);
    var sweet = Number(document.getElementById("hidReqAttr2").value);
    var home = Number(document.getElementById("hidReqAttr7").value);
    var data = google.visualization.arrayToDataTable
            ([
                ['Task', 'Hours per Day'],
                ['Meat & Poultry', meat],
                ['Desserts & Sweets', sweet],
                ['Cheese, Dairy & Deli', cheese],
                ['SeaFood', seafood ],
                ['Fruits & Vegetables',fruit ],
                ['Bakery & Pastry', bakery],
                ['Home & Garden', home]
            ]);

    var options = {
        title: 'Current Sales',
        is3D: true,
        width: 900,
        height: 600,
        'backgroundColor':'#fffffff',
        'fontColor' : "#1b2a47"
    };

    var chart = new google.visualization.PieChart(document.getElementById('piechart'));
    chart.draw(data, options);
}
