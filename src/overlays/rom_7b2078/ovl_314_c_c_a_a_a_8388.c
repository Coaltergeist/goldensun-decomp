typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;
typedef unsigned int u32;

extern s16 gState[];
extern int __GetFlag(int flag);
extern void __Func_808b868(void *script);
extern u8 ScriptA[] asm(".L48f0");
extern u8 ScriptB[] asm(".L4ae8");
extern u8 ScriptDefault[] asm(".L4998");

void *OvlFunc_926_2008388(void)
{
    register int stateValue asm("r2");
    register int expected asm("r3");
    register s16 *stateBase asm("r1");

    asm volatile(
        "ldr r1, =gState\n\t"
        "mov r0, #0xe0\n\t"
        "lsl r0, #1\n\t"
        "add r3, r1, r0\n\t"
        "mov r0, #0\n\t"
        "ldrsh r2, [r3, r0]\n\t"
        "ldr r3, =0x3c"
        : "=r" (stateValue), "=r" (expected), "=r" (stateBase)
        :
        : "r0");
    if (stateValue == expected) {
        register void *result asm("r0");
        asm volatile("ldr r0, =.L48f0" : "=r" (result));
        return result;
    }
    asm volatile(
        "mov r2, #0xe1\n\t"
        "lsl r2, #1\n\t"
        "add r3, r1, r2\n\t"
        "mov r0, #0\n\t"
        "ldrsh r3, [r3, r0]"
        : "=r" (expected)
        : "r" (stateBase)
        : "r0", "r1", "r2");
    if (expected == 3) {
        register void *result asm("r0");
        asm volatile("ldr r0, =.L4ae8" : "=r" (result));
        return result;
    }

    {
        register int hasFlag asm("r0");
        asm volatile("ldr r0, =0x895\n\tbl __GetFlag"
                     : "=r" (hasFlag) : : "r1", "r2", "r3", "cc", "memory");
    if (hasFlag != 0) {
        register u8 *script asm("r0");
        register u16 flag asm("r1");
        asm volatile("ldr r0, =.L4998\n\tldr r1, =0x895"
                     : "=r" (script), "=r" (flag));
        *(u16 *)(script + 0x7a) = flag;
        *(u16 *)(script + 0xaa) = flag;
        *(u32 *)(script + 0xc8) = 0x01200000;
        *(u32 *)(script + 0xd0) = 0x00f80000;
        {
            register unsigned int offset asm("r2") = 0x10a;
            register u16 *destination asm("r3") = (u16 *)(script + offset);
            asm volatile("" : "+r" (destination));
            asm volatile("" : "+r" (offset));
            offset += 0x18;
            *destination = flag;
            destination = (u16 *)(script + offset);
            asm volatile("" : "+r" (destination));
            *destination = flag;
        }
    }
    }
    {
        register void *script asm("r5");
        asm volatile("ldr r5, =.L4998" : "=r" (script));
        __Func_808b868(script);
        return script;
    }
}
