# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

nameArtRev = nameArtRevPattern: (name) -> name.match(/[a-zA-Z]/)

apellidoArtRev = apellidoArtRevPattern: (apellido) -> apellido.match(/[a-zA-Z]/)

tituloArtRev = tituloArtRevPattern: (titulo) -> titulo.match(/[a-zA-Z]/)

tituloArtRevTitu = tituloArtRevTituPattern: (tituloRev) -> tituloRev.match(/[a-zA-Z]/)

articulo_revistum_anio = anioPattern: (anio) -> anio.match(/[\d]/)

articulo_revistum_volumen = volumenPattern: (volumen) -> volumen.match(/[\d]/)

articulo_revistum_numero = numeroPattern: (numero) -> numero.match(/[\d]/)

articulo_revistum_pagina = paginaPattern: (pagina) -> pagina.match(/[\d]/)

articulo_revistum_url = urlPattern: (url) -> url.match(/^(http:\/\/|https:\/\/)?(www)?(\.)?[a-zA-Z0-9|\.]*(\.)(com){1}[a-zA-Z0-9|\-|\_|\&|\$|\#|\/|\%|\?|\=|\+|\*|\!|\:\.\,\;\'\"\@\^\{\}\[\]\(\)]*$/)

jQuery ->
	$("#articulo_revistum_apellido").blur ->
		if apellidoArtRev.apellidoArtRevPattern(@value)
			$("#articulo_revistum_apellido_errors").text("")
			$("input[type='submit']").prop("disabled", false);
		else
			$("#articulo_revistum_apellido_errors").text("Debe ingresar el apellido del autor")
			$("input[type='submit']").attr("disabled", "disabled")
	
	$("#articulo_revistum_nombre").blur ->
		if nameArtRev.nameArtRevPattern(@value)
			$("#articulo_revistum_nombre_errors").text("")
			$("input[type='submit']").prop("disabled", false);
		else
			$("#articulo_revistum_nombre_errors").text("Debe ingresar al menos una inicial para el nombre")
			$("input[type='submit']").attr("disabled", "disabled")
	
	$("#articulo_revistum_titulo_articulo").blur ->
		if tituloArtRev.tituloArtRevPattern(@value)
			$("#articulo_revistum_titulo_articulo_errors").text("")
			$("input[type='submit']").prop("disabled", false);
		else
			$("#articulo_revistum_titulo_articulo_errors").text("Debe ingresar el título del artículo")
			$("input[type='submit']").attr("disabled", "disabled")
	
	$("#articulo_revistum_titulo_revista").blur ->
		if tituloArtRevTitu.tituloArtRevTituPattern(@value)
			$("#articulo_revistum_titulo_revista_errors").text("")
			$("input[type='submit']").prop("disabled", false);
		else
			$("#articulo_revistum_titulo_revista_errors").text("Debe ingresar el título de la revista")
			$("input[type='submit']").attr("disabled", "disabled")
	
	$("#articulo_revistum_anio").blur ->
		if articulo_revistum_anio.anioPattern(@value)
			$("#articulo_revistum_anio_errors").text("")
			$("input[type='submit']").prop("disabled", false);
		else
			$("#articulo_revistum_anio_errors").text("Debe ingresar el año")
			$("input[type='submit']").attr("disabled", "disabled")
	
	$("#articulo_revistum_volumen").blur ->
		if articulo_revistum_volumen.volumenPattern(@value)
			$("#articulo_revistum_volumen_errors").text("")
			$("input[type='submit']").prop("disabled", false);
		else
			$("#articulo_revistum_volumen_errors").text("Debe ingresar el volumen de la revista")
			$("input[type='submit']").attr("disabled", "disabled")
	
	$("#articulo_revistum_numero").blur ->
		if articulo_revistum_numero.numeroPattern(@value)
			$("#articulo_revistum_numero_errors").text("")
			$("input[type='submit']").prop("disabled", false);
		else
			$("#articulo_revistum_numero_errors").text("Debe ingresar el numero de volumen de la revista")
			$("input[type='submit']").attr("disabled", "disabled")
	
	$("#articulo_revistum_pagina").blur ->
		if articulo_revistum_pagina.paginaPattern(@value)
			$("#articulo_revistum_pagina_errors").text("")
			$("input[type='submit']").prop("disabled", false);
		else
			$("#articulo_revistum_pagina_errors").text("Debe ingresar la pagina del artículo")
			$("input[type='submit']").attr("disabled", "disabled")

	$("#check").change ->
			if this.checked
				$("#articulo_revistum_volumen").attr("disabled", true)
				$("#articulo_revistum_numero").attr("disabled", true)
				$("#articulo_revistum_pagina").attr("disabled", true)
				$("#articulo_revistum_url").attr("disabled", false)
			else
				$("#articulo_revistum_volumen").attr("disabled", false)
				$("#articulo_revistum_numero").attr("disabled", false)
				$("#articulo_revistum_pagina").attr("disabled", false)
				$("#articulo_revistum_url").attr("disabled", true)
				$("input[type='submit']").prop("disabled", false);
				$("#articulo_revistum_url_errors").text("")
				
	#$("#check").checked && 
		$("#articulo_revistum_url").blur ->
			if articulo_revistum_url.urlPattern(@value)
				$("#articulo_revistum_url_errors").text("")
				$("input[type='submit']").prop("disabled", false);
			else
				$("#articulo_revistum_url_errors").text("Debe ingresar una url válida")
				$("input[type='submit']").attr("disabled", "disabled")

