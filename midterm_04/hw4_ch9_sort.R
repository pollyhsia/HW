#c(3, 1, 2)
#"Round1-1":3 > 1 -> exchange, c(1, 3, 2) ����Ĥ@�Ӹ�ĤG��
#"Round1-2":1 > 2 -> remain, c(1, 3, 2) ����Ĥ@�Ӹ�ĤT��
#"Round2-1":3 > 2 -> exchange, c(1, 2, 3) ����ĤG�Ӹ�ĤT��

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
set.seed(87)    #�������n���ͪ��H���ܼƲդ@�եN���A�u�n����I�s�o�եN���A�N�|�O�o���H���ܼƲ�
rand_vector <- ceiling(runif(10) * 100)   #ceiling--�L����i����ơFround--�|�ˤ��J
rand_vector

vector <- c(3,1,2)

# Section 4: function call
my.sort(rand_vector,decreasing = T)
my.sort(rand_vector,decreasing = F)


