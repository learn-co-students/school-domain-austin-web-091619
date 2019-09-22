class School
    # attr_accessor = :school_name, :roster, :add_student, :grade
    

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def roster
        @roster 
    end

    def add_student(name, grade)
        @student_name = name
        @grade = grade
        if @roster.include?(grade) == false
          @roster[grade] = []
        end
        @roster[grade] << name
      end

      def grade(grade)
        @students << grade
      end

      def grade(number)
        @roster[number]
      end

      def sort
        @roster.each do |grade, name|
            @roster[grade] = name.sort
        end
      end

end

