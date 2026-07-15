typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 gState[];
extern u8 L9d9f0[] asm(".L9d9f0");
extern int _GetFlag(int flag);

void Func_808b090(void)
{
    register u8 *base asm("r4");
    register int result asm("r10");
    register int sVar2 asm("r11");
    register u8 *entry asm("r5");
    register int sVar3 asm("r7");
    register int sVar4 asm("r9");
    register int rawId asm("r0");
    register int idCopy asm("r1");
    register int signExt asm("r3");
    register int negOne asm("r2");

    asm volatile(
        "ldr r4, =gState\n\t"
        "mov r2, #0xe0\n\t"
        "lsl r2, #1\n\t"
        "add r3, r4, r2\n\t"
        "mov r1, #0x12\n\t"
        "mov r10, r1\n\t"
        "mov r2, #0\n\t"
        "ldrsh r1, [r3, r2]\n\t"
        "mov r11, r1\n\t"
        "mov r1, #0xe1\n\t"
        "lsl r1, #1\n\t"
        "ldr r5, =.L9d9f0\n\t"
        "add r3, r4, r1\n\t"
        "add r1, #0xa\n\t"
        "mov r2, #0\n\t"
        "ldrsh r7, [r3, r2]\n\t"
        "ldrh r0, [r5]\n\t"
        "add r3, r4, r1\n\t"
        "mov r1, #0\n\t"
        "ldrsh r2, [r3, r1]\n\t"
        "mov r1, r0\n\t"
        "mov r9, r2\n\t"
        "lsl r3, r1, #16\n\t"
        "mov r2, #1\n\t"
        "asr r3, #16\n\t"
        "neg r2, r2"
        : "=r"(base), "=r"(result), "=r"(sVar2), "=r"(entry), "=r"(sVar3),
          "=r"(rawId), "=r"(sVar4), "=r"(idCopy), "=r"(signExt), "=r"(negOne)
        :
        : "cc");

    if (signExt == negOne)
        goto L_END;

    {
        register int mask asm("r6");
        register int minusOne asm("r8");
        asm volatile(
            "ldr r6, =0x7fff\n\t"
            "mov r8, r2"
            : "=r"(mask), "=r"(minusOne)
            : "r"(negOne)
            );

        for (;;) {
            {
                register int flagByte asm("r2");
                register int bitTest asm("r3");
                asm volatile("ldrb r2, [r5, #3]" : "=r"(flagByte) : "r"(entry) );
                asm volatile("mov r3, #0x80\n\tand r3, r2" : "=r"(bitTest) : "r"(flagByte) );
                if (bitTest != 0) {
                    register int se asm("r3");
                    asm volatile("lsl r3, r1, #16\n\tasr r3, #16" : "=r"(se) : "r"(idCopy) );
                    if (se == sVar2)
                        goto L_MATCH_INFO;
                    goto L_CONT;
                } else {
                    register int se asm("r3");
                    asm volatile("lsl r3, r0, #16\n\tasr r3, #16" : "=r"(se) : "r"(rawId) );
                    if (se != sVar4)
                        goto L_CONT;
                }
            }
        L_MATCH_INFO:
            {
                register int info asm("r2");
                register int maskAnd asm("r3");
                asm volatile("ldrh r2, [r5, #2]" : "=r"(info) : "r"(entry) );
                asm volatile("mov r3, r6\n\tand r3, r2" : "=r"(maskAnd) : "r"(mask), "r"(info) );
                if (maskAnd != mask) {
                    register int se2 asm("r3");
                    asm volatile("lsl r3, r2, #17\n\tasr r3, #17" : "=r"(se2) : "r"(info) );
                    if (se2 != sVar3)
                        goto L_CONT;
                }
            }
            {
                register int flagIdVal asm("r0");
                register int off4 asm("r2");
                asm volatile("mov r2, #4\n\tldrsh r0, [r5, r2]" : "=r"(flagIdVal), "=r"(off4) : "r"(entry) );
                if (flagIdVal != minusOne) {
                    register int flagResult asm("r0") = _GetFlag(flagIdVal);
                    if (flagResult == 0)
                        goto L_CONT;
                }
            }
            {
                register int resVal asm("r3");
                register int off6 asm("r1");
                asm volatile("mov r1, #6\n\tldrsh r3, [r5, r1]" : "=r"(resVal), "=r"(off6) : "r"(entry) );
                asm volatile("ldr r4, =gState" : "=r"(base) : );
                result = resVal;
            }
            goto L_END;

        L_CONT:
            entry += 8;
            asm volatile("ldrh r1, [r5]" : "=r"(idCopy) : "r"(entry) );
            {
                register int se3 asm("r3");
                asm volatile("lsl r3, r1, #16\n\tasr r3, #16" : "=r"(se3) : "r"(idCopy) );
                asm volatile("mov r0, r1" : "=r"(rawId) : "r"(idCopy) );
                if (se3 != minusOne) {
                    continue;
                }
            }
            break;
        }
        asm volatile("ldr r4, =gState" : "=r"(base) : );
    }

L_END:
    asm volatile(
        "mov r2, #0xf8\n\t"
        "lsl r2, #1\n\t"
        "add r3, r4, r2\n\t"
        "mov r1, r10\n\t"
        "strh r1, [r3]"
        :
        : "r"(base), "r"(result)
        : "r1", "r2", "r3", "memory");
}
