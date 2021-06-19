# string format '%' vs. string interpolation
person = "Bob"

# Hello Bob
greeting1 = "Hello #{person}"     
greeting2 = 'Hello %s' %person

age = 20
name = "Maddie"

# My name is Maddie and I am 20.
person1 = "My name is #{name} and I am #{age}."
person2 = 'My name is %s and I am %d.' %[name, age]
person3 = 'My name is %<name>s and I am %<age>d.' %{name:name, age:age}


# A silly example to illustrate how string format may be useful
PRICES = {
  apples: 'Apples cost %<price>.2f',
  bananas: 'Bananas cost %2<price>.2f',
  carrots: 'Carrots cost %2<price>.2f'
}

def price_of(food, price)
  PRICES[food] % {price: price}
end

puts price_of(:apples, 2.5)






