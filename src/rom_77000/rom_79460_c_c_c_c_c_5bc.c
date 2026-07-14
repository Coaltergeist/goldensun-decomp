typedef unsigned char u8;
typedef unsigned short u16;

extern int Func_80796c4(u16 *units);
extern u8 *GetUnit(int unit);
extern u8 *GetUnit_NoArgs(void) asm("GetUnit");

int GetNumDjinn(int element)
{
    u16 frame[18];
    u16 *units = frame + 2;
    register u16 *unit_id asm("r1");
    register int requested asm("r7");
    register int total asm("r5");
    register unsigned int work asm("r6");
    int count;

    work = (unsigned int)units;
    requested = element;
    total = 0;
    count = Func_80796c4((u16 *)work);

    if (total < count) {
        unit_id = (u16 *)work;
        work = count;
        do {
            register int unit_index asm("r0");
            register u8 *unit asm("r2");
            register int sentinel asm("r0");
            unsigned int value;

            asm volatile("ldrh r0, [r1]\n\t"
                         "add r1, r1, #2\n\t"
                         "str r1, [sp]"
                         : "=r"(unit_index), "+r"(unit_id));
            unit = GetUnit_NoArgs();
            asm volatile("mov r0, #1\n\t"
                         "neg r0, r0\n\t"
                         "ldr r1, [sp]"
                         : "=r"(sentinel), "=r"(unit_id));

            if (requested == sentinel) {
                asm volatile("mov r0, #140\n\t"
                             "lsl r0, r0, #1\n\t"
                             "add r3, r2, r0\n\t"
                             "ldrb r3, [r3]\n\t"
                             "add r0, r0, #1\n\t"
                             "add r5, r5, r3\n\t"
                             "add r3, r2, r0\n\t"
                             "ldrb r3, [r3]\n\t"
                             "add r0, r0, #1\n\t"
                             "add r5, r5, r3\n\t"
                             "add r3, r2, r0\n\t"
                             "ldrb r3, [r3]\n\t"
                             "add r0, r0, #1\n\t"
                             "add r5, r5, r3\n\t"
                             "add r3, r2, r0\n\t"
                             "ldrb r3, [r3]"
                             : "=r"(value), "+r"(total)
                             : "r"(unit) : "r0");
            } else {
                asm volatile("mov r0, #140\n\t"
                             "lsl r0, r0, #1\n\t"
                             "add r3, r7, r0\n\t"
                             "ldrb r3, [r2, r3]"
                             : "=r"(value)
                             : "r"(unit), "r"(requested) : "r0");
            }
            asm volatile("add r5, r5, r3\n\tsub r6, r6, #1"
                         : "+r"(total), "+r"(work) : "r"(value));
        } while (work != 0);
    }
    return total;
}
