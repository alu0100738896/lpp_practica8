class Naranjero
    
	attr_reader :altura, :edad, :vivo
	attr_accessor :naranjas

	def initialize altura,edad
		@altura, @edad = altura, edad
		@naranjas = 0
		@max_edad = 20
		@adulto = 4
		@produccion = []
		@mutex= Mutex.new
	end
    
end