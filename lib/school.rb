# code here!
require 'pry'
class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end

  def grade(grade_input)
    @roster.select do |grade, students|
      if grade == grade_input
        return students
      end
    end
  end

  def sort
    @roster.map do |grade, students|
      students.sort!
    end
    @roster
  end




end
