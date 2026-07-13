typedef unsigned char u8;

void Func_80929d8(u8 *actor, unsigned int value)
{
    if ((actor[0x54] & 0xf) == 1) {
        register u8 *object asm("r12") = *(u8 **)(actor + 0x50);
        register unsigned int count asm("r3") = object[0x27];

        asm("" : "+r"(count));
        if (count != 0) {
            register u8 **entry asm("r4") = (u8 **)(object + 0x28);
            register unsigned int remaining asm("r0") = count;

            do {
                u8 *part = *entry++;

                if (part != 0 && *(int *)(part + 0x10) != 0)
                    part[5] = value;
                remaining--;
            } while (remaining != 0);
        }
        object[0x25] = 1;
    }
}
