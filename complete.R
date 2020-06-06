complete <- function(directory='specdata',id=1:332){
  cdir<-getwd()
  dir<-paste('./',directory,sep='')
  setwd(dir)
  files<-list.files()
  complete_df<-data.frame()
  for (i in id) {
    df<-read.csv(files[i])
    obs <- nrow(df[complete.cases(df),])
    complete_df<-rbind(complete_df,c(i,obs))
  }
  names(complete_df)<-c('id','nobs')
  setwd(cdir)
  complete_df
}