require 'pry'
class School
attr_accessor :name, :roster

    
  def initialize(name)
    @name = name
    @roster = {}
    end

    
    def add_student(name, grade)
       @roster[grade] ||= []
       @roster[grade] << name
    end
   
    def grade(num)
      @roster[num]
    end

    def sort
      sorted = {}
      @roster.each do |key, value|
        sorted[key] = value.sort
      end
      return sorted
    end
end

