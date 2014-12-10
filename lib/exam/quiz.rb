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
	
	def to_s
	    output = name
	    output << "\n#{'=' * name.size}\n\n"
	    questions.each_with_index do |question, index|
	    	output << "#{index+1}) #{question}\n"
			end
	    output
  	end	
  	
	def question(name, options = {})
	
		@counter = 0
		q = name
		answers << {}
		answers[@i][:wrong] = []
		
		if options[:right]
			answers[@i][:right] = options[:right]
			q << "\n\t#{@counter+=1}) #{options[:right]}"
		end
		
		if options[:wrong]
			answers[@i][:wrong] << options[:wrong]
			q << "\n\t#{@counter+=1}) #{options[:wrong]}"
		end
		
		questions << q
		  @i += 1
	end  	
    
    
end