$(function(){
	var bigC= $('#bigC').val(); 
//	alert(bigC);  
	var smallC = $('#smallC').val(); 
	$('#category1').val(bigC); 
	$('#category1').trigger("change");
	$('#category1').niceSelect('update');
	$('#category2').val(smallC);
	$('#category2').trigger("change");
	$('#category2').niceSelect('update');
	 
	//수정버튼 클릭시  
	$('#btnModify').click(function(){
		$(this).closest('form').attr("action","productModify.trc");
		$(this).closest('form').submit(); 
	});      
	   
	//삭제버튼 클릭시 
	$('#btnDelete').click(function(){
		$(this).closest('form').attr("action","productDelete.trc");
		$(this).closest('form').submit();
	});
})	 
	    
        