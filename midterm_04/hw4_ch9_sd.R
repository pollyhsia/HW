# Section 1: library packages


# Section 2: self-defined functions
my.sd <- function(input_vector) {
  summation <- 0
  count <- 0
  for (i in input_vector) {
    summation <- summation + (i - mean(input_vector))^2
    count <- count + 1
  }
  return(sqrt(summation/(count-1)))
}

# Section 3: inputs and parameters
my_vector <- 1:10
another_vector <- 1:100


# Section 4: function calls
my.sd(my_vector)
my.sd(another_vector)


