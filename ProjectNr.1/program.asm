SECTION .data
    formatin: db "%d", 0
    formatout: db "%d", 10, 0 
    int1: times 4 db 0 
    int2: times 4 db 0 
    int3: times 4 db 0
    min: times 4 db 0

SECTION .text
   global _main 
   extern scanf 
   extern printf     

global main
main:

   ;sub esp, 4
   ;mov [esp], ebx
   ;sub esp, 4
   ;mov [esp], ecx

   sub esp, 4
   mov [esp], dword int1
   sub esp, 4
   mov [esp], dword formatin
   call scanf
   add esp, 8

   sub esp, 4
   mov [esp], dword int2
   sub esp, 4
   mov [esp], dword formatin
   call scanf
   add esp, 8

   sub esp, 4
   mov [esp], dword int3
   sub esp, 4
   mov [esp], dword formatin
   call scanf
   add esp, 8

   ;minim
   mov eax, [int1]
   mov ebx, [int2]
   mov ecx, [int3]
   cmp ebx,eax
   jg L0
   mov eax,ebx
   L0:    
   cmp ecx,eax
   jg L1
   mov eax,ecx
   L1:
   mov [min], eax;

   mov ebx, dword [min]
   sub esp, 4
   mov [esp], ebx
   sub esp, 4
   mov [esp], dword formatout
   call printf                            
   add esp, 8

   ;mov ecx, dword [esp]
   ;add esp, 4
   ;mov ebx, dword [esp]
   ;add esp, 4
   mov eax, 0 
   ret
