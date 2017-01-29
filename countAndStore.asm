LOD-C 1 ; Start with a 1 in location 12
STO 12

Load: LOD 12 ; This instruction is stored in location 2
INC
Store: STO 13 ; This instruction is stored in location 4

LOD Load  ; Add 1 to the number in location Load
INC
STO Load

LOD Store  ; Add 1 to the number in location Load
INC
STO Store

JMP Load ; GO back to the instruction located in Load
