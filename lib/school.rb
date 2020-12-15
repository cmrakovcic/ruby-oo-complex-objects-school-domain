# code here!
class School
    attr_accessor :name, :roster
def initialize(name)
    @name = name
    @roster = {}
end

def add_student(student, grade)
    if @roster[grade]
        @roster[grade] << student
    else @roster[grade] = [student]
    end
end
def grade(grade)
    @roster[grade]
end
def sort
    hash = {}
    @roster.sort.each do |grade, student_array|
        hash[grade] = (student_array.sort)
    end
    hash
end
end