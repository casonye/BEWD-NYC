class Student
	attr_accessor :name, :gpa, :major

	def initialize(name, gpa, major)
		@name = name
		@gpa = gpa
		@major = major
	end
	
	def to_s
		"#{ @name } majors in #{ @major }. GPA: #{ @gpa }"
	end

	def passing?
		if @gpa < "D"
			return true
		else
			return false
		end
	end

end


alice = Student.new("alice", "F", "Math")
jose = Student.new("jose", "A", "Geography")
simon = Student.new("simon", "C", "Underwater Basket Weaving")



student = [alice, jose, simon]

	student.each do |person|
		if person.passing?
			puts "#{ @name }, You graduate!"
			#why doesn't the name print with this string interpolation? Does it have to do with the fact that here i haven't called the method to_s?
		else
			puts "#{ @name }, You fail"
		end
	end
		
		
