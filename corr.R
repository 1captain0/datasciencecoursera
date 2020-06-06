corr <- function(directory='specdata',threshhold=0){
  cdir<-getwd()
  dir<-paste('./',directory,sep='')
  setwd(dir)
  files<-list.files()
  v<-numeric()
  l<-length(files)
  for (i in seq.int(l)) {
    df<-read.csv(files[i])
    new_df<-df[complete.cases(df),]
    r<-nrow(new_df)
    if(r>threshhold){
      cr<-cor(new_df['nitrate'],new_df['sulfate'])
      v<-append(v,cr)
    }
  }
  setwd(cdir)
  if(length(v)==0){
    return(c(0))
  }
  else{
    return(v)
  }
  
  
}