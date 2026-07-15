typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

typedef struct {
    u16 unit_id;
    u16 unused02;
    u16 value;
    u16 mode;
    u16 zero;
    u16 duration;
    u32 unused0c;
} UnitEntry;

extern void *Func_8004970(int kind);
extern int Func_80b6b40(int kind, u16 *units);
extern u8 *_GetUnit(int unit_id);
extern int _Func_8027114(UnitEntry *entries, u16 *units, int count);
extern void free(void *memory);

int Func_80b920c(UnitEntry *entries)
{
    u32 *state_flags;
    u16 *filtered = Func_8004970(0x11);
    u16 *units = Func_8004970(9);
    register int initial_count asm("r5") = Func_80b6b40(1, units);
    register int zero asm("r2") = 0;
    register int remaining asm("r10");
    register int entry_count asm("r8") = zero;
    register int filtered_count asm("r9") = zero;
    register u16 *unit_id asm("r6");

    if (entry_count < initial_count) {
        unit_id = units;
        remaining = initial_count;
        do {
            register u8 *unit asm("r0") = _GetUnit(*unit_id);
            register int i asm("r5");
            register u8 *repeat_temp asm("r3");
            register u8 *repeat_count asm("r12");
            register int repeat_value asm("r3");
            asm volatile("mov r3, #0x43\n\tadd r3, r0"
                         : "=r"(repeat_temp)
                         : "r"(unit));
            repeat_count = repeat_temp;
            repeat_value = *repeat_temp;
            i = 0;
            if (i < repeat_value) {
                register u8 *state_byte asm("r14");
                register u16 *filtered_out asm("r1");
                register UnitEntry *entry_out asm("r2");
                register u16 *current_id asm("r4");
                register int work asm("r11");
                register int temporary asm("r7");
                register int offset asm("r3");
                register int flags_offset asm("r2");
                register u16 *filtered_base asm("r2");

                temporary = 0x9e;
                flags_offset = 0x9c;
                asm volatile("" : "+r"(temporary), "+r"(flags_offset));
                temporary <<= 1;
                asm volatile("" : "+r"(temporary), "+r"(flags_offset));
                flags_offset <<= 1;
                temporary += (int)unit;
                asm volatile("" : "+r"(temporary), "+r"(flags_offset));
                asm volatile("add r2, r0, r2"
                             : "+r"(flags_offset)
                             : "r"(unit));
                state_byte = (u8 *)temporary;
                state_flags = (u32 *)flags_offset;
                asm volatile("" : : : "memory");
                asm volatile("mov r7, r9\n\t"
                             "ldr r2, [sp, #8]\n\t"
                             "lsl r3, r7, #1\n\t"
                             "add r1, r3, r2"
                             : "=r"(filtered_out), "=r"(temporary),
                               "=r"(filtered_base), "=r"(offset));
                asm volatile("mov r3, r8\n\t"
                             "lsl r3, r3, #4\n\t"
                             "ldr r2, [sp, #12]"
                             : "=r"(offset), "=r"(entry_out));
                temporary = 0xffffff00;
                asm volatile("mov r11, r3\n\t"
                             "add r2, r11\n\t"
                             "mov r4, r6"
                             : "=r"(work), "+r"(entry_out),
                               "=r"(current_id)
                             : "r"(offset), "r"(unit_id));
                work = temporary;
                do {
                    register u8 *state_read asm("r7") = state_byte;
                    if (*state_read != 0 || (*state_flags & work) != 0) {
                        register int mode asm("r3");
                        entry_out->unit_id = *current_id;
                        entry_out->value = *(u16 *)(unit + 0x40);
                        mode = 8;
                        entry_out->mode = mode;
                        entry_out->zero = 0;
                        asm volatile("" : : : "memory");
                        entry_out->duration = 0x180;
                        entry_count++;
                        entry_out++;
                    } else {
                        register int increment asm("r3");
                        *filtered_out = *current_id;
                        asm volatile("" : : : "memory");
                        increment = 1;
                        filtered_out++;
                        filtered_count += increment;
                    }
                    i++;
                    {
                        register u8 *repeat_read asm("r7") = repeat_count;
                        register int repeat_check asm("r3") = *repeat_read;
                        if (i >= repeat_check)
                            break;
                    }
                } while (1);
            }
            {
                register int decrement asm("r2");
                register int remaining_check asm("r3");
                asm volatile("mov r2, #1\n\tneg r2, r2"
                             : "=r"(decrement));
                remaining += decrement;
                asm volatile("mov r3, r10"
                             : "=r"(remaining_check)
                             : "r"(remaining));
                unit_id++;
                if (remaining_check == 0)
                    break;
            }
        } while (1);
    }

    {
        register UnitEntry *entry_pointer asm("r2") = entries;
        register int count_copy asm("r7") = entry_count;
        register int entry_offset asm("r3") = count_copy << 4;
        int selected;
        int result;
        entry_pointer = (UnitEntry *)((u8 *)entry_pointer + entry_offset);
        entries = entry_pointer;
        selected = _Func_8027114(entries, filtered, filtered_count);
        result = -1;
        if (selected >= 0)
            result = entry_count + selected;
        free(units);
        free(filtered);
        return result;
    }
}
