typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;

struct Entry { u8 id; u8 angle; u8 pad[2]; };
extern u8 OvlData_899_200cf2c[] asm(".L4f2c");

void *OvlFunc_899_200c754(void *argument, u16 *angle_ptr)
{
    register int one asm("r2");
    register volatile struct Entry *entry asm("r0");
    register u16 *output asm("r6");
    register int selected_id asm("r12");
    register int current_value asm("r2");
    register int current asm("r14");
    register int selected_angle asm("r1");
    register int best_distance asm("r7");
    register unsigned int index asm("r5");

    one = 1; asm volatile("" : "+r" (one));
    output = angle_ptr; asm volatile("" : "+r" (output));
    selected_id = -one; asm volatile("" : "+r" (selected_id));
    current_value = *output; asm volatile("" : "+r" (current_value));
    best_distance = 0x80;
    {
        register int zero asm("r3") = 0;
        asm volatile("" : "+r" (best_distance), "+r" (zero));
        selected_angle = *(s16 *)((u8 *)output + zero);
    }
    entry = (struct Entry *)((u8 *)argument + 4);
    asm volatile("" : "+r" (selected_angle), "+r" (entry));
    best_distance <<= 8;
    index = 0;
    current = current_value;
    asm volatile("" : "+r" (best_distance), "+r" (index), "+r" (current));

    do {
        register unsigned int angle_byte asm("r3") = entry->angle;
        register unsigned int raw_angle asm("r4") = angle_byte << 24;
        int distance;
        asm volatile("" : "+r" (angle_byte), "+r" (raw_angle));
        distance = (s16)((raw_angle >> 16) - current);
        if (distance < 0) distance = -distance;
        if (entry->id != 0xff && distance < best_distance) {
            best_distance = distance;
            selected_id = entry->id;
            selected_angle = (int)raw_angle >> 16;
        }
        index++;
        entry++;
    } while (index <= 2);

    {
        register int minus_one asm("r2") = -1;
        register void *result asm("r0") = 0;
        asm volatile("" : "+r" (minus_one));
        asm volatile("" : "+r" (result));
        if (selected_id != minus_one) {
            register int selected_copy asm("r3") = selected_id;
            register u8 *base asm("r3");
            result = (void *)(selected_copy << 4);
            asm volatile("" : "+r" (result));
            base = OvlData_899_200cf2c;
            asm volatile("" : "+r" (base));
            *output = selected_angle;
            result = (u8 *)result + (unsigned int)base;
        }
        return result;
    }
}
