# Ruby singleton methods continued: how do they work?
# Every Ruby object carries around an additional Singleton class
# Singleton methods override regular class defined methods --> because the Singleton class is called first

# Class methods are....singleton methods!


# Person is an instance of Class
class Person
  def self.who_am_i
    "I am #{self} and my class is #{self.class}"
  end
end

puts Person.who_am_i            # I am Person and my class is Class


# Just like creating a singleton_method on 'special_string' yesterday
def Person.singleton_method
  "Creating a singleton method"
end

puts Person.singleton_method    # Creating a singleton method


# Class methods do not work on instances
person_instance = Person.new
puts person_instance.who_am_i   # undefined method 'who_am_i'