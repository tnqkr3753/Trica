//회원가입 패턴
$('#memberName').attr('pattern','[가-힣\s]{2,5}');
$('#memberId').attr('pattern','[A-Za-z0-9]{6,12}');
$('#regNumber').attr('pattern','^(?:[0-9]{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[1,2][0-9]|3[0,1]))-[1-4][0-9]{6}$');
$('#password').attr('pattern','[A-Za-z0-9]{6,12}');
$('#tel').attr('pattern','(^02.{0}|^01.{1}|[0-9]{3})-([0-9]+)-([0-9]{4}');

//성별 체크   
$('input[type="checkbox"][name="gender"]').click(function(){ 
	//클릭 이벤트 발생한 요소가 체크 상태인 경우
	if ($(this).prop('checked')) {
		//체크박스 그룹의 요소 전체를 체크 해제후 클릭한 요소 체크 상태지정
		$('input[type="checkbox"][name="gender"]').prop('checked', false); 
	    $(this).prop('checked', true);
	    alert($(this).val());
	} 
});         
  
//이용약관 동의  
$('#agree').click(function(){ 
	if(agree.checked == true) { alert("이용약관에 동의하였습니다."); }
}) 
   
//유형 체크 
$('input[type="checkbox"][name="memberType"]').click(function(){ 
	//클릭 이벤트 발생한 요소가 체크 상태인 경우 
	if ($(this).prop('checked')){ 
		//체크박스 그룹의 요소 전체를 체크 해제후 클릭한 요소 체크 상태지정
		$('input[type="checkbox"][name="memberType"]').prop('checked', false);
		$(this).prop('checked', true);  
		alert($(this).attr('v')); 
	}
//서브밋 이벤트 막기  
//$('#join-submit').attr('disabled', true);	  
//$('#join-submit').attr('disabled', false);	  
   
//서브밋 버튼 눌렸을 때  
$('#join-submit').click(function(){
	var addr = $('#sample6_postcode').val()+"_"+$('#sample6_address').val()+$('#sample6_extraAddress').val()
	$('#address').val(addr);
});	  
 
 	
});   