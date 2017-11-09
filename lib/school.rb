class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = Hash.new()
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
      #roster.each{|k, v| v.sort!}
      sorted = {}
      roster.each{|k, v| sorted[k] = v.sort}
      sorted
  end
end
