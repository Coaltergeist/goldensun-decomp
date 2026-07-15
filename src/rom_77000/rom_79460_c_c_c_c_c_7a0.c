typedef unsigned char u8;
typedef unsigned short u16;

extern u16 ewram_2001078[];
extern u8 gState[];
extern u8 *GetUnit(int unit_id);
extern void Func_8079ae8(int unit_id);
extern void CalcStats(int unit_id);
extern void ClearFlag(int flag);

void Func_807a7a0(void)
{
    register u16 *source asm("r5") = ewram_2001078;
    register unsigned int header asm("r12");
    register unsigned int signature asm("r1");
    register unsigned int loaded_header asm("r3") = *source;

    asm volatile("ldr r1, =0x6774\n\t"
                 "mov r12, r3\n\t"
                 "add r5, #2"
                 : "=r"(signature), "=r"(header), "+r"(source)
                 : "r"(loaded_header));
    if (header == signature) {
        register int unit_id asm("r6") = 0;
        do {
            register u16 *destination asm("r0") = (u16 *)(GetUnit(unit_id) + 0xd8);
            register int remaining asm("r2") = 14;
            do {
                *destination++ = *source++;
                remaining--;
            } while (remaining >= 0);
            Func_8079ae8(unit_id);
            CalcStats(unit_id++);
        } while (unit_id <= 3);

        {
            register u8 *state asm("r0");
            register int offset asm("r4");
            register u16 value asm("r2");
            register u16 *destination asm("r3");
            asm volatile("ldr r0, =gState\n\t"
                         "mov r4, #0x88\n\t"
                         "ldrh r2, [r5]"
                         : "=r"(state), "=r"(offset), "=r"(value)
                         : "r"(source));
            offset <<= 2;
            destination = (u16 *)(state + offset);
            asm volatile("" : "+r"(destination));
            *destination = value;
            source++;
            asm volatile("ldrh r2, [r5]\n\t"
                         "add r4, #2"
                         : "=r"(value), "+r"(offset)
                         : "r"(source));
            destination = (u16 *)(state + offset);
            asm volatile("" : "+r"(destination));
            *destination = value;
            {
                register int third_offset asm("r3") = 0xfc;
                register u16 *third_destination asm("r2");
                register u16 third_value asm("r3");
                asm volatile("add r5, #2\n\t"
                             "lsl r3, r3, #1"
                             : "+r"(source), "+r"(third_offset));
                third_destination = (u16 *)(state + third_offset);
                asm volatile("" : "+r"(third_destination));
                third_value = *source;
                *third_destination = third_value;
            }
            offset -= 0x28;
            {
                register u16 fourth_value asm("r3") = source[1];
                register u16 *fourth_destination asm("r2");
                register int zero asm("r1");
                source = ewram_2001078;
                asm volatile("add r2, r0, r4\n\t"
                             "mov r1, #0"
                             : "=r"(fourth_destination), "=r"(zero)
                             : "r"(source), "r"(state), "r"(offset));
                *fourth_destination = fourth_value;
                {
                    register int flag asm("r0");
                    asm volatile("ldr r0, =0x952"
                                 : "=r"(flag));
                    *source = zero;
                    ClearFlag(flag);
                }
            }
        }
    }
}
