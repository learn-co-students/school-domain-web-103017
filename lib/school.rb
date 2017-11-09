class School

  attr_accessor :name, :grade
  attr_reader :roster

  def initialize (name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
     if self.roster.keys.include?(grade)
        self.roster[grade] << name
     else
        self.roster[grade]=[name]
     end
  end

  def grade(grade)
     self.roster[grade]
  end

  def sort
    self.roster.each do |key,value|
      value.sort!
    end
  end

end
