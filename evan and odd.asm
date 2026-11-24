; Name: Michael Saleh
; Student ID: 2025000977
; Section: 4
; Question: Q3 Count Even and Odd Numbers

LXI H, 2500H    ; Point HL to array length N at 2500H
MOV C, M        ; Load counter N into register C
MVI D, 00H      ; Register D = Even count (initialized to 0)
MVI E, 00H      ; Register E = Odd count (initialized to 0)

LOOP: INX H     ; Point to next element in array
MOV A, M        ; Load element into Accumulator
ANI 01H         ; Mask all bits except LSB (check if odd/even)
JNZ ODD         ; If LSB is 1 (Zero flag = 0), jump to ODD
INR D           ; Increment Even counter
JMP NEXT        ; Jump to loop decrement

ODD: INR E      ; Increment Odd counter

NEXT: DCR C     ; Decrement array length counter
JNZ LOOP        ; Repeat if C != 0

MOV A, D        ; Move Even count to A
STA 2600H       ; Store Even count at 2600H
MOV A, E        ; Move Odd count to A
STA 2601H       ; Store Odd count at 2601H
HLT             ; End program