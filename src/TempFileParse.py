#!/usr/bin/python

#Read file for parsing, not fully functioning parse of Maven's Central's
#return; storing jars into new file to be passed back to DoSOCS for scanning. 

#pyhon syntax assistace from:
  #https://docs.python.org/2/tutorial/inputoutput.html
  #https://docs.python.org/2/tutorial/datastructures.html#more-on-lists
  #https://docs.python.org/2/tutorial/datastructures.html#looping-techniques

parseList = []
parLines -= []

#open tempfile that shores returned info from Maven
parLines = tuple(open(tempFile, 'r')

#parses tempfile line by line matching jar files and appending them to a list
while(parLines =~ m/.*\s(?:\S+)(?:\s+)(\S+\.\S+)\..*\:(\S+) /g){
    jarFile = $1
    parseList.append(jarFile)

    }

tempFile.close()

#create a new file to store found jar file
for item in parList:
print>>jarFiles,parList
