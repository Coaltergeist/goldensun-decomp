typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;

extern u8 *iwram_3001e74;
extern int __modsi3(int, int);

int Func_80c1df4(int target)
{
    register u8 *state asm("r5") = iwram_3001e74;
    u8 *countAddr = state + 0x40;
    int count = *countAddr;
    register int index asm("r1") = 0;

    if (index < count && *(u16 *)(state + 0x10) != target) {
        u16 *entry = (u16 *)(state + 0x10);
        do {
            index++;
            if (index >= count)
                break;
            entry++;
        } while (*entry != target);
    }

    if (index != count) {
        register int off34 asm("r6") = index + 0x34;
        s8 flag = *(s8 *)(state + off34);
        register int izero asm("r4") = 0;

        if (flag < 0) {
            asm volatile(
                "mov r3, #1\n\t"
                "strb r3, [r5, r6]\n\t"
                "lsl r3, r1, #2\n\t"
                "add r3, r3, #0x1c\n\t"
                "mov r2, #3\n\t"
                "str r2, [r5, r3]\n\t"
                :
                : "r" (izero)
                : "r2", "r3", "memory"
            );
            return 0x8001;
        }

        {
            int spill;
            register int off1c asm("r7") = index * 4;
            register int result asm("r0");
            asm volatile(
                "b 1f\n\t"
                "2:\n\t"
                "add r4, r4, #1\n\t"
                "1:\n\t"
                "cmp r4, #31\n\t"
                "bgt 3f\n\t"
                "ldrsb r0, [r5, r6]\n\t"
                "mov r1, #9\n\t"
                "add r0, r0, #1\n\t"
                "str r4, %0\n\t"
                "bl __modsi3\n\t"
                "mov r3, r7\n\t"
                "strb r0, [r5, r6]\n\t"
                "add r3, r3, #0x1c\n\t"
                "lsl r0, r0, #24\n\t"
                "asr r0, r0, #24\n\t"
                "mov r2, #1\n\t"
                "ldr r3, [r5, r3]\n\t"
                "lsl r2, r2, r0\n\t"
                "and r3, r3, r2\n\t"
                "ldr r4, %0\n\t"
                "cmp r3, #0\n\t"
                "bne 2b\n\t"
                "3:\n\t"
                "ldrsb r3, [r5, r6]\n\t"
                "mov r1, r7\n\t"
                "add r1, r1, #0x1c\n\t"
                "mov r2, #1\n\t"
                "lsl r2, r2, r3\n\t"
                "ldr r3, [r5, r1]\n\t"
                "orr r3, r3, r2\n\t"
                "str r3, [r5, r1]\n\t"
                "ldrsb r0, [r5, r6]\n\t"
                : "=m" (spill), "=r" (result)
                : "r" (izero), "r" (off1c)
                : "r1", "r2", "r3", "r4", "lr", "cc", "memory"
            );
            return result;
        }
    }

    if (count <= 4) {
        int off34n, off10, off1cn;
        off34n = count + 0x34;
        *(s8 *)(state + off34n) = -1;
        off10 = count * 2 + 0x10;
        *(s16 *)(state + off10) = (s16)target;
        off1cn = count * 4 + 0x1c;
        *(u32 *)(state + off1cn) = 0;
        *countAddr = count + 1;
        return 9;
    }
    return -1;
}
