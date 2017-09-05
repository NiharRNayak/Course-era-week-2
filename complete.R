complete<-function(directory,id=1:332) {
  fil_loc<-paste("C:/Users/Nihar/Documents/fIRSTr/",directory,sep="")
  file_names<-paste(fil_loc,as.character(list.files(fil_loc)),sep="/")
  
  j=1
  num_complete_cases <- c(0)
  
  for (i in id){
      file_data<-read.csv(file_names[i],header = TRUE , sep = ",")
      completed_cases<- complete.cases(file_data)
      num_complete_cases[j]<- sum(completed_cases)
  }
  data.frame(id= id, nobs = num_complete_cases)
  
}