; This program will find the max in a list of numbers.  The list
; begins at the location with label "List".  The list must
; end with a 0.  When the program ends, the max of all
; the numbers in the list will be in the location labeled
; "Max".  (This program illustrates the use of 
; indirect addressing with a LOD-I instruction.)


        lod-c 0       ; Store the number 0 in location "Max"
        sto Max       ; to get ready to start .

        lod-c List    ; Get the number "List" (a memory location) 
        sto NextNum   ; and store it in memory location NextNum.
                      ; NextNum will always contain the memory
                      ; location of the next number in the list.
        

Loop:   lod-i NextNum ; Get the next number in the list.
                      ; (Note the use of indirect addressing!)

        jmz Done      ; If the number that was loaded by the
                      ; preceding instruction was zero, then
                      ; we have reached the end of the list, and
                      ; the program should end.


	SUB Max
	JMN Next

	LOD-I NextNum
	STO Max
                      
        
                      
Next:   lod NextNum   ; Add one to NextNum, so that it point
        inc           ; to the next item in the list.
        sto NextNum
                      
        jmp Loop      ; Go back to process the next number


Done:   hlt           ; program ends if you jump to this location

NextNum: data         ; This location will hold the ADDRESS
                      ; of the next number that needs to be
                      ; compared with Max.  At the beginning
                      ; of the program, it is loaded with the
                      ; number, List, which is the address of
                      ; the first number to be added.  After
                      ; each number is added, 1 is
                      ; added to NextNum to make it point to
                      ; the next number in the list.


@17
Max:    data          ; At the end of the program, this
                      ; location will hold the max of the
                      ; numbers in the list.  It is set to
                      ; 0 at the start of the program, and
                      ; then the numbers are added to it one
                      ; by one.

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
