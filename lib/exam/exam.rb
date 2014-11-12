module Exam
	class Exam

		attr_accessor :pregunta, :respuestas

		def initialize pregunta, respuestas
			@pregunta, @respuestas = pregunta, respuestas
		end
		def to_s
			preg = "#{@pregunta}\n"
			@respuestas.each do |k,v|
				preg += "#{k}) #{v}\n"
			end
			preg
		end
	end
end