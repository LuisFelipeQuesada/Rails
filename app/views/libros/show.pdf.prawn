require 'prawn'
pdf.text "Referencias de ##{current_user.name}"

Prawn::Document.generate('hello.pdf') do |pdf|
  pdf.text("Hello Prawn!")
end 

#@current_user.libro.each do |ref|
#	pdf.text ref.name
#end

