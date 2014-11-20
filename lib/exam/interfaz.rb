class Interfaz
   
    attr_accessor :examen
    def initialize examen
       @examen = examen
       @eleccion = []
    end
    
    def soluciones
        sol = ""
        @examen.respuestas.each_with_index do |x,i|
            sol << "#{i+1}.#{x}\n" 
        end
        sol
    end
       
       
    def interaccion
       
        aux = @examen.preguntas.inicio
       
        @examen.preguntas.each do |pregunta|
            puts pregunta
            @eleccion << aux.value.respuestas.values.sample
            puts "Contestacion: #{@eleccion.last}"
            aux = aux.next
        end
    end
end