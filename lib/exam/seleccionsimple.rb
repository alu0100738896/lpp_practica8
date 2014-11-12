class Seleccionsimple < Exam::Exam
    
    attr_accessor :pregnta, :respuestas
    
    def initialize pregunta, respuestas
        @pregunta,@respuestas = pregunta, respuestas
        super(pregunta,respuestas)
    end
end