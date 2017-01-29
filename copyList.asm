	LOD-C List
	STO NextNum

Loop:   LOD-I NextNum 

        JMZ Done   

	STO-I Copy

                      
	LOD NextNum  
        INC           
        STO NextNum

	LOD Copy
	INC
	STO Copy
                      
        JMP Loop      


Done:   HLT           

NextNum: data        

Copy:	 27        

List:   123           ; This is the list of numbers to be compared
        37
        103
        12
        93
        88
        207
        2
        124
        198
        73
        0             ; This 0 marks the end of the list
