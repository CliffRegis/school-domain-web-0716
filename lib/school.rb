require 'pry'
class School
	attr_accessor :s_name, :roster
    
	def initialize(s_name, roster={})
		@s_name = s_name
		@roster = roster
		@roster = {}
	end
	def add_student(s_name, grade_score)
	  	@roster[grade_score] ||= []
	    @roster[grade_score].push(s_name) 

	end

	def grade(num)
        
        roster.each do |x,y|
            if x == num
            	return y
            end
         end
    end
    def sort	
    	roster.each do |x,y|
    	  y.sort!

        end
        roster
    end
    
end