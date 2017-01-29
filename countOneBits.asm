Loop: 	Lod Num
	JMZ End
	SHR
	STO Num
	JMF One
	JMP Loop
		
One:	LOD Count
	INC 
	STO Count
	JMP Loop

End: 	HLT

Count: 	data
Num: 	365
