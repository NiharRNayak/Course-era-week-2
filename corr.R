corr <- function(directory , threshold = 0) {
  
  complet_case <- complete("specdata")
  comp_elgible <- complet_case$nobs
  comp_id <- complet_case$id[comp_elgible>threshold]
  
  
  file_loc<- paste("C:/Users/Nihar/Documents/fIRSTr/",directory,sep="")
  file_nams <- paste(file_loc,as.character(list.files(file_loc)),sep = "/")
  
  corr_vect<-c(0)
  j=1
  
  for(i in comp_id) {
    file_dat <- read.csv(file_nams[i], header = TRUE, sep = ",")
    corr_vect[j] <- cor(x = file_dat$sulfate, y = file_dat$nitrate,use = "complete.obs")
    j=j+1
  }
  corr_vect
}