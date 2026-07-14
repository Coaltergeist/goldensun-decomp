typedef unsigned char u8;

extern volatile unsigned int iwram_3001e40;
extern unsigned char Data_9ed80[] asm(".L9ed80");

void Func_8092980(u8 *actor)
{
    if ((actor[0x54] & 0xf) == 1) {
        register u8 *object asm("r12") = *(u8 **)(actor + 0x50);
        register u8 value asm("r4") = Data_9ed80[(iwram_3001e40 >> 1) & 3];
        register unsigned int count asm("r3") = object[0x27];

        asm("" : "+r"(count));
        if (count != 0) {
            register u8 **entry asm("r0") = (u8 **)(object + 0x28);
            register unsigned int remaining asm("r1") = count;

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
