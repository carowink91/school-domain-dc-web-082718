require "pry"

class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_students = {}

    @roster.each do |grade, students|
      
      sorted_students[grade] = []

      students.sort.each do |student|
        sorted_students[grade] << student
      end
    end
    sorted_students
  end

end
