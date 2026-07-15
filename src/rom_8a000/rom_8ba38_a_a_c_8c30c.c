typedef unsigned char u8;

extern u8 gState[];
extern void Func_8091220(int value, int mode);
extern void Func_8091254(int value);
extern void _PlaySound(int sound);
extern int _GetPartySize(void);
extern u8 *_GetUnit(int id);
extern void _ModifyHP(int id, int amount);

void Func_808c30c(int amount, int proportional)
{
    register int value asm("r5") = amount;
    register int scale asm("r8") = proportional;

    if (value < 0) {
        asm volatile("ldr r0, =0x1ff\n\tmov r1, #0\n\t"
                     "bl Func_8091220"
                     : : : "r0", "r1", "r2", "r3", "memory");
        Func_8091254(4);
        {
            register int threshold asm("r2");
            asm volatile("mov r2, #0xa\n\tneg r2, r2"
                         : "=r"(threshold));
            if (value < threshold)
                _PlaySound(0x86);
            else
                _PlaySound(0x85);
        }
    } else {
        _PlaySound(0x7e);
    }

    {
        register int partySize asm("r0") = _GetPartySize();
        if (partySize > 0) {
            register int remaining asm("r6");
            register u8 *member asm("r7");
            asm volatile("ldr r3, =gState\n\tmov r2, #0xfc\n\t"
                         "lsl r2, #1\n\tadd r7, r3, r2\n\tmov r6, r0"
                         : "=r"(member), "=r"(remaining)
                         : "r"(partySize) : "r2", "r3");
            do {
                u8 *unit = _GetUnit(*member);
                register int change asm("r1") = value;
                if (scale != 0) {
                    asm volatile("mov r2, #0x34\n\tldrsh r3, [r0, r2]\n\t"
                                 "mov r1, #0x64\n\tmov r0, r5\n\t"
                                 "mul r0, r3\n\tbl __divsi3\n\tmov r1, r0"
                                 : "=r"(change) : "r"(value)
                                 : "r0", "r2", "r3", "memory");
                    if (change == 0) {
                        change = value;
                        if (change < 0)
                            change = -change;
                    }
                }
                _ModifyHP(*member, change);
                member++;
                remaining--;
            } while (remaining != 0);
        }
    }
}
