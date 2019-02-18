import re
word_dict={}

def uniquewords(allwords):
    out_file2=open('./uniquewords.txt',"w",encoding="utf8")
    uniquelist=[]
    for word in allwords:
        if word not in uniquelist:
            uniquelist.append(word)
            out_file2.write(word+'\n')
    out_file2.close()

def wordfrequency(allwords):
    out_file3=open('./wordfrequency.txt',"w",encoding="utf8")
    word_freq={}
    word_freq_copy={}
    for word in allwords:
        if word in word_dict.keys():
            word_dict[word]+=1
        else:
            word_dict[word]=1
    for word in word_dict:
        frequency=word_dict[word]
        if frequency in word_freq.keys():
            word_freq[frequency]+=1
        else:
            word_freq[frequency]=1
    word_freq_copy=word_freq
    for i in range(len(word_freq_copy.keys())):
        minfreq=min(word_freq_copy.keys()) 
        out_file3.write(str(minfreq)+': '+str(word_freq_copy[minfreq])+'\n')
        del word_freq_copy[minfreq]
            
    out_file3.close()
            
    
            
            
            
    
    
    


def main():

    in_file=open("./Tom.txt","r",encoding="utf8")
    out_file1=open('./allwords.txt',"w",encoding="utf8")
    allwords=[]
    for line in in_file:
        line=line.split()
        for wordlist in line:
            wordlist=wordlist.lower()
            wordlist=re.findall('[a-z]+',wordlist)
            for word in wordlist:
                allwords.append(word)
                
                out_file1.write(word+'\n')
    uniquewords(allwords)
    wordfrequency(allwords)
    in_file.close()
    out_file1.close()





main()
        
        
    
    
