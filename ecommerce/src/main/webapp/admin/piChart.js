
function drawChart() {
      console.log("theeeeeeee : "+document.getElementById("hidReqAttr1").value );
      console.log("666 : "+document.getElementById("hidReqAttr2").value );
      console.log("theeeee98eee : "+document.getElementById("hidReqAttr3").value );
      
        var data = google.visualization.arrayToDataTable
        ([
          ['Task', 'Hours per Day'],
          ['Meat & Poultry',    document.getElementById("hidReqAttr1").value ],
          ['Desserts & Sweets',    document.getElementById("hidReqAttr2").value],
          ['"Cheese, Dairy & Deli"',  document.getElementById("hidReqAttr3").value],
          ['SeaFood',document.getElementById("hidReqAttr4").value],
          ['Fruits & Vegetables', document.getElementById("hidReqAttr5").value],
          ['Bakery & Pastry',document.getElementById("hidReqAttr6").value]
        ]);

        var options = {
          title: 'precentage of sales for each categorys',
          is3D: true,
          width:550, 
          height:400
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));
        chart.draw(data, options);
}
//window.onload = function () {
//
//    var chart = new CanvasJS.Chart("chartContainer",
//    {
//            title: {
//                    text: "pyramid Assets of FoodLand Company"
//            },
//            animationEnabled: true,
//            data: [
//            {
//                    type: "pyramid",
//                    //valueRepresents: "area",
//                    indexLabelFontSize: 20,
//                    indexLabelFontFamily: "Lucida",
//                    dataPoints: [
//                    { y: valueOf( $("Meat_oultry") ), indexLabel: "Meat & Poultry", color: "#4071B0" },
//                    { y:  $("Seafood") , indexLabel: "seaFood", color: "#BEDF7A", exploded: true },
//                    { y:  $("FreshFruitsVegetablesHerbs") , indexLabel: "Fruits & Vegetables", color: "#BCA7E9" },
//                    { y:  $("BakeryPastry") , indexLabel: "Bakery & Pastry", color: "#F9C89F" },
//                    { y:  $("CheeseDairyDeli") , indexLabel: "Cheese, Dairy & Deli", color: "#D19393" },
//                    { y:  $("DessertsSweets") , indexLabel: "Desserts & Sweets", color: "#CBC689" }
//                    ]
//            }
//            ]
//    });
//    chart.render();
//     //pie ();
//
//}
 
//window.onload = function () {
//	var chart = new CanvasJS.Chart("pi_Chart",
//	{
//		title:{
//			text: "precentage of product for categorys"
//		},
//		legend: {
//			maxWidth: 350,
//			itemWidth: 120
//		},
//		data: [
//		{
//			type: "pie",
//			showInLegend: true,
//			legendText: "{indexLabel}",
//			dataPoints: [
//				{ y: $("Meat_oultrySize"), indexLabel: "Meat & Poultry" },
//				{ y: $("DessertsSweetsSize"), indexLabel: "Desserts & Sweets" },
//				{ y: $("CheeseDairyDeliSize"), indexLabel: "Cheese, Dairy & Deli" },
//				{ y: $("SeafoodSize"), indexLabel: "SeaFood"},
//				{ y: $("FreshFruitsVegetablesHerbsSize"), indexLabel: "Fruits & Vegetables" },
//				{ y:  $("BakeryPastrySize"), indexLabel: "Bakery & Pastry"}
//			]
//		}
//		]
//	});
//	chart.render();
//}

/*
 * 
  window.onload = function () {
    var chart = new CanvasJS.Chart("chartContainer",
    {
      title:{
        text: "Top Oil Reserves"
      },
      data: [

      {
        dataPoints: [
        { x: 1, y: 297571, label: "Venezuela"},
        { x: 2, y: 267017,  label: "Saudi" },
        { x: 3, y: 175200,  label: "Canada"},
        { x: 4, y: 154580,  label: "Iran"},
        { x: 5, y: 116000,  label: "Russia"},
        { x: 6, y: 97800, label: "UAE"},
        { x: 7, y: 20682,  label: "US"},
        { x: 8, y: 20350,  label: "China"}
        ]
      }
      ]
    });

    chart.render();
  }
  
 */
/////////////////////////////////////
