# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

email = emailPattern: (email) -> email.match(/[\w-\.]{3,}@([\w-]{2,}\.)*([\w-]{2,}\.)[\w-]{2,4}/)

pass = passPattern: (pass) -> pass.match(/[\w]{6}/)

jQuery -> 
	$("#email").blur ->
		if email.emailPattern(@value)
			$("#mail_errors").text("")
			$("input[type='submit']").prop("disabled", false)
		else
			$("#mail_errors").text("Ingrese un correo válido")
			$("input[type='submit']").prop("disabled", true)
			
	$("#pass_hash").blur ->
		if pass.passPattern(@value)
			$("#pass_errors").text("")
			$("input[type='submit']").prop("disabled", false)
		else
			$("#pass_errors").text("Ingrese al menos 6 caracteres")
			$("input[type='submit']").prop("disabled", true)


