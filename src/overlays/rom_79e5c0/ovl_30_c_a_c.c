extern unsigned int iwram_3001e40;
extern unsigned int L36a0 asm(".L36a0");
extern unsigned char gScript_911__0200b5d8[];
extern void __PlaySound(int sound);
extern unsigned char *__CreateActor(int actor, int x, int y, int z);
extern void __Actor_SetAnim(unsigned char *actor, int animation);
extern void __Actor_TravelTo(unsigned char *actor, int x, int y, int z);
extern void __Actor_SetScript(unsigned char *actor, void *script);

void OvlFunc_911_200a608(void)
{
    unsigned int state = iwram_3001e40 & 7;

    if (state == 0) {
        unsigned char *actor;

        if (L36a0 != 0)
            __PlaySound(0xc8);

        {
            register int actorId asm("r0");
            register int x asm("r1");
            register int y asm("r2");
            register int z asm("r3");

            x = 0xc4;
            asm volatile("" : "+r"(x));
            z = 0xd2;
            asm volatile("" : "+r"(x), "+r"(z));
            actorId = 0x1a;
            asm volatile("" : "+r"(actorId), "+r"(x), "+r"(z));
            x <<= 15;
            y = 0;
            asm volatile("" : "+r"(actorId), "+r"(x), "+r"(y), "+r"(z));
            z <<= 15;
            actor = __CreateActor(actorId, x, y, z);
        }
        if (actor != 0) {
            register unsigned char *sprite asm("r1") = *(unsigned char **)(actor + 0x50);
            register unsigned char *field asm("r0") = actor;
            register unsigned int value asm("r2");
            register unsigned int work asm("r3");

            field += 0x23;
            asm volatile("" : "+r"(field), "+r"(sprite));
            work = (unsigned int)sprite;
            asm volatile("" : "+r"(field), "+r"(sprite), "+r"(work));
            value = *field;
            asm volatile("" : "+r"(field), "+r"(sprite), "+r"(value), "+r"(work));
            work += 0x26;
            *(unsigned char *)work = state;
            work = 0xfe;
            work &= value;
            *field = work;

            value = sprite[9];
            asm volatile("" : "+r"(sprite), "+r"(value));
            work = 13;
            asm volatile("" : "+r"(sprite), "+r"(value), "+r"(work));
            work = -work;
            work &= value;
            value = 4;
            work |= value;
            sprite[9] = work;
            *(int *)(actor + 0x18) = 0x1999;
            *(int *)(actor + 0x30) = 0x80 << 12;
            *(int *)(actor + 0x34) = 0x80 << 12;
            actor[0x55] = state;
            __Actor_SetAnim(actor, 2);
            {
                register unsigned char *travelActor asm("r0");
                register int x asm("r1");
                register int y asm("r2");
                register int z asm("r3");

                x = 0xc4;
                asm volatile("" : "+r"(x));
                travelActor = actor;
                asm volatile("" : "+r"(travelActor), "+r"(x));
                x <<= 15;
                y = 0;
                asm volatile("" : "+r"(travelActor), "+r"(x), "+r"(y));
                z = 0x10d0000;
                asm volatile("" : "+r"(travelActor), "+r"(x), "+r"(y), "+r"(z));
                __Actor_TravelTo(travelActor, x, y, z);
            }
            __Actor_SetScript(actor, gScript_911__0200b5d8);
        }
    }
}
