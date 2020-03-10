%include "simple_io.inc"
global asm_main
extern rperm
SECTION .data
     prompt1: db "if you want to swap, enter a,b",10,0
     prompt2: db "if you want to end enter 0: ",0
     a1: db "incorrect input, redo",10,0
     pg: db "program done",10,0
     blank: db "          ",0
     b1: db ".....+....",0
     b2: db ".....++...",0
      b3: db "....+-+...",0
      b4: db "....+--+..",0
      b5: db "...+---+..",0
      b6: db "...+----+.",0
      b7: db "..+-----+.",0
      b8: db "..+------+",0
     m2: db "     ++   ",0
     m3: db "    + +   ",0
     m4: db "    +  +  ",0
     m5: db "   +   +  ",0
     m6: db "   +    + ",0
     m7: db "  +     + ",0
     m8: db "  +      +",0
     t3: db "    +-+   ",0
     t4: db "    +--+  ",0
     t5: db "   +---+  ",0
     t6: db "   +----+ ",0
     t7: db "  +-----+ ",0
     t8: db "  +------+",0
     n1: db "     1    ",0
     n2: db "     2    ",0
     n3: db "     3    ",0
     n4: db "     4    ",0
     n5: db "     5    ",0
     n6: db "     6    ",0
     n7: db "     7    ",0
     n8: db "     8    ",0
     s: db "  ",0
     swapmsg: db "swappin box  ",0
     swapmsg2: db "  with a box  ",0
SECTION .bss
     array: resq 8
SECTION .text
display:     enter 0,0
                         saveregs
                         mov r8, [rbp + 32]
                         mov rax, qword 0
                         mov rbx, [rbp + 24]
                         mov rcx, qword 0

PRINTLAYER8:     inc rcx
                                   cmp rcx, qword 9
                                   je PRINTLAYER7
                                   cmp qword [rbx], qword 8
                                   je PT8
                                   mov rax, blank
                                   call print_string
                                   add rbx, 8
                                   jmp PRINTLAYER8
PT8:     mov rax, t8
               call print_string
               add rbx, 8
               jmp PRINTLAYER8
PRINTLAYER7:     mov rbx, [rbp + 24]
                                   mov rcx, qword 0
                                   call print_nl
LAYER7:     inc rcx
        cmp rcx, qword 9
        je PRINTLAYER6
        cmp qword [rbx], qword 8
        je PM8
                    cmp qword [rbx], qword 7
                    je PT7
        mov rax, blank
        call print_string
        add rbx, 8
        jmp LAYER7
PM8:     mov rax, m8
      call print_string
      add rbx, 8
      jmp LAYER7
PT7:     mov rax, t7
               call print_string
               add rbx, 8
               jmp LAYER7
PRINTLAYER6:     mov rbx, [rbp + 24]
                       mov rcx, qword 0
                       call print_nl
LAYER6:     inc rcx
        cmp rcx, qword 9
        je PRINTLAYER5
        cmp qword [rbx], qword 8
        je PM86
        cmp qword [rbx], qword 7
        je PM7
                    cmp qword [rbx], qword 6
                    je PT6
        mov rax, blank
        call print_string
        add rbx, 8
        jmp LAYER6
PM86:     mov rax, m8
      call print_string
      add rbx, 8
      jmp LAYER6
PM7:     mov rax, m7
      call print_string
               add rbx, 8
               jmp LAYER6
PT6:     mov rax, t6
               call print_string
               add rbx, 8
               jmp LAYER6
PRINTLAYER5:     mov rbx, [rbp + 24]
                       mov rcx, qword 0
                       call print_nl
LAYER5:     inc rcx
        cmp rcx, qword 9
        je PRINTLAYER4
        cmp qword [rbx], qword 8
        je PM85
        cmp qword [rbx], qword 7
        je PM75
                    cmp qword [rbx], qword 6
                    je PM6
                    cmp qword [rbx], qword 5
                    je PT5
        mov rax, blank
        call print_string
        add rbx, 8
        jmp LAYER5
PM85:     mov rax, m8
      call print_string
      add rbx, 8
      jmp LAYER5
PM75:     mov rax, m7
      call print_string
               add rbx, 8
               jmp LAYER5
PM6:     mov rax, m6
               call print_string
               add rbx, 8
               jmp LAYER5
PT5:     mov rax, t5
               call print_string
               add rbx, 8
               jmp LAYER5
PRINTLAYER4:     mov rbx, [rbp + 24]
                       mov rcx, qword 0
                       call print_nl
LAYER4:     inc rcx
        cmp rcx, qword 9
        je PRINTLAYER3
        cmp qword [rbx], qword 8
        je PM84
        cmp qword [rbx], qword 7
        je PM74
                    cmp qword [rbx], qword 6
                    je PM64
                    cmp qword [rbx], qword 5
                    je PM5
                    cmp qword [rbx], qword 4
                    je PT4
        mov rax, blank
        call print_string
        add rbx, 8
        jmp LAYER4
PM84:     mov rax, m8
      call print_string
      add rbx, 8
      jmp LAYER4
PM74:     mov rax, m7
      call print_string
               add rbx, 8
               jmp LAYER4
PM64:     mov rax, m6
               call print_string
               add rbx, 8
               jmp LAYER4
PM5:     mov rax, m5
               call print_string
               add rbx, 8
               jmp LAYER4
PT4:     mov rax, t4
               call print_string
               add rbx,8
               jmp LAYER4
PRINTLAYER3:     mov rbx, [rbp + 24]
                       mov rcx, qword 0
                       call print_nl
LAYER3:     inc rcx
        cmp rcx, qword 9
        je PRINTLAYER2
        cmp qword [rbx], qword 8
        je PM83
        cmp qword [rbx], qword 7
        je PM73
                    cmp qword [rbx], qword 6
                    je PM63
                    cmp qword [rbx], qword 5
                    je PM53
                    cmp qword [rbx], qword 4
                    je PM4
                    cmp qword [rbx], qword 3
                    je PT3
        mov rax, blank
        call print_string
        add rbx, 8
        jmp LAYER3
PM83:     mov rax, m8
      call print_string
      add rbx, 8
      jmp LAYER3
PM73:     mov rax, m7
      call print_string
               add rbx, 8
               jmp LAYER3
PM63:     mov rax, m6
               call print_string
               add rbx, 8
               jmp LAYER3
PM53:     mov rax, m5
               call print_string
               add rbx, 8
               jmp LAYER3
PM4:     mov rax, m4
               call print_string
               add rbx,8
               jmp LAYER3
PT3:     mov rax, t3
               call print_string
               add rbx, 8
               jmp LAYER3
PRINTLAYER2:     mov rbx, [rbp + 24]
                       mov rcx, qword 0
                       call print_nl
LAYER2:     inc rcx
        cmp rcx, qword 9
        je PRINTLAYER1
        cmp qword [rbx], qword 8
        je PM82
        cmp qword [rbx], qword 7
        je PM72
                    cmp qword [rbx], qword 6
                    je PM62
                    cmp qword [rbx], qword 5
                    je PM52
                    cmp qword [rbx], qword 4
                    je PM42
                    cmp qword [rbx], qword 3
                    je PM3
                    cmp qword [rbx], qword 2
                    je PT2
        mov rax, blank
        call print_string
        add rbx, 8
        jmp LAYER2
PM82:     mov rax, m8
      call print_string
      add rbx, 8
      jmp LAYER2
PM72:     mov rax, m7
      call print_string
               add rbx, 8
               jmp LAYER2
PM62:     mov rax, m6
               call print_string
               add rbx, 8
               jmp LAYER2
PM52:     mov rax, m5
               call print_string
               add rbx, 8
               jmp LAYER2
PM42:     mov rax, m4
               call print_string
               add rbx,8
               jmp LAYER2
PM3:     mov rax, m3
               call print_string
               add rbx, 8
               jmp LAYER2
PT2:     mov rax, m2
               call print_string
               add rbx, 8
               jmp LAYER2
PRINTLAYER1:     mov rbx, [rbp + 24]
                       mov rcx, qword 0
                       call print_nl
LAYER1:     inc rcx
        cmp rcx, qword 9
        je PRINTLAYER0
        cmp qword [rbx], qword 8
        je PB8
        cmp qword [rbx], qword 7
        je PB7
                    cmp qword [rbx], qword 6
                    je PB6
                    cmp qword [rbx], qword 5
                    je PB5
                    cmp qword [rbx], qword 4
                    je PB4
                    cmp qword [rbx], qword 3
                    je PB3
                    cmp qword [rbx], qword 2
                    je PB2
                    cmp qword [rbx], qword 1
                    je PB1
        mov rax, blank
        call print_string
        add rbx, 8
        jmp LAYER1
PB8:     mov rax, b8
      call print_string
      add rbx, 8
      jmp LAYER1
PB7:     mov rax, b7
      call print_string
               add rbx, 8
               jmp LAYER1
PB6:     mov rax, b6
               call print_string
               add rbx, 8
               jmp LAYER1
PB5:     mov rax, b5
               call print_string
               add rbx, 8
               jmp LAYER1
PB4:     mov rax, b4
               call print_string
               add rbx,8
               jmp LAYER1
PB3:     mov rax, b3
               call print_string
               add rbx, 8
               jmp LAYER1
PB2:     mov rax, b2
               call print_string
               add rbx, 8
               jmp LAYER1
PB1:     mov rax, b1
               call print_string
               add rbx, 8
               jmp LAYER1
PRINTLAYER0:     mov rbx, [rbp + 24]
                       mov rcx, qword 0
                       call print_nl
LAYER0:     inc rcx
        cmp rcx, qword 9
        je display_end
        cmp qword [rbx], qword 8
        je N8
        cmp qword [rbx], qword 7
        je N7
                    cmp qword [rbx], qword 6
                    je N6
                    cmp qword [rbx], qword 5
                    je N5
                    cmp qword [rbx], qword 4
                    je N4
                    cmp qword [rbx], qword 3
                    je N3
                    cmp qword [rbx], qword 2
                    je N2
                    cmp qword [rbx], qword 1
                    je N1
N8:     mov rax, n8
    call print_string
    add rbx, 8
    jmp LAYER0
N7:     mov rax, n7
    call print_string
          add rbx, 8
          jmp LAYER0
N6:     mov rax, n6
          call print_string
          add rbx, 8
          jmp LAYER0
N5:     mov rax, n5
          call print_string
          add rbx, 8
          jmp LAYER0
N4:     mov rax, n4
          call print_string
          add rbx,8
          jmp LAYER0
N3:     mov rax, n3
          call print_string
          add rbx, 8
          jmp LAYER0
N2:     mov rax, n2
          call print_string
          add rbx, 8
          jmp LAYER0
N1:     mov rax, n1
          call print_string
          add rbx, 8
          jmp LAYER0
display_end:     call print_nl
                                   restoregs
                                    leave
                                    ret
asm_main:     enter 0,0
                         saveregs
                         mov rdi, array ;first parameter for rperm
                         mov rsi, qword 8 ;second parameter for rperm
                         call rperm ;call r perm
                         mov r14, qword 8
                         mov r15, array
                         push r14 ;length
                         push r15 ;array
                         sub rsp, qword 8
                         call display ;draw the skyline
                         add rsp, qword 24
                         jmp prompt
promptSecond:     mov r14, qword 8
                    mov r15, array
                    push r14 ;length
                    push r15 ;array
                    sub rsp, qword 8 ;fake
                    call display ;draw the skyline
                    add rsp, qword 24
prompt:     mov     rax,prompt1 ;displays prompt for user to enter two numbers
                    call print_string ;prints the prompt
                    mov     rax,prompt2 ;displays prompt for user to enter 0 to stop program
                    call print_string ;prints the prompt
read:     call     read_char ;reads first char of user input
               cmp     al, '0' ;compares to 0 char
               je asm_main_end ; if equal end program
               cmp     al, '1' ; compares it to char 1
               jb ERROR1 ; if below, go to error1
               cmp     al, '8' ;compares it to char 8
               jg ERROR1 ; if greater, go to error1          ;FIRST ARGUMENT GIVEN BY USER IS CORRECT
               mov r12, 0 ;initialize the r12 register
               mov     r12b, al ; move the first character of the user input to r12b
               sub     r12b, '0'     ;change it to an integer
               call read_char ;reads next char given by the user
               cmp     al, ',' ; has to be a comma ;(between the two numbers)
               jne     ERROR2 ; if the comma is not there, jump to ERROR2       ;DO THIS WHOLE PROCESS AGAIN FOR SECOND ARGUMENT
      call read_char
      cmp al, '1'
      jb ERROR3
      cmp al, '8'
      jg ERROR3
      mov r13, 0
      mov r13b, al
      sub r13b, '0'        ;ARGUMENTS GIVEN BY THE USER ARE ALL FINE
               mov rax, swapmsg
               call print_string
               mov rax, r12
               call print_int
               mov rax, swapmsg2
               call print_string
               mov rax, r13
               call print_int
               call print_nl
               mov     r14, array ; move the address of the first element of array into r14
LOOP1:     cmp     [r14], r12 ;compares the value of the first element of the array to the first number to be switched
                    je     LOOP2 ; if the numbers match, move to second loop for second number
                    add     r14, 8 ;check next element of the array by adding 8 bytes since it is a qword
                    jmp     LOOP1 ; continuously loop till r14 is pointing to the value to be changed
LOOP2:     mov     r15, array ; move the address of the second element to be switched into r15      ;DO SIMILAR THING FOR THE SECOND VALUE INPUTTED BY USER
LOOP3:     cmp     [r15], r13
                    je LOOP4
                    add     r15, 8
                    jmp     LOOP3
LOOP4:     mov     [r14], r13 ; move the second value into the array, switches it!
                    mov     [r15], r12 ;see above comment
           mov r14, qword 8
           mov r15, array
           push r14 ;length
           push r15 ;array
           sub rsp, qword 8
           call display ;draw the skyline
           add rsp, qword 24
CLRBUFF:     cmp     al, 10
                         je prompt
                         call read_char
                         jmp     CLRBUFF
ERROR1:     call print_nl
                    mov     rax, a1
                    call print_string      ; empty input buffer
L1:     cmp al, 10
          je promptSecond
          call read_char
          jmp     L1
ERROR2:     call print_nl
                    mov     rax, a1
                    call print_string      ; empty input buffer
EMP:     cmp     al, 10
               je promptSecond
               call read_char
               jmp     EMP
ERROR3:     call print_nl
                    mov     rax, a1
                    call print_string
I1:     cmp     al, 10
       je     promptSecond
    call read_char
    jmp     I1
asm_main_end:     mov rax, pg
                                   call print_string
                                   restoregs
                                   leave
                                   ret