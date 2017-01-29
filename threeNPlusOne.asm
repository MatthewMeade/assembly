
	LOD-C 0	   ; Initialize Count to 0
	STO Count


NextN : LOD N      ; Get the number N.
        SUB-C 1    ; If it is 1, we are done.
        JMZ Done

	LOD Count  ; Increment Count each time the program loops
	INC
	STO Count
        
        LOD N      ; Otherwise, test if N is odd or even.
        AND-C 1    ; (If N is even, the last bit is zero; if N
        JMZ Even   ; is odd, that bit is one.  This can be 
                   ; tested by checking whether the result of
                   ; ANDing N with 1 is zero or 1.  (The result
                   ; depends only on the last bit in N.))

Odd:    LOD N      ; If we get here, N must be odd.
        ADD N      ; Compute 3 times N plus 1, replace N with
        ADD N      ; the result and return to start.
        ADD-C 1
        STO N
        JMP NextN

Even:   LOD N      ; N is even.  Divide it by 2 by shifting 
        SHR        ; it one bit to the right.
        STO N  
        JMP NextN  ; Jump back to the start of the loop.

Done:   HLT

N:      7         ; The memory location named "N" is loaded
                  ; with the number "7" rather than with an
                  ; assembly language instruction.  The initial
                  ; value of N when the program is run is the
                  ; starting point for the "3N+1" sequence.
                  ; Put a different value into N before
                  ; loading the program to start with a different
                  ; value.

Count: data

