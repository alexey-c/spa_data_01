'use strict'

$(function(){

var date;
var name;
var quantity;
var distance;


  $(document).on('click', '#sort-btn', function() {

	var select_col = document.querySelector("#select-col").value;
	var select_cond = document.querySelector("#select-cond").value;
	var select_text = document.querySelector("#select-text").value;

	console.log(select_col);
	console.log(select_cond);
	console.log(select_text);

	$.getJSON( "../get_data.php", { select_col: select_col, select_cond: select_cond, select_text: select_text})

	.done(function( data ) {

	let del = document.querySelectorAll('.table__content-row-1'); 

	del.forEach(function(element){
	  element.parentNode.removeChild(element);
	});
	var newHtml = '';
	// $data_length = data.length;

	// alert(data.rows);

	console.log('data');
	console.log('data');

	if (Array.isArray(data)) {
		$.each(data, function(key, val){

			$.each(val, function(key_1, val_1){

				switch(key_1) {
					case 'date':
						date = val_1;
						break;
					case 'name':
						name = val_1;
						break;
					case 'quantity':
						quantity = val_1;
						break;
					case 'distance':
						distance = val_1;
						break;
					default:
						break;
				}
			}); //each val

			date = date.substr(0, 10);

			newHtml += '<div class="table__content-row-1 item-style display-flex">'
			newHtml += '<div class="table__content-col-1">' + date +'</div>';
			newHtml += '<div class="table__content-col-2">' + name +'</div>';
			newHtml += '<div class="table__content-col-3">' + quantity +'</div>';
			newHtml += '<div class="table__content-col-4">' + distance +'</div>';
			newHtml += '</div>';

		}); //each data
	} else {
		$.each(data, function(key_1, val_1){

			switch(key_1) {
				case 'date':
					date = val_1;
					break;
				case 'name':
					name = val_1;
					break;
				case 'quantity':
					quantity = val_1;
					break;
				case 'distance':
					distance = val_1;
					break;
				default:
					break;
			}
		}); //each val

		date = date.substr(0, 10);

		newHtml += '<div class="table__content-row-1 item-style display-flex">'
		newHtml += '<div class="table__content-col-1">' + date +'</div>';
		newHtml += '<div class="table__content-col-2">' + name +'</div>';
		newHtml += '<div class="table__content-col-3">' + quantity +'</div>';
		newHtml += '<div class="table__content-col-4">' + distance +'</div>';
		newHtml += '</div>';
	}
    	
	let elem = document.getElementById('table__content-row-1');

	elem.insertAdjacentHTML("afterend", newHtml);

	}) // done
	.fail( function(xhr, textStatus, error) {
	    console.error("getJSON failed, status: " + textStatus + ", error: " + error);
	    console.log("response");
	    console.warn(xhr.responseText);
	    alert('Данные не найдены');
	});
  }); // end 'click', '#sort-btn'

});

