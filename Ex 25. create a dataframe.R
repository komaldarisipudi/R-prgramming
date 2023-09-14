exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin',
           'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
subset_exam_data <- exam_data[c(3, 5), c(1, 3)]
print(subset_exam_data)
#b
Country<-c("USA","USA","USA","USA","UK","USA","USA","India","USA","USA")
exam_data1<- cbind(exam_data, Country)
exam_data1
#c
new_exam_data = data.frame(name = c('Robert','Sophia'),score = c(10.5,9),attempts = c('N','N'),qualify = c('yes','no'))
exam_data <- rbind(exam_data,new_exam_data)
print(exam_data)
#d
sorted_exam_data <- exam_data[order(exam_data$name, exam_data$score), ]
print(sorted_exam_data)
#e
write.table(exam_data, file = "exam_data.txt", row.names = FALSE)
file.info("exam_data.txt")