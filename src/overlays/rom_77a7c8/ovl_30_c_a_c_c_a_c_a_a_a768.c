typedef signed short s16;
typedef unsigned short u16;
typedef unsigned int u32;

extern unsigned char gOvl_0200e3f4[];
extern void OvlFunc_881_200a858(void);
extern unsigned char event_table[] asm(".L5b84");

void OvlFunc_881_200a768(void)
{
    register unsigned char *base asm("r4") = gOvl_0200e3f4;
    register void (*callback)(void) asm("r6") = OvlFunc_881_200a858;
    register unsigned char *cursor asm("r0") = base;
    register int replacement asm("r7") = 2;
    register unsigned char *saved_base asm("r12") = base;
    register int id_offset asm("r1") = 4;
    register int offset asm("r2") = 0;
    register int terminator asm("r14") = -1;
    register int callback_offset asm("r3");

    asm volatile("" : "+r"(base), "+r"(callback), "+r"(cursor),
                           "+r"(replacement));
    asm volatile("" : "+r"(saved_base), "+r"(id_offset),
                           "+r"(offset), "+r"(terminator));

    for (;;) {
        if (*(volatile int *)(offset + (int)base) == 1 &&
            *(s16 *)(cursor + id_offset) == 0x8a) {
            callback_offset = id_offset + 4;
            *(int *)(cursor + offset) = replacement;
            *(void (**)(void))(cursor + callback_offset) = callback;
            cursor = saved_base;
        }
        if (*(volatile int *)(offset + (int)base) == terminator)
            goto scan_table;
        id_offset += 12;
        offset += 12;
        asm volatile("" ::: "memory");
    }

scan_table:
    {
        register unsigned char *table asm("r0") = event_table;
        register u32 flags asm("r6") = 0x3000;
        register unsigned char *output asm("r2") = table + 8;
        register u32 value0 asm("r4") = 0x17940000;
        register u32 value1 asm("r5") = 0x0d480000;
        register int scan asm("r1") = 0;

        for (;;) {
            if (*(s16 *)(scan + (int)table) == 0x39) {
                *(u32 *)output = value0;
                *(u32 *)(output + 8) = value1;
                *(u16 *)(output + 12) = flags;
                return;
            }
            output += 24;
            scan += 24;
        }
    }
}
