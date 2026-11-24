; Name: Michael Saleh
; Student ID: 2025000977
; Section: 4
; Question: Q1 8-Bit Addition with Carry

LXI H, 2500H    ; Point HL pair to first operand address 2500H
MOV A, M        ; Load first number into Accumulator
INX H           ; Point HL to second operand address 2501H
ADD M           ; Add second number to Accumulator
INX H           ; Point HL to 2502H
MOV M, A        ; Store 8-bit sum at 2502H
MVI A, 00H      ; Clear Accumulator for carry check
ADC A           ; Add Carry flag to A (A = 01H if CY=1, else 00H)
INX H           ; Point HL to 2503H
MOV M, A        ; Store carry at 2503H
HLT             ; End program