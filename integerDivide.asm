	LOD N1
	JMN End
Loop: 	LOD N2
	SUB N1
	STO N2
	JMN END
	LOD Count
	INC
	STO Count
	JMP Loop
		

End: 	HLT


N1: 5
N2: 15

Count: 0
