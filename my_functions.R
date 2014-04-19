
         pollutantmean <- function(dir,pollutant,id=331) {
             
             if(id > 332){
                 print(paste("There Are Only", id, "files in your specdata folder."))
                 return
             }
             #ask(msg = "Thanks for Evaulate my code: Press <RETURN> to continue: ") prompt the user
             files <- list.files(dir, pattern = ".csv", full.names = TRUE)  #Get list of all file from the folder passed in by user
             numfiles <- length(files)# this is lenght of the  all the file in the folder to use for counting
             print(paste("Total Number of Files in specdata folder are",numfiles))
            nameoffile <- files[id]#Locate file on disc by id passed in by the user. With it's absolute path 
            
             #print(files[id]) checking to see if I could search by id.
             
             #for (i in files){  I use this loop to loop through all the file
            #print(i)
             #}
             df <- read.csv(nameoffile, header=TRUE) #load file csv from disc and store in a variable df.
             #print(df)# print the content of the file.
             
  
                  files <- list.files("specdata", full = TRUE)
                  alldata <- do.call("rbind", lapply(files, read.csv))
                  mean(alldata[alldata$id %in% id, pollutant],na.rm=TRUE)

  
  
  
  
  
  
             
            
        }
    }
