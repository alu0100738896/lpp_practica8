Nodo = Struct.new(:prev, :value, :next) do

	include Comparable

	def <=> other
		self.value <=> other.value
	end
end

class List

	attr_reader :inicio,:final

	def initialize
		@inicio = nil
		@final
	end

	def insert_end nodo

		if @inicio.nil?
			insert_empty(nodo)
		else
			@final.next = nodo
			nodo.prev = @final
			@final = nodo
		end

	end

	def insert_empty nodo
		@final, @inicio = nodo, nodo
	end	

	def to_s
		msg = ""
		aux = @inicio
		while (!aux.nil?)
			msg << "[#{aux.value}|"
			msg << "#{aux.next.value}"  unless aux.next.nil?
			msg << "] => "
			aux = aux.next
		end
		msg
	end
	
	def to_reverse
		msg = ""
		aux = @final
		while (!aux.nil?)
			msg << "[#{aux.value}|"
			msg << "#{aux.prev.value}"  unless aux.prev.nil?
			msg << "] <= "
			aux = aux.prev
		end
		msg
	end

	def extract_first

		if !@inicio.nil?
			@inicio = @inicio.next
			@inicio.prev = nil
		end

	end

	def insert_end_many *args

		args.each do |nodito|
			insert_end(nodito)
		end

	end

end