#c(3, 1, 2)
#"Round1-1":3 > 1 -> exchange, c(1, 3, 2) 比較第一個跟第二個
#"Round1-2":1 > 2 -> remain, c(1, 3, 2) 比較第一個跟第三個
#"Round2-1":3 > 2 -> exchange, c(1, 2, 3) 比較第二個跟第三個

# Section 1: library packages

# Section 2: self-defined functions
my.sort <- function(input_vector,decreasing = F){
  for(i in 1:(length(input_vector)-1)){
    for(j in (i+1):length(input_vector)){
      temp <- input_vector[i]
      if (input_vector[i] > input_vector[j] & decreasing == F) {
        input_vector[i] <- input_vector[j]
        input_vector[j] <- temp
      } else{
        temp <- input_vector[i]
        if (input_vector[i] < input_vector[j] & decreasing == T){
          input_vector[i] <- input_vector[j]
          input_vector[j] <- temp
        }
      }
    }
  }
  return(input_vector)
}


# Section 3: inputs and parameters
set.seed(87)    #給等等要產生的隨機變數組一組代號，只要之後呼叫這組代號，就會是這組隨機變數組
rand_vector <- ceiling(runif(10) * 100)   #ceiling--無條件進位到整數；round--四捨五入
rand_vector

vector <- c(3,1,2)

# Section 4: function call
my.sort(rand_vector,decreasing = T)
my.sort(rand_vector,decreasing = F)



