class MyClass

  def method_name
    puts "I am a method"
  end

end

MyClass.new.method_name
MyClass.new::method_name
MyClass::new::method_name
MyClass.new.send(:method_name) # works for private methods too!

# From Matheus Richard
MyClass.new.method(:method_name).call
MyClass.new.method(:method_name).()


# From Matheus Richard
The normal method call is the most common. The ".call" version is common with callable classes, (http://MyClass.call(args))

In metaprogramming, tho, using send/public_send/method + call are very common.









