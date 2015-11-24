$(document).on "page:change", ->
	$( "#sortable" ).sortable(
		stop : (event,ui) ->
			if $(this).sortable('serialize') == 'era[]=1&era[]=2&era[]=3'
				alert('Sait aikakaudet oikeaan järjestykseen!')
	)
	$( "#sortable" ).disableSelection()