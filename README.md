# XV6 'ps' System Call Implementation - Detailed Overview

## Introduction

🌐 Welcome to the comprehensive documentation of the 'ps' system call enhancement for the XV6 operating system, a project developed as part of the Operating Systems course at the Open University of Israel. This document aims to strike a balance between professional detail and engaging presentation.

![Alt text](cover.png)

## Implementation Overview

### Files and Modifications

1. **ps.c**: The user-space interface 🚀. A straightforward, command-line gateway to our new system call.

2. **user.h**: Updated with `cps192` system call prototype 📝, bridging user commands to kernel operations.

3. **proc.c**: Core implementation of `cps192` 🧠. This is where the process table gets translated into valuable insights.

4. **sysproc.c**: The kernel's gatekeeper 🛡️. Validates and processes the `cps192` system call from user space.

5. **Usys.S**: Assembly instructions, tailored to smoothly handle our new system call 🎩. The syscall number 192 is a key player here.

6. **syscall.c**: Integrating our star, the `cps192`, into the grand system call dispatch table 🌟.

7. **defs.h**: Contains the formal declaration of `cps192` 🔍, ensuring internal kernel components recognize our new addition.

### Execution Flow

- **User-Space Invocation**: Triggered by `ps`, this simple yet powerful command unravels the curtain to reveal the state of system processes.

- **Kernel-Level Execution**: `sysproc.c` and `proc.c` work in tandem, validating and executing the system call, thereby turning data into information.

## Usage Guidelines

Invoke the `ps` command in the XV6 shell to access real-time process information, a crucial tool for system introspection and debugging.

## Testing & Compliance

- Assigned syscall number 192, meticulously chosen to avoid any conflicts and ensure seamless integration.

- Rigorous tests and validations were conducted to affirm functionality, security, and stability, ensuring top-notch performance.

## Reflections and Achievements

Despite a small setback due to a delay in handling (resulting in a 98/100 score), the project stands as a testament to the fusion of academic rigor and practical system programming skills.

## Conclusion

The addition of the 'ps' system call is more than just a feature; it's a bridge connecting theoretical knowledge with real-world system operation, crafted with care for the aspiring minds at the Open University of Israel. Here's to many more cycles of learning and innovation! 🎓💡
