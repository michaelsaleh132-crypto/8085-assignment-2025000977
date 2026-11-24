; Name: Michael Saleh
; Student ID: 2025000977
; Section: 4
; Question: Q2 1's and 2's Complement

LDA 2500H       ; Load 8-bit number from 2500H into Accumulator
CMA             ; Complement Accumulator (1's complement)
STA 2501H       ; Store 1's complement at 2501H
ADI 01H         ; Add 1 to get 2's complement
STA 2502H       ; Store 2's complement at 2502H
HLT             ; End program