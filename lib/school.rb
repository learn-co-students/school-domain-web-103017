
require 'pry'
class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if !roster[grade].nil?
    @roster[grade] << name
  else
    @roster[grade] = [name]
  end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
  #   @roster.map do |grade, student_array|
  #     [grade, student_array.sort]
  # end.to_h

  @roster.inject({}) do |hsh, info|
    hsh[info.first] = info.last.sort
    hsh
  end




end

end
