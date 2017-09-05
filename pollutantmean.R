pollutantmean <- function(directory,pollutant,id=1:332) {
  dir_path<-paste("C:/Users/Nihar/Documents/fIRSTr/",directory,sep = "")
  file_names<-as.character(list.files(dir_path))
  file_names_full<-paste(dir_path,file_names,sep="/")
  pollutant_figures<-c()
  
  for(i in id){
    pollutant_tab<-read.csv(file_names_full[i],header = TRUE,sep = ',')
    pollutant_tab.remove_na<-pollutant_tab[!is.na(pollutant_tab[,pollutant]),pollutant]
    pollutant_figures<-c(pollutant_figures,pollutant_tab.remove_na)
  }
  pollutant_mean<-mean(pollutant_figures) 
  return(pollutant_mean)
}