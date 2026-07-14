typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;

extern u8 *_GetUnit(int unit_id);
extern void _CreateBattleSpriteOverlays(u16 *units, int mode);

void Func_80d6750(u8 *actor)
{
    register int state_offset asm("r1") = 0x24;
    register int state asm("r3") = *(s16 *)(actor + state_offset);
    register int count asm("r2") = 0;
    register u16 *units asm("r8");
    register int index asm("r6");
    int saved_count;
    u16 unit_list[14];

    asm volatile("" : "+r"(state_offset));
    if (state > 0x7f) {
        register u16 *output asm("r7");
        units = unit_list;
        asm volatile("" : "+r"(units));
        index = 0;
        asm volatile("" : "+r"(index));
        output = units;
        do {
            register int unit_id asm("r5") = index + 0x80;
            register u8 *unit asm("r0");
            register int hp_offset asm("r1");
            register int hp asm("r3");
            register int call_unit asm("r0") = unit_id;
            asm volatile("" : "+r"(call_unit));
            saved_count = count;
            asm volatile("" : "+m"(saved_count));
            unit = _GetUnit(call_unit);
            hp_offset = 0x38;
            asm volatile("" : "+r"(hp_offset), "+r"(unit));
            hp = *(s16 *)(unit + hp_offset);
            count = saved_count;
            if (hp > 0) {
                *output = unit_id;
                count++;
                output++;
            }
            index++;
        } while (index != 6);
    } else {
        register u16 *output asm("r5");
        register u16 *units_copy asm("r1");
        register int output_offset asm("r3");
        units = unit_list;
        asm volatile("" : "+r"(units));
        units_copy = units;
        output_offset = count;
        output_offset <<= 1;
        index = 0;
        asm volatile("" : "+r"(units_copy), "+r"(output_offset), "+r"(index));
        output = (u16 *)(output_offset + (int)units_copy);
        do {
            register u8 *unit asm("r0");
            register int hp_offset asm("r1");
            register int hp asm("r3");
            register int call_unit asm("r0") = index;
            asm volatile("" : "+r"(call_unit));
            saved_count = count;
            asm volatile("" : "+m"(saved_count));
            unit = _GetUnit(call_unit);
            hp_offset = 0x38;
            asm volatile("" : "+r"(hp_offset), "+r"(unit));
            hp = *(s16 *)(unit + hp_offset);
            count = saved_count;
            if (hp > 0) {
                *output = index;
                count++;
                output++;
            }
            index++;
        } while (index != 8);
    }

    {
        register int byte_offset asm("r2") = count;
        register u16 *base asm("r1");
        asm volatile("" : "+r"(byte_offset));
        byte_offset <<= 1;
        base = units;
        *(u16 *)((u8 *)base + byte_offset) = 0xff;
        asm volatile("" ::: "memory");
    }
    _CreateBattleSpriteOverlays(units, 0);
}
