

function drawChart() {
	  var data = google.visualization.arrayToDataTable([
	  ['Task', 'Hours per Day'],
	  ['Work', 8],
	  ['Eat', 2],
	  ['TV', 4],
	  ['Gym', 2],
	  ['Sleep', 8]
	]);

	  // Optional; add a title and set the width and height of the chart
	  var options = {'title':'Category sales avarage', 'width':1000, 'height':500 , 'backgroundColor':'#1b2a47'};

	  // Display the chart inside the <div> element with id="piechart"
	  var chart = new google.visualization.PieChart(document.getElementById('piechart'));
	  chart.draw(data, options);
}