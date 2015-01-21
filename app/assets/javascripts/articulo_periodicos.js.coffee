# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

nameArtPer = nameArtPerPattern: (name) -> name.match(/[a-zA-Z]/)

apellidoArtPer = apellidoArtPerPattern: (apellido) -> apellido.match(/[a-zA-Z]/)

tituloArtPer = tituloArtPerPattern: (titulo) -> titulo.match(/[a-zA-Z]/)

tituloArtPerTitu = tituloArtPerTituPattern: (tituloPer) -> tituloPer.match(/[a-zA-Z]/)

pagina = paginaPattern: (pagina) -> pagina.match(/[\d]/)

articulo_periodico_url = urlPattern: (url) -> url.match(/^(http:\/\/|https:\/\/)?(www)?(\.)?[a-zA-Z0-9|\.]*(\.)(com){1}[a-z|A-Z|0-9|\-|\_|\&|\$|\#|\/|\%|\?|\=|\+|\*|\!|\:\.\,\;\'\"\@\^\{\}\[\]\(\)]*$/)

jQuery ->
	$("#articulo_periodico_apellido").blur ->
		if apellidoArtPer.apellidoArtPerPattern(@value)
			$("#articulo_periodico_apellido_errors").text("")
			$("input[type='submit']").prop("disabled", false);
		else
			$("#articulo_periodico_apellido_errors").text("Debe ingresar el apellido del autor")
			$("input[type='submit']").attr("disabled", "disabled")
	
	$("#articulo_periodico_nombre").blur ->
		if nameArtPer.nameArtPerPattern(@value)
			$("#articulo_periodico_nombre_errors").text("")
			$("input[type='submit']").prop("disabled", false);
		else
			$("#articulo_periodico_nombre_errors").text("Debe ingresar al menos una inicial para el nombre")
			$("input[type='submit']").attr("disabled", "disabled")
	
	$("#articulo_periodico_titulo_articulo").blur ->
		if tituloArtPer.tituloArtPerPattern(@value)
			$("#articulo_periodico_titulo_articulo_errors").text("")
			$("input[type='submit']").prop("disabled", false);
		else
			$("#articulo_periodico_titulo_articulo_errors").text("Debe ingresar el título del artículo")
			$("input[type='submit']").attr("disabled", "disabled")
	
	$("#articulo_periodico_titulo_periodico").blur ->
		if tituloArtPerTitu.tituloArtPerTituPattern(@value)
			$("#articulo_periodico_titulo_periodico_errors").text("")
			$("input[type='submit']").prop("disabled", false);
		else
			$("#articulo_periodico_titulo_periodico_errors").text("Debe ingresar el título del periodico")
			$("input[type='submit']").attr("disabled", "disabled")
	
	$("#articulo_periodico_pagina").blur ->
		if pagina.paginaPattern(@value)
			$("#articulo_periodico_pagina_errors").text("")
			$("input[type='submit']").prop("disabled", false);
		else
			$("#articulo_periodico_pagina_errors").text("Debe ingresar un múmero de página")
			$("input[type='submit']").attr("disabled", "disabled")

	$("#check").change ->
			if this.checked
				$("#articulo_periodico_pagina").attr("disabled", true)
				$("#articulo_periodico_url").attr("disabled", false)
			else
				$("#articulo_periodico_pagina").attr("disabled", false)
				$("#articulo_periodico_url").attr("disabled", true)
				$("input[type='submit']").prop("disabled", false);
				$("#articulo_periodico_url_errors").text("")

	#$("#check").checked && 
		$("#articulo_periodico_url").blur ->
			if articulo_periodico_url.urlPattern(@value)
				$("#articulo_periodico_url_errors").text("")
				$("input[type='submit']").prop("disabled", false);
			else
				$("#articulo_periodico_url_errors").text("Debe ingresar una url válida")
				$("input[type='submit']").attr("disabled", "disabled")

