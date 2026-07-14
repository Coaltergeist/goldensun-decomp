extern unsigned int iwram_3001e40;
extern unsigned char *__CreateActor(int actor, int x, int y, int z);
extern void __Actor_SetAnim(unsigned char *actor, int animation);
extern void OvlFunc_931_2008c0c(unsigned char *actor);
extern void OvlFunc_931_2008c44(void);

void OvlFunc_931_2008d08(void)
{
    unsigned int state = iwram_3001e40 & 3;

    if (state == 0) {
        unsigned char *actor;

        {
            register int actorId asm("r0");
            register int x asm("r1");
            register int y asm("r2");
            register int z asm("r3");

            x = 0x80;
            asm volatile("" : "+r"(x));
            z = 0xc8;
            asm volatile("" : "+r"(x), "+r"(z));
            actorId = 0xde;
            asm volatile("" : "+r"(actorId), "+r"(x), "+r"(z));
            x <<= 15;
            y = 0;
            asm volatile("" : "+r"(actorId), "+r"(x), "+r"(y), "+r"(z));
            z <<= 17;
            actor = __CreateActor(actorId, x, y, z);
        }

        if (actor != 0) {
            register unsigned char *field asm("r3") = actor;
            register unsigned int value asm("r2");

            asm volatile("" : "+r"(field));
            value = 0x14;
            asm volatile("" : "+r"(field), "+r"(value));
            field += 0x64;
            asm volatile("" : "+r"(field), "+r"(value));
            *(unsigned short *)field = (unsigned short)value;
            field += 2;
            asm volatile("" : "+r"(field), "+r"(value));
            *(unsigned short *)field = (unsigned short)state;
            *(unsigned int *)(actor + 0x68) = value;

            OvlFunc_931_2008c0c(actor);
            *(void (**)(void))(actor + 0x6c) = OvlFunc_931_2008c44;
            __Actor_SetAnim(actor, 1);
        }
    }
}
