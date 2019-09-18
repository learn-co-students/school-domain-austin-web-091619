class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}  
  end 
  
  def add_student(name, grade)
  roster[grade] ||= []
  roster[grade] << name
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
    new_hash = {}
    roster.each do |grade, students|
      new_hash[grade] = students.sort
    end
    new_hash
  end
end