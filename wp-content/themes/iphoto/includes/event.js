$(document).ready(function(){
	$("#category-all-link").mouseover(
	function(){
		$("#category-all-list").show();
	});
	
	$("#categories").mouseout(
	function(){
		$("#category-all-list").hide();
	});
});
