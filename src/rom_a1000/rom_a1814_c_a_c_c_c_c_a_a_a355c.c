typedef unsigned char u8;

extern u8 *iwram_3001f2c;
extern void _Func_80164ac(void *object);
extern void Func_80a1ac0(int x, int y);
extern void *_GetUnit(int id);
extern int Func_80a3ddc(void *unit, void *data, int mode);
extern int Func_80a35f8(void *units, void *data);
extern void Func_80a17c4(void *object);
extern void WaitFrames(int frames);

int Func_80a355c(int slot)
{
    register int slotIndex asm("r10") = slot;
    register u8 *state asm("r7") = iwram_3001f2c;
    register int offset asm("r6") = slotIndex + 0x1c;
    register int selected asm("r5");
    register int result asm("r8") = 0;
    void *unit;
    register void *object asm("r0");

    asm volatile(
        "mov r6, r10\n\t"
        "mov r1, #0\n\t"
        "add r6, #0x1c\n\t"
        "ldr r0, [r7, #0x2c]\n\t"
        "mov r8, r1\n\t"
        "ldrsb r5, [r7, r6]"
        : "=r"(offset), "=r"(result), "=r"(selected), "=r"(object)
        : "r"(slotIndex), "r"(state)
        : "r1");
    _Func_80164ac(object);
    asm volatile(
        "ldr r1, =0x219\n\t"
        "add r3, r7, r1\n\t"
        "ldrb r3, [r3]\n\t"
        "add r2, r7, #2\n\t"
        "strb r3, [r2, r6]"
        :
        : "r"(state), "r"(offset)
        : "r1", "r2", "r3", "memory");

    {
        register int empty asm("r2");
        asm volatile("mov r2, #1\n\tneg r2, r2" : "=r"(empty));
        if (selected == empty) {
            state[offset] = (u8)result;
            offset = 0;
        } else {
            register int x asm("r0");
            asm volatile(
                "lsl r6, r5, #1\n\t"
                "add r0, r6, r5\n\t"
                "lsl r0, #3\n\t"
                "sub r0, #0xa"
                : "=r"(offset), "=r"(x)
                : "r"(selected));
            Func_80a1ac0(x, 0x10);
        }
    }

    {
        register int unitId asm("r0");
        asm volatile(
            "mov r5, #0x82\n\t"
            "lsl r5, #2\n\t"
            "add r3, r6, r5\n\t"
            "ldrh r0, [r7, r3]"
            : "=r"(unitId), "=r"(selected)
            : "r"(state), "r"(offset)
            : "r3");
        unit = _GetUnit(unitId);
    }
    asm volatile(
        "mov r1, #0xe4\n\t"
        "lsl r1, #1\n\t"
        "add r6, r7, r1"
        : "=r"(offset)
        : "r"(state)
        : "r1");
    {
        register int display asm("r0") = Func_80a3ddc(unit, (void *)offset, 0);
        asm volatile(
            "mov r2, #0x86\n\t"
            "lsl r2, #2\n\t"
            "add r3, r7, r2\n\t"
            "add r5, r7, r5\n\t"
            "strb r0, [r3]"
            : "+r"(selected)
            : "r"(state), "r"(display)
            : "r2", "r3", "memory");
    }
    {
        register void *unitsArg asm("r0");
        register void *dataArg asm("r1");
        register int callResult asm("r0");
        asm volatile(
            "mov r1, r6\n\t"
            "mov r0, r5"
            : "=r"(unitsArg), "=r"(dataArg)
            : "r"(selected), "r"(offset));
        callResult = Func_80a35f8(unitsArg, dataArg);
        asm volatile(
            "mov r1, r10\n\t"
            "lsl r3, r1, #2\n\t"
            "add r3, #0x14\n\t"
            "mov r8, r0\n\t"
            "ldr r0, [r7, r3]"
            : "=r"(object), "=r"(result)
            : "r"(slotIndex), "r"(state), "r"(callResult)
            : "r1", "r3");
    }
    Func_80a17c4(object);
    WaitFrames(1);
    return result;
}
