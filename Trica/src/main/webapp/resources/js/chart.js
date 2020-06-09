/**
 * 
 */
$(function(){	
	google.charts.load('current', {'packages':['corechart', 'bar']});
	google.charts.load("current", {packages:['corechart']});
	google.charts.setOnLoadCallback(drawChart);
	var objectData;
	var title = "날짜 별 주문 건수";
	var windowWidth = $( window ).width();

	var windowHeight = $( window ).height();
	$.ajax({
		type : 'POST',                 //post방식으로 통신
		async : false,
		url : "chart/getDatechart.trc",    //탭의 data-tab속성의 값으로 된 html파일로 통신
		dataType : "json",            //json형식으로 값 읽기
		error : function(e) {          //통신 실패시
			alert("json데이터오류입니다.");
		},
		success : function(data) {    //통신 성공시 탭 내용담는 div를 읽어들인 값으로 채운다.
			obejctData =  data;
		}
	});
	function drawChart() {
		
	  var data = google.visualization.arrayToDataTable(obejctData);
	
	  var view = new google.visualization.DataView(data);
	  view.setColumns([0, 1,
	                   { calc: "stringify",
	                     sourceColumn: 1,
	                     type: "string",
	                     role: "annotation" },
	                   2]);
	
	  var options = {
	    title: title,
	    width: windowWidth,
	    height: windowHeight/2,
	    bar: {groupWidth: "95%"},
	    legend: { position: "none" },
	  };
	  var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
	  chart.draw(view, options);
	}
	$('.chart-btn').click(function(){
		$.ajax({
			type : 'POST',                 //post방식으로 통신
			async : false,
			url : $(this).attr('tab-link'),    //탭의 data-tab속성의 값으로 된 html파일로 통신
			dataType : "json",            //json형식으로 값 읽기
			error : function(e) {          //통신 실패시
				alert("json데이터오류입니다.");
			},
			success : function(data) {    //통신 성공시 탭 내용담는 div를 읽어들인 값으로 채운다.
				obejctData =  data;
			}
		});
		title = $(this).val();
		google.charts.setOnLoadCallback(drawChart);
	});
	$(window).resize( function() {
		windowWidth = $( window ).width();
		windowHeight = $( window ).height();
		google.charts.setOnLoadCallback(drawChart);	
		});

});