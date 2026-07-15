typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;

extern u8 *iwram_3001e74;

int Func_80b6c08(int kinds, u16 *out)
{
    register int kindReg asm("r6");
    register u8 *state asm("r0");
    register int count asm("r5");
    register int selected asm("r3");
    register int savedScratch asm("r7");

    asm volatile("ldr r3, =iwram_3001e74\n\t"
                 "mov r6, r0\n\tldr r0, [r3]\n\t"
                 "mov r3, #1\n\tand r3, r6\n\tmov r5, #0"
                 : "=r"(kindReg), "=r"(state), "=r"(count),
                   "=r"(selected));
    asm volatile("" : "=r"(savedScratch));

    if (selected != 0) {
        register int first asm("r3");
        asm volatile("mov r3, #0x58\n\tldrsh r3, [r0, r3]"
                     : "=r"(first) : "r"(state));
    if (first != 0xff) {
        register u16 *entry asm("r2") = (u16 *)(state + 0x58);
        do {
            register int signedValue asm("r3");
            register u16 value asm("r4");
            asm volatile("mov r7, #0\n\tldrsh r3, [r2, r7]\n\tldrh r4, [r2]"
                         : "=r"(signedValue), "=r"(value) : "r"(entry)
                         : "r7");
            if (signedValue != 0xfe) {
                if (out != 0)
                    *out++ = value;
                count++;
            }
            {
                register int next asm("r3");
                asm volatile("add r2, #2\n\tmov r4, #0\n\t"
                             "ldrsh r3, [r2, r4]"
                             : "+r"(entry), "=r"(next) : : "r4");
                if (next == 0xff)
                    break;
            }
        } while (1);
    }
    }

    if (kindReg & 2) {
        register u8 *secondBase asm("r2");
        register int initial asm("r3");
        register int offset asm("r0");
        register u8 *savedBase asm("r12");
        asm volatile("add r2, r0, #2\n\tmov r3, #0x64\n\t"
                     "ldrsh r3, [r2, r3]\n\tmov r12, r2"
                     : "=r"(secondBase), "=r"(initial), "=r"(savedBase)
                     : "r"(state));
    if (initial != 0xff) {
        offset = 0x64;
        do {
            register int signedValue asm("r3");
            register u16 value asm("r4");
            asm volatile("ldrsh r3, [r2, r0]\n\tldrh r4, [r2, r0]"
                         : "=r"(signedValue), "=r"(value)
                         : "r"(secondBase), "r"(offset));
            if (signedValue != 0xfe) {
                if (out != 0)
                    *out++ = value;
                count++;
            }
            offset += 2;
            secondBase = savedBase;
        } while (*(s16 *)(secondBase + offset) != 0xff);
    }
    }

    if (out != 0)
        *out = 0xff;
    asm volatile("" : : "r"(savedScratch));
    return count;
}
