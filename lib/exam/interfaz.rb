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
       
end