# Data types in R
# 1. Numeric - Integer/ Floating point
# 2. String/character - "Farjana Islam" / 'Farjana Islam'
# 3. Logical- TRUE/FALSE (T, F)

a = 11
b = 7.19
class(a)
class(b)

name = 'Farjana Islam' #select and click single inverted comma
print(name)
class(name)

c = '52' # if I don't want to involve into mathamateical.
print(c + 9)
print(a + 9)
class(c)

# Logical Data Type - TRUE, FALSE (T, F)
print(a < b) # < is called relational operator
x = 19 # 19n is assigned to x
y = 22-3
print(x == y) # == is called equal to operator
print(x !=y) # == is called not equal to operator
print(y > x)
print(y >=x) # >= is called greater than equal to operator

# Logical Operators in R # If I want to compare between true or false events
# && Logical Operator
# || Logical Operator

4 ==4 && 5 ==5 # && is called and logical operator.it will give only true when it has both side true
x != y || x == y # || is called or logical operator, which is opposite to &&. It will give False if bothside have false operator

# simple Mathematics Operators in R
z = 6 + 9 - 8 * (2 / 3)
print(z)

w = 4 + 3 -3 * 2 / 3
print(w)

y = 4^3
print(y)

11 / 5 # modulo operator,
11 %/% 5 # if we don't want to see decimal.
11 %% 5 # to see remainer
