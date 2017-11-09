require 'pry'
class School

  attr_accessor :name
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if !self.roster[grade]
      self.roster[grade] = []
    end
    self.roster[grade] << ("#{name}")
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.each do |grade, student|
      self.roster[grade].sort!
    end
  end


end # => End Class School
