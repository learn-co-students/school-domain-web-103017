# code here!
require "pry"

class School
  attr_accessor :name, :roster



  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name,grade)
    if roster.keys.include?(grade)
      nil
    else
      roster[grade] =[]
    end
    roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    x = {}
    roster.each { |k,v| x[k] = v.sort}
    x
  end
end
