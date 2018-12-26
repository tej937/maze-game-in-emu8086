INCLUDE "emu8086.inc"
ORG 100h               

define_print_num
define_print_num_uns

; LINE 1 -------------
lea si, maz1
mov cx, 20
wall1:
     cmp [si], 0 ; path
     je p1
     PUTC    219       ;  white block:
     jmp nx1
p1:  PUTC    32        ;  blank space
nx1: inc si
loop wall1
PRINTN ;****

; LINE 2 -------------
lea si, maz2
mov cx, 20
wall2:
     cmp [si], 0 ; path
     je p2
     PUTC    219       ;  white block:
     jmp nx2
p2:  PUTC    32        ;  blank space
nx2: inc si
loop wall2
PRINTN ;****

; LINE 3 -------------
lea si, maz3
mov cx, 20
wall3:
     cmp [si], 0 ; path
     je p3
     PUTC    219       ; white block:
     jmp nx3
p3:  PUTC    32        ; blank space
nx3: inc si
loop wall3
PRINTN ;****


; LINE 4 -------------
lea si, maz4
mov cx, 20
wall4:
     cmp [si], 0 ; path
     je p4
     PUTC    219       ;  white block:
     jmp nx4
p4:  PUTC    32        ;  blank space
nx4: inc si
loop wall4
PRINTN ;****

; LINE 5 -------------
lea si, maz5
mov cx, 20
wall5:
     cmp [si], 0 ; path
     je p5
     PUTC    219       ;  white block:
     jmp nx5
p5:  PUTC    32        ;  blank space
nx5: inc si
loop wall5
PRINTN ;****

; LINE 6 -------------
lea si, maz6
mov cx, 20
wall6:
     cmp [si], 0 ; path
     je p6
     PUTC    219       ;  white block:
     jmp nx6
p6:  PUTC    32        ; blank space
nx6: inc si
loop wall6
PRINTN ;****

; LINE 7 -------------
lea si, maz7
mov cx, 20
wall7:
     cmp [si], 0 ; path
     je p7
     PUTC    219       ; white block:
     jmp nx7
p7:  PUTC    32        ;   blank space
nx7: inc si
loop wall7
PRINTN ;****


; LINE 8 -------------
lea si, maz8
mov cx, 20
wall8:
     cmp [si], 0 ; path
     je p8
     PUTC    219       ;  white block:
     jmp nx8
p8:  PUTC    32        ;  blank space
nx8: inc si
loop wall8
PRINTN ;****

; LINE 9 -------------
lea si, maz9
mov cx, 20
wall9:
     cmp [si], 0 ; path
     je p9
     PUTC    219       ;  white block:
     jmp nx9
p9:  PUTC    32        ;  blank space
nx9: inc si
loop wall9
PRINTN ;****

; LINE 10 -------------
lea si, maz10
mov cx, 20
wall10:
     cmp [si], 0 ; path
     je p10
     PUTC    219       ;  white block:
     jmp nx10
p10:  PUTC    32        ;  blank space
nx10: inc si
loop wall10
PRINTN ;****

; LINEW 11 -------------
lea si, maz11
mov cx, 20
wall11:
     cmp [si], 0 ; path
     je p11
     PUTC    219       ;  white block:
     jmp nx11
p11:  PUTC    32        ;   blank space
nx11: inc si
loop wall11
PRINTN ;****


; LINE 12 -------------
lea si, maz12
mov cx, 20
wall12:
     cmp [si], 0 ; path
     je p12
     PUTC    219       ;  white block:
     jmp nx12
p12:  PUTC    32        ;   blank space
nx12: inc si
loop wall12
PRINTN ;****

; LINE 13 -------------
lea si, maz13
mov cx, 20
wall13:
     cmp [si], 0 ; path
     je p13
     PUTC    219       ;  white block:
     jmp nx13
p13:  PUTC    32        ;  blank space
nx13: inc si
loop wall13
PRINTN ;****

; LINE 14 -------------
lea si, maz14
mov cx, 20
wall14:
     cmp [si], 0 ; path
     je p14
     PUTC    219       ; white block:
     jmp nx14
p14:  PUTC    32        ; blank space
nx14: inc si
loop wall14
PRINTN ;****

; LINE 15 -------------
lea si, maz15
mov cx, 20
wall15:
     cmp [si], 0 ; path
     je p15
     PUTC    219       ;  white block:
     jmp nx15
p15:  PUTC    32        ;  blank space
nx15: inc si
loop wall15
PRINTN ;****


; LINE 16 -------------
lea si, maz16
mov cx, 20
wall16:
     cmp [si], 0 ; path
     je p16
     PUTC    219       ; white block:
     jmp nx16
p16:  PUTC    32        ;  blank space
nx16: inc si
loop wall16
PRINTN ;****

; LINE 17 -------------
lea si, maz17
mov cx, 20
wall17:
     cmp [si], 0 ; path
     je p17
     PUTC    219       ;  white block:
     jmp nx17
p17:  PUTC    32        ;  blank space
nx17: inc si
loop wall17
PRINTN ;****

; LINE 18 -------------
lea si, maz18
mov cx, 20
wall18:
     cmp [si], 0 ; path
     je p18
     PUTC    219       ;  white block:
     jmp nx18
p18:  PUTC    32        ;  blank space
nx18: inc si
loop wall18
PRINTN ;****

; LINE 19 -------------
lea si, maz19
mov cx, 20
wall19:
     cmp [si], 0 ; path
     je p19
     PUTC    219       ;  white block:
     jmp nx19
p19:  PUTC    32        ;  blank space
nx19: inc si
loop wall19
PRINTN ;****


; LINE 20 -------------
lea si, maz20
mov cx, 20
wall20:
     cmp [si], 0 ; path
     je p20
     PUTC    219       ; white block:
     jmp nx20
p20:  PUTC    32        ;  blank space
nx20: inc si
loop wall20
PRINTN ;****

; PUT GUY AND END IN MAZE
GOTOXY 1, 1       ;guy at start position
PUTC 01

GOTOXY 16, 17     ;finish point BL-X=18,BH-Y=17
PUTC 219       
GOTOXY 16,16
PUTC 218
MOV bl,1   ;X-AXIS 
mov bh,1   ;Y-AXIS
MOV Cx,60
repeat: 

GOTOXY  25,0
MOV AH,09H     ; timing section
LEA DX,TIMER
INT 21H  
dec cx
mov ax,cx       
call print_num 
cmp cx,00
jz times_up  

; Get keystroke
CMP BL,16
JE L0
mov ah,0
int 0x16
; AH = BIOS scan code  

cmp ah,0x48
je up
cmp ah,0x4B
je left
cmp ah,0x4D
je right
cmp ah,0x50
je down
cmp ah,1
jne repeat  ; loop until Esc is pressed

mov ah,0x4c
int 0x21

up:         
dec bh
gotoxy bl,bh
putc 01
   jmp repeat

down:         
inc bh
gotoxy bl,bh
putc 01
  jmp repeat

left:      
dec bl
gotoxy bl,bh
putc 01
jmp repeat

right:     
inc bl
gotoxy bl,bh
putc 01

jmp repeat    


L0: 
CMP BH,17   
JE DEFUSE


DEFUSE:
mov ah,0
int 0x16
; AH = BIOS scan code  
cmp ah,0x39
JE OPRATE
oprate:
MOV CX, 3
JMP OPRATE1
OPRATE1:  
LEA SI,INSTR1
LEA DI,INSTR2
gotoxy 0,20 
MOV AH,09H
LEA DX,MSG3
INT 21H
MOV AX,CX
call print_num
CMP CX,0
JE  LOSS     
      
MOV AH,09H
LEA DX,NEWLINE
INT 21H 
MOV AH,0AH  ;INPUT
MOV DX,SI
INT 21H   

;STRING COMPARISION
        MOV BX,00

        MOV BL,INSTR1+2
        MOV BH,INSTR2+2

        CMP BL,BH
        JNE L1

        ADD SI,2
        ADD DI,2
L2:
        MOV BL,BYTE PTR[SI]
        CMP BYTE PTR[DI],BL
        JNE L1
        INC SI
        INC DI
        CMP BYTE PTR[DI],"$"
        JNE L2
        
        MOV AH,09H
        LEA DX,NEWLINE
        INT 21H 
        MOV AH,09H
        LEA DX,MSG1
        INT 21H
        RET
        JMP L5
L1:     
MOV AH,09H
LEA DX,NEWLINE
INT 21H       

        MOV AH,09H
        LEA DX,MSG2
        INT 21H          
        
L5:
        MOV AH,09H
        LEA DX,NEWLINE
        INT 21H    

       
LOOP OPRATE1  

LOSS:   
        MOV AH,09H
        LEA DX,MSG4
        INT 21H  
times_up:      
        gotoxy 0,20
        MOV AH,09H
        LEA DX,MSG4
        INT 21H
                    
TIMER DB 20 DUP("TIME LEFT:- $")
INSTR1 DB 20 DUP("$")
INSTR2 DB 20 DUP("$ RGB")
NEWLINE DB 10,13,"$"
msg1 db "CONGRATS MISSION COMPLETE BOMB HAS BEEN DEFUSED $"
msg2 db "NOT DEFUSED TRY AGAIN $" 
MSG3 db "CHANCES LEFT = $"    
MSG4 DB "MISSION FAILED BOMB HAS BEEN BLASTED$"

RET
  maz1  DB  1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
  maz2  DB  1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,0,1
  maz3  DB  1,0,0,0,0,0,0,1,1,0,0,0,1,1,0,1,0,1,0,1
  maz4  DB  1,0,0,0,0,0,0,1,1,0,1,1,1,1,0,0,0,1,0,1
  maz5  DB  1,0,0,0,0,1,0,1,1,0,1,1,0,0,0,1,1,1,0,1
  maz6  DB  1,1,0,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,0,1
  maz7  DB  1,1,0,0,0,0,0,1,1,0,1,1,0,1,0,0,0,0,0,1
  maz8  DB  1,1,0,1,1,1,0,1,1,0,1,1,0,0,0,1,1,1,1,1
  maz9  DB  1,0,0,1,0,1,0,1,1,0,1,1,0,1,0,0,0,0,0,1
  maz10 DB  1,0,1,1,0,1,0,0,0,0,1,1,1,1,1,1,1,1,0,1
  maz11 DB  1,0,0,1,0,1,0,1,0,1,1,0,0,0,0,0,0,1,0,1
  maz12 DB  1,1,0,1,0,1,0,1,0,1,1,1,1,1,1,1,0,1,0,1
  maz13 DB  1,1,0,1,0,1,0,1,0,1,0,0,0,0,0,1,0,1,0,1
  maz14 DB  1,1,0,1,0,1,0,1,0,0,0,1,1,1,0,0,0,1,0,1
  maz15 DB  1,1,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,1
  maz16 DB  1,1,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1
  maz17 DB  1,1,0,0,0,1,1,1,1,1,1,1,0,1,0,0,0,0,0,1
  maz18 DB  1,1,0,1,1,1,0,0,0,1,0,0,0,1,0,0,0,0,0,1
  maz19 DB  1,1,0,0,1,1,1,1,0,0,0,1,1,1,0,0,0,0,0,1
  maz20 DB  1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
end
ret



