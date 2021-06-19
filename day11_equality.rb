Question: What is the difference between '==', 'eql?', and 'equal?'. What would the following return? (I will have to return to '===' another time)

"a string" == "a string"
"a string".eql?("a string")
"a string".equal?("a string")

5.0 == 5
5.0.eql?(5)
5.0.equal?(5)

'==' will return true if the two sides have the same value
'.eql?' will return true if the two sides have the same value and type
'.equal?' will return true if the two sides are the same object

"a string" == "a string"
=> true     # same value
"a string".eql?("a string")     
=> true     # same value and type
"a string".equal?("a string")   
=> false    # not the same object (they have different object_id)

5.0 == 5          
=> true     # same value
5.0.eql?(5)       
=> false    # same value, but Float vs. Integer
5.0.equal?(5)   
=> false    # not the same object (they have different object_id)