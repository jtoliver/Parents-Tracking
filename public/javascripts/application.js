$ (function() {	
	
	/* Table for dashboard */       
	jQuery.fn.dataTableExt.oSort['string-case-asc']  = function(x,y) {
	    return ((x < y) ? -1 : ((x > y) ?  1 : 0));
	};

	jQuery.fn.dataTableExt.oSort['string-case-desc'] = function(x,y) {
	    return ((x < y) ?  1 : ((x > y) ? -1 : 0));
	};

	$('#dashboard').dataTable( {
	        "sPaginationType": "full_numbers",
	        "bStateSave": true,
	        "aaSorting": [ [0,'desc']],
	        "aoColumns": [
	        {
	            "sType": 'date',
	        },
	        null,
	        null,
	        null,
	        null,
	        null,
	        { "bSearchable":false,
				"bSortable": false
	 		}
	        ]
	});

	/* Table for topics */
	jQuery.fn.dataTableExt.oSort['string-case-asc']  = function(x,y) {
	    return ((x < y) ? -1 : ((x > y) ?  1 : 0));
	};

	jQuery.fn.dataTableExt.oSort['string-case-desc'] = function(x,y) {
	    return ((x < y) ?  1 : ((x > y) ? -1 : 0));
	};


	$('#topicTable').dataTable( {
	        "sPaginationType": "full_numbers",
	        "bStateSave": true,
	        "aaSorting": [ [0,'desc']],
	        "aoColumns": [
	        null,
	        null,
	        null
	        ]
	});


	/* Table for users */
	jQuery.fn.dataTableExt.oSort['string-case-asc']  = function(x,y) {
	    return ((x < y) ? -1 : ((x > y) ?  1 : 0));
	};

	jQuery.fn.dataTableExt.oSort['string-case-desc'] = function(x,y) {
	    return ((x < y) ?  1 : ((x > y) ? -1 : 0));
	};

	$('#userTable').dataTable( {
	        "sPaginationType": "full_numbers",
	        "bStateSave": true,
	        "aaSorting": [ [0,'desc'] ],
	        "aoColumns": [
	        null,
	        null,
	        null,
			null,
	        null,
	 		null,
			null
	        ]
	});


	/* ELASTIC TEXTAREAS */
	$('.textarea').elastic();

	/* POPULATE EMPTY CELL FOR IE */
	$("td:empty").html("&nbsp");

	// date picker
	$('#contact_date').datetimepicker({
		timeFormat: 'hh:mm:ss',
		dateFormat: 'yy-mm-dd'
	});
	
	$('.delete_contact').bind('ajax:success', function() {
		$(this).closest('tr').fadeOut();
	});
	
});

