require 'pry'
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] == nil ? @roster[grade] = [] : @roster[grade]
    @roster[grade] << name
  end

  def grade(grade_num)
    @roster[grade_num]
  end

  def sort
    @roster.map do | grade, arr|
      @roster[grade] = arr.sort
    end
    @roster
  end
end