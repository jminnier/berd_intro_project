
# Create a vector of all integers from 4 to 10, and save it as `a1`. 
a1 <- 4:10

# Create a vector of _even_ integers from 4 to 10, and save it as `a2`. 
a2 <- c(4, 6, 8, 10)
# the following works as well:
a2 <- 2*(2:5)
# or
a2 <- seq(4, 10, by=2)

# What is the sum of `a1` and `a2`? 
a1+a2

# What does the command `sum(a1)` do?
sum(a1)

# What does the command `length(a1)` do?
length(a1)

# Use the commands to calculate the average of the values in `a1`.
sum(a1) / length(a1)
# alternatively:
mean(a1)

# The formula for the first $n$ integers is $n(n+1)/2$. Compute the sum of all integers from 1 to 100 to verify that this formula holds for $n=100$. 
sum(1:100)

# verify formula for n=100:
n=100
n * (n+1) / 2

# Compute the sum of the squares of all integers from 1 to 100.
# The following code creates a vector of the squares of all integers from 1 to 100
(1:100)^2

# Now add the squares:
sum((1:100)^2)
