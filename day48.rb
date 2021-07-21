

def greet
  puts "hello #{self} from the greet method"
end

class Person

  puts "hello #{self} from the Person class"  # Gets executed when program runs

  def greet
    puts "hello #{self} from the greet method in the Person class"
  end

end

greet                     # Calls standalone greet method
new_person = Person.new   # Create new_person instance, does not print anything
new_person.greet          # Calls greet method from Person class


OUTPUT:
# hello Person from the Person class
# hello main from the greet method
# hello #<Person:0x00007fd2108b0a30> from the greet method in the Person class



# I was puzzled by the order of my puts statements, using Ruby Tutor at http://pythontutor.com/ruby.html, I learned that the puts statement inside of the Person class gets executed when the program runs. 