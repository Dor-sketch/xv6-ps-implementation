// an edited usys.S file with the new system call.
// the change was done according to the example
// this file's editing is required for  user programs to call the system call
// it adds (together with the user header file) an interface for calling the system call.
#include "syscall.h"
#include "traps.h"

// All "standard" SYSCALLS are added by this:
#define SYSCALL(name) \
  .globl name; \
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

// !!!! Adding "new" "SYSCALLfork(fork)" instead of SYSCALL(fork)
//  without changing syscall.h !!! 1 is SYSCALL number, look in syscall.c
#define SYSCALLFORK(name) \
  .globl name; \
  name: \
    movl $1, %eax; \
    int $T_SYSCALL; \
    ret

// You need to add your new SYSCALL by the same way(here is a good place) - thanks!

#define SYSCALLCPS(name) \
  .globl name; \
  name: \
    movl $192, %eax; \
    int $T_SYSCALL; \
    ret



SYSCALLFORK(fork) //instead of SYSCALL(fork) !!!
//SYSCALL(fork)
SYSCALL(exit)
SYSCALL(wait)
SYSCALL(pipe)
SYSCALL(read)
SYSCALL(write)
SYSCALL(close)
SYSCALL(kill)
SYSCALL(exec)
SYSCALL(open)
SYSCALL(mknod)
SYSCALL(unlink)
SYSCALL(fstat)
SYSCALL(link)
SYSCALL(mkdir)
SYSCALL(chdir)
SYSCALL(dup)
SYSCALL(getpid)
SYSCALL(sbrk)
SYSCALL(sleep)
SYSCALL(uptime)
SYSCALLCPS(cps192)
