var1 = nil
var2 = 5

# First pass
if var1
  value = var1
else
  value = var2
end

# Refactor
value = var1 if var1
value = var2 if var2

# Ternary operator
var1 ? value = var1 : value = var2
value = var1 ? var1 : var2

# Final draft
value = var1 || var2  # same as 'value = (var1 || var2)'

