/*
*Copyright
*
*/

function switchProductList(){
	const DEFAULT_WIDTH="20px";
	const FULL_WIDTH="220px";
	var listUL = $("#product_list ul");
	var productListDiv = $("#product_list");
	
	if (listUL.is(":hidden")){
		productListDiv.width(FULL_WIDTH);
		listUL.show();
	}else{
		productListDiv.width(DEFAULT_WIDTH);
		listUL.hide();
	}
}