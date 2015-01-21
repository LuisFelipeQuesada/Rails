# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

nameTesis = nameTesisPattern: (name) -> name.match(/[a-zA-Z]/)

apellidoTesis = apellidoTesisPattern: (apellido) -> apellido.match(/[a-zA-Z]/)

tituloTesis = tituloTesisPattern: (titulo) -> titulo.match(/[a-zA-Z]/)

insti = instiPattern: (insti) -> insti.match(/[a-zA-Z]/)

localizacion = localizacionPattern: (localizacion) -> localizacion.match(/[\w]/)

anio = anioPattern: (anio) -> anio.match(/[\d]/)

jQuery ->
	$("#tesis_nombre").blur ->
		if nameTesis.nameTesisPattern(@value)
			$("#tesis_nombre_errors").text("")
			$("input[type='submit']").prop("disabled", false);
		else
			$("#tesis_nombre_errors").text("Debe ingresar al menos una inicial para el nombre")
			$("input[type='submit']").attr("disabled", "disabled")
			
	$("#tesis_apellido").blur ->
		if apellidoTesis.apellidoTesisPattern(@value)
			$("#tesis_apellido_errors").text("")
			$("input[type='submit']").prop("disabled", false);
		else
			$("#tesis_apellido_errors").text("Debe ingresar el apellido del autor")
			$("input[type='submit']").attr("disabled", "disabled")
			
	$("#tesis_titulo").blur ->
		if tituloTesis.tituloTesisPattern(@value)
			$("#tesis_titulo_errors").text("")
			$("input[type='submit']").prop("disabled", false);
		else
			$("#tesis_titulo_errors").text("Debe ingresar el título de la tesis")
			$("input[type='submit']").attr("disabled", "disabled")
			
	$("#tesis_institucion").blur ->
		if insti.instiPattern(@value)
			$("#tesis_insti_errors").text("")
			$("input[type='submit']").prop("disabled", false);
		else
			$("#tesis_insti_errors").text("Ingrese el nombre de la institución donde se realizó la tesis")
			$("input[type='submit']").attr("disabled", "disabled")
			
	$("#tesis_localizacion").blur ->
		if localizacion.localizacionPattern(@value)
			$("#tesis_localizacion_errors").text("")
			$("input[type='submit']").prop("disabled", false);
		else
			$("#tesis_localizacion_errors").text("Debe ingresar el lugar donde se realizó la tesis")
			$("input[type='submit']").attr("disabled", "disabled")
			
	$("#tesis_anio").blur ->
		if anio.anioPattern(@value)
			$("#tesis_anio_errors").text("")
			$("input[type='submit']").prop("disabled", false);
		else
			$("#tesis_anio_errors").text("Debe ingresar el año en el que se realizó la tesis")
			$("input[type='submit']").attr("disabled", "disabled")

