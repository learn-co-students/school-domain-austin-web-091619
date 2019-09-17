# code here!
class School
    attr_reader :roster
    def initialize(name)
        @name = name
        @roster = {}
    end
    def add_student(name, grade)
        if !@roster[grade]
            @roster[grade] = []
            @roster[grade].push(name)
        else
            @roster[grade].push(name)
        end
    end

    def grade(grade)
        @roster[grade]
    end
    def sort
        @roster.each do |grade, students|
            @roster[grade] = students.sort
        end
        @roster
    end

end