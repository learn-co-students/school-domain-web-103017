# code here!
require 'pry'

class School
  attr_accessor :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    if @roster[grade]
      roster[grade] << student
    else
      roster[grade] = []
        roster[grade] << student
    end

      # unless include?(student)
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each_value { |v| v.sort! }
        #binding.pry
  end


end
