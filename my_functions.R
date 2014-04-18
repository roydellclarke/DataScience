#Programmed By Roydell Clarke 



pollutantmean <- function(dir,chemType,id=331) {
  
  
    idLength = id
    
    print(id)
  
    print(paste("You Have Entered id number", id, "BUT:") )
    print(paste("There Are Only", 331, "files in your specdata folder")  )

  
  #ask(msg = "Thanks for Evaulate my code: Press <RETURN> to continue: ") prompt the user
    files <- list.files(dir, pattern = ".csv", full.names = TRUE)  #Get list of all file from the folder passed in by user
    numfiles <- length(files)# this is lenght of the  all the file in the folder to use for counting
    print(paste("Total Number of Files in specdata folder are",numfiles))
  
  for (i in id){
  
  
nameoffile <- files[i]#Locate file on disc by id passed in by the user. With it's absolute path 

#print(files[id]) checking to see if I could search by id.

  #for (i in files){  I use this loop to loop through all the file
   #print(i)
  #}


df <- read.csv(nameoffile, header=TRUE) #load file csv from disc and store in a variable df.
                                #print(df)# print the content of the file.
                                
                                if(chemType =="sulfate"){#which of the 2 pullutant the user want to check the mean of ?
                                meaner<- mean(df$sulfate,na.rm=TRUE)
                                }
                                
                                if(chemType =="nitrate"){#which of the 2 pullutant the user want to check the mean of ?
                                  meaner<- mean(df$nitrate,na.rm=TRUE)#subset on the named of column 
                                }
                                names(df)
                                print(paste("The Mean of ",chemType,"is",meaner))
#print(meaner)
#names(df)
#df$ID

#df$GRADES

#df$GPA
  }#end for loop
}#end function