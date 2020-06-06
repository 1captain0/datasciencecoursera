pollutantmean <- function(directory,pollutant,id=1:332){
  cdir<-getwd()
  dir<-paste('./',directory,sep='')
  setwd(dir)
  files<-list.files()
  df<-NULL
  for (i in id) {
    df <- rbind(df,read.csv(files[i]))
  }
  avg <- colMeans(df[pollutant],na.rm = TRUE)
  setwd(cdir)
  avg
}