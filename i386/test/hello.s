.section .comment
  .byte 0
  .asciz "GCC: (GNU) 2.95.3-haiku-2017_07_20"

.section .rodata

msg: .ascii "Hello World!\n"

.equ msg_len, .-msg
.equ kernel, 0x63
.equ write, 131
.equ exit, 8
.equ stdout, 1
.equ status, 17

.text

.global _start

_start:
  # TODO: Fill in valid _write ops
  # ...

  # push $msg_len
  # push $msg
  # push $stdout
  # push %eax
  # mov $sys_write, %eax
  # int $kernel
  # add $12, %esp

  push $status
  mov $exit, %eax
  int $kernel
