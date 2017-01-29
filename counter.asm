LOD-C 1 	; Set count equal to 1
STO count
Loop:	LOD count
	INC
	STO count
	SUB max
	JMZ End
	JMP Loop
	
End: 	HLT


@12
count: data
max: 16
