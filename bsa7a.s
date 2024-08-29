/* how to use Syscall 4 to write a string. */

    .global _start
_start:

    MOV R7, #4                      @ Syscall number
    MOV R0, #1                      @ Stdout is the monitor
    MOV R2, #14                     @ string is 14 char long
    LDR R1, =string                 @ string located at string:
    SWI 0

_exit:

    MOV R7, #1                      @ exit syscall
    SWI 0

.data
string:
.ascii "Hello, World!\n"
