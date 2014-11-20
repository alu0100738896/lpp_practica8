require 'indice'

describe Examen do
    before :each do
        @vf1 = Verfal.new("1.-) Es apropiado que una clase Tablero herede de una clase Juego.")
		@ss1 = Seleccionsimple.new("2.-) ¿Cual es el tipo del objeto en el siguiente codigo Ruby?\n\tclass Objeto\n\tend",{a: "Una instancia de la clase Class", b: "Una constante", c: "Un objeto", d: "Ninguna de las anteriores"})
        @lista = List.new
        @n1 = Nodo.new(nil,@vf1,nil)
        @n2 = Nodo.new(nil,@ss1,nil)
        @lista.insert_end_many(@n1,@n2)
        @resp = [:a,:a]
        @exa = Examen.new(@lista,@resp)
    end
    it "Se pueden mostrar las preguntas" do
       #expect(@exa.preguntas.each { |x| puts x}).to eq("#{@n1.value}\n#{@n2.value}") 
        #expect(@exa.preguntas.first).to eq(@n1.value)
        expect(@exa.preguntas.to_s).to eq("#{@n1.value}\n#{@n2.value}\n")    
    
    end
    
    
end

describe Interfaz do
    before :each do
        @vf1 = Verfal.new("1.-) Es apropiado que una clase Tablero herede de una clase Juego.")
		@ss1 = Seleccionsimple.new("2.-) ¿Cual es el tipo del objeto en el siguiente codigo Ruby?\n\tclass Objeto\n\tend",{a: "Una instancia de la clase Class", b: "Una constante", c: "Un objeto", d: "Ninguna de las anteriores"})
        @lista = List.new
        @n1 = Nodo.new(nil,@vf1,nil)
        @n2 = Nodo.new(nil,@ss1,nil)
        @lista.insert_end_many(@n1,@n2)
        @resp = [@vf1.respuestas[:a],@ss1.respuestas[:a]]
        @exa = Examen.new(@lista,@resp)
        @inter = Interfaz.new(@exa)
        @elec = [@vf1.respuestas[:a],@ss1.respuestas[:a]]
    end
    describe "probando la clase interfaz" do
        it "se puede mostrar el examen de la interfaz" do
           expect(@inter.examen.preguntas.to_s).to eq("#{@n1.value}\n#{@n2.value}\n") 
        end
        
        it "mostrar soluciones" do
            expect(@inter.soluciones).to eq("1.Cierto\n2.Una instancia de la clase Class\n")
        end
    end
end