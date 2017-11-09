# code here!

class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if self.roster.keys.include?(grade)
      self.roster[grade] << name
    else
      self.roster[grade] = [name]
    end
  end

  def grade(num)
    self.roster[num]
  end

  def sort
    # Hash[Hash[self.roster.sort_by{|key, val| key }].sort_by{|key,val| val}]
    self.roster.reduce({}){|output, (key, val)| output[key] = val.sort; output}
  end
end
