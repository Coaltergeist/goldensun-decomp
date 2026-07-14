extern void Func_801e858(char *text, int argument, int zero, int style);

void Func_8020b64(int argument, const char *source)
{
    register char *buffer asm("r0");
    register int saved_argument asm("r6");
    register unsigned int current asm("r2");
    register unsigned int condition asm("r3");
    register int length asm("r4");
    asm volatile(
        "ldrb r2, [r1]\n\t"
        "mov r3, r2\n\t"
        "sub sp, #0x14\n\t"
        "mov r6, r0\n\t"
        "mov r4, #0"
        : "=r"(saved_argument), "=r"(current), "=r"(condition),
          "=r"(length)
        : "r"(argument), "r"(source)
        : "memory");

    if (condition != 0) {
        register char *destination asm("r5");
        asm volatile("mov r0, sp\n\tmov r5, r0"
                     : "=r"(buffer), "=r"(destination));
        do {
            *destination = current;
            ++source;
            asm volatile(
                "ldrb %1, [%2]\n\t"
                "mov %0, %1\n\t"
                "mov %1, %0"
                : "=r"(current), "=r"(condition)
                : "r"(source));
            ++destination;
            ++length;
        } while (condition != 0);
    } else {
        asm volatile("mov r0, sp" : "=r"(buffer));
    }

    buffer[length++] = 8;
    buffer[length++] = 2;
    if (length < 7) {
        register char *destination asm("r2");
        register int underscore asm("r1");
        asm volatile(
            "mov r3, #7\n\t"
            "add r2, r4, r0\n\t"
            "mov r1, #0x5f\n\t"
            "sub r4, r3, r4"
            : "=r"(destination), "+r"(length), "=r"(underscore)
            : "r"(buffer)
            : "r3");
        do {
            --length;
            *destination++ = underscore;
        } while (length != 0);
        length = 7;
    }

    buffer[length++] = 8;
    buffer[length++] = 15;
    buffer[length] = 0;
    Func_801e858(buffer, saved_argument, 0, -2);
    asm volatile("add sp, #0x14" ::: "memory");
}

asm(".short 0");
