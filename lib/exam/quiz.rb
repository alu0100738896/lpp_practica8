class Quiz
    
	attr_accessor :name, :questions, :answers

	def initialize name, &block
		@name = name
		@questions = []
		@answers = []
		@i = 0
		@counter = 0

		if block_given?  
	    if block.arity == 1
	      yield self
	    else
	     instance_eval &block 
	    end
	  end

	end    
    
    
end