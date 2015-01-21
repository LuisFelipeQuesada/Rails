# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

nameLibro = nameLibroPattern: (name) -> name.match(/[a-zA-Z]/)

apellidoLibro = apellidoLibroPattern: (apellido) -> apellido.match(/[a-zA-Z]/)

tituloCap = tituloCapPattern: (titulo) -> titulo.match(/[a-zA-Z]/)

tituloLibro = tituloLibroPattern: (tituloLibro) -> tituloLibro.match(/[a-zA-Z]/)

libroAnio = anioPattern: (anio) -> anio.match(/[\d]/)

libro_lugar_publicacion = lugarPattern: (lugar) -> lugar.match(/[\w]/)

libro_casa_publicacion = casaPattern: (casa) -> casa.match(/[\w]/)

libro_url = urlPattern: (url) -> url.match(/^(http:\/\/|https:\/\/)?(www)?(\.)?[a-zA-Z0-9|\.]*(\.)(com){1}[a-z|A-Z|0-9|\-|\_|\&|\$|\#|\/|\%|\?|\=|\+|\*|\!|\:\.\,\;\'\"\@\^\{\}\[\]\(\)]*$/)

jQuery ->
	$("#libro_nombre").blur ->
		if nameLibro.nameLibroPattern(@value)
			$("#name_errors").text("")
			$("input[type='submit']").prop("disabled", false);
		else
			$("#name_errors").text("Debe ingresar al menos una inicial para el nombre")
			$("input[type='submit']").attr("disabled", "disabled")
	
	$("#libro_apellido").blur ->
		if apellidoLibro.apellidoLibroPattern(@value)
			$("#apellido_errors").text("")
			$("input[type='submit']").prop("disabled", false);
		else
			$("#apellido_errors").text("Debe ingresar el apellido del autor")
			$("input[type='submit']").attr("disabled", "disabled")
	
	$("#libro_titulo").blur ->
		if tituloCap.tituloCapPattern(@value)
			$("#titulo_errors").text("")
			$("input[type='submit']").prop("disabled", false);
		else
			$("#titulo_errors").text("Debe ingresar el título del capítulo")
			$("input[type='submit']").attr("disabled", "disabled")
	
	$("#libro_titulo_libro").blur ->
		if tituloLibro.tituloLibroPattern(@value)
			$("#titulo_libro_errors").text("")
			$("input[type='submit']").prop("disabled", false);
		else
			$("#titulo_libro_errors").text("Debe ingresar el título del libro")
			$("input[type='submit']").attr("disabled", "disabled")
	
	$("#libro_anio").blur ->
		if libroAnio.anioPattern(@value)
			$("#anio_errors").text("")
			$("input[type='submit']").prop("disabled", false);
		else
			$("#anio_errors").text("Debe ingresar solo números")
			$("input[type='submit']").attr("disabled", "disabled")
			
	$("#libro_lugar_publicacion").blur ->
		if libro_lugar_publicacion.lugarPattern(@value)
			$("#lugar_errors").text("")
			$("input[type='submit']").prop("disabled", false);
		else
			$("#lugar_errors").text("Debe ingresar el lugar donde se publicó el libro")
			$("input[type='submit']").attr("disabled", "disabled")
			
	$("#libro_casa_publicacion").blur ->
		if libro_casa_publicacion.casaPattern(@value)
			$("#casa_errors").text("")
			$("input[type='submit']").prop("disabled", false);
		else
			$("#casa_errors").text("Debe ingresar la casa que publica el libro")
			$("input[type='submit']").attr("disabled", "disabled")

	$("#check_cap").change ->
			if this.checked
				$("#libro_titulo_capitulo").attr("disabled", false)
			else
				$("#libro_titulo_capitulo").attr("disabled", true)
				$("input[type='submit']").prop("disabled", false);
				$("#titulo_errors").text("")

	#$("#check_cap").checked && 
		$("#libro_titulo_capitulo").blur ->
			if tituloCap.tituloCapPattern(@value)
				$("#titulo_errors").text("")
				$("input[type='submit']").prop("disabled", false);
			else
				$("#titulo_errors").text("Ingresar el nombre capítulo o sección")
				$("input[type='submit']").attr("disabled", "disabled")

	$("#check_url").change ->
			if this.checked
				$("#libro_lugar_publicacion").attr("disabled", true)
				$("#libro_casa_publicacion").attr("disabled", true)
				$("#libro_url").attr("disabled", false)
			else
				$("#libro_lugar_publicacion").attr("disabled", false)
				$("#libro_casa_publicacion").attr("disabled", false)
				$("#libro_url").attr("disabled", true)
				$("input[type='submit']").prop("disabled", false);
				$("#url_errors").text("")

	#$("#check_url").checked && 
		$("#libro_url").blur ->
			if tituloCap.tituloCapPattern(@value)
				$("#url_errors").text("")
				$("input[type='submit']").prop("disabled", false);
			else
				$("#url_errors").text("Ingrese una url válida")
				$("input[type='submit']").attr("disabled", "disabled")

