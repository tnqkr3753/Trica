/**
 * 
 */


$(function(){
	
	// 1차 카테고리 변경하면 2차 카테고리 변경되게
	$('#category1').change(function() {
		var tv = ["TV/영상가전", "냉장고", "세탁기", "건조기", "스타일러"];
		var camera = ["카메라", "게임", "음향기기"];
		var cook = ["전기밥솥", "전자레인지/오븐", "믹서/쥬서/원액기", "식기세척기/살균건조기"];
		var computer = ["노트북", "데스크탑", "프린터", "휴대폰"];
		var season = ["에어컨", "가습기", "공기청정기", "난로/히터"];
		
		var changeItem;
		
		if($('#category1 option:selected').val()=="0") {
			changeItem = ["2차 분류 선택"];
		} else if($('#category1 option:selected').val()=="1") {
			changeItem = tv;
		} else if($('#category1 option:selected').val()=="2") {
			changeItem = camera;
		} else if($('#category1 option:selected').val()=="3") {
			changeItem = cook;
		} else if($('#category1 option:selected').val()=="4") {
			changeItem = computer;
		} else if($('#category1 option:selected').val()=="5") {
			changeItem = season;
		}
		
		
		$('#category2').empty();
		
		for(var i=0; i<changeItem.length; i++) {
			var option = $("<option>" + changeItem[i] + "</option>");
			$('#category2').append(option);
			$('#category2').niceSelect('update');
		}
	});
})