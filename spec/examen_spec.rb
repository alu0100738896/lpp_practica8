require 'indice'

describe Examen do
    before :each do
        @vf1 = Verfal.new("2.-) Es apropiado que una clase Tablero herede de una clase Juego.")
		@ss1 = Seleccionsimple.new("1.-) ¿Cuál es el tipo del objeto en el siguiente código Ruby?\n\tclass Objeto\n\tend",{a: "Una instancia de la clase Class", b: "Una constante", c: "Un objeto", d: "Ninguna de las anteriores"})
        @lista = List.new
        @lista.insert_end_many(@vf1,@ss1)
        @resp = [:a,:a]
        @exa = Examen.new(@lista,@resp)
    end
    it "Se pueden mostrar las preguntas" do
    expect(@exa.preguntas.to_s).to eq("#{@vf1.to_s}#{@ss1.to_s}")
    end
    
    
end

describe Interfaz do
    
end