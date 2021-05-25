cat("\014");
cat("Hi Ankit! What are we doing today?\n")
setwd("C:/Users/Ankit Deshmukh/Desktop/")

.properName <- function(x,name = F){
  # A function get a propert name without under score and first capital letter
  #replace "_" with space
  x = tolower(x)
  x = gsub("_", " ", x)

  if(name == F){
    x = paste0(toupper(substring(x, 1, 1)),substring(x,2))
  }else if (name == T){
    temp = unlist(strsplit(x," "))
    saveStr = rep(NA,length(temp))
    for(ii in seq_along(temp)){
      temp[ii] = paste0(toupper(substring(temp[ii], 1, 1)),substring(temp[ii],2))
    }
    x = paste(temp, collapse=" ")
  }
  return(x)
}

.os <- function(x){
  x = object.size(x)
  print(x,units="auto")
}

