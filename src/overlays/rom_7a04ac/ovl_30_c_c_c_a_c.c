extern unsigned int iwram_3001e40;
extern unsigned int l3398 asm(".L3398");
extern unsigned char gScript_913__0200b2d0[];

extern void __PlaySound(int sound);
extern unsigned char *__CreateActor(int type, int x, int y, int z);
extern void __Actor_SetAnim(unsigned char *actor, int anim);
extern void __Actor_TravelTo(unsigned char *actor, int x, int y, int z);
extern void __Actor_SetScript(unsigned char *actor, const void *script);

void OvlFunc_913_200a7c8(void)
{
    register unsigned char *actor asm("r5");
    register unsigned int random_bits asm("r6");
    register unsigned int r3 asm("r3");

    r3 = (unsigned int)&iwram_3001e40;
    random_bits = *(unsigned int *)r3;
    r3 = 7;
    random_bits &= r3;
    if (random_bits == 0) {
        r3 = (unsigned int)&l3398;
        r3 = *(unsigned int *)r3;
        if (r3 != 0)
            __PlaySound(0xc8);
        {
            register unsigned char *created asm("r0");
            register int r1 asm("r1");
            register int r2 asm("r2");
            register int call_r3 asm("r3");

            r1 = 0xe7;
            asm volatile("" : "+r"(r1));
            call_r3 = 0xe6;
            asm volatile("" : "+r"(r1), "+r"(call_r3));
            created = (unsigned char *)0x1a;
            asm volatile("" : "+r"(created), "+r"(r1), "+r"(call_r3));
            r1 <<= 16;
            asm volatile("" : "+r"(created), "+r"(r1), "+r"(call_r3));
            r2 = 0;
            asm volatile("" : "+r"(created), "+r"(r1), "+r"(r2), "+r"(call_r3));
            call_r3 <<= 17;
            asm volatile("" : "+r"(created), "+r"(r1), "+r"(r2), "+r"(call_r3));
            created = __CreateActor((int)created, r1, r2, call_r3);
            actor = created;
            if (actor == 0)
                return;
            {
                register unsigned char *sprite asm("r1");
                register unsigned int r2_value asm("r2");
                register unsigned int r3_value asm("r3");

                sprite = *(unsigned char **)(actor + 0x50);
                created += 0x23;
                r3_value = (unsigned int)sprite;
                r2_value = *created;
                r3_value += 0x26;
                *(unsigned char *)r3_value = random_bits;
                r3_value = 0xfe;
                r3_value &= r2_value;
                *created = r3_value;
                r2_value = sprite[9];
                asm volatile("" : "+r"(r2_value));
                r3_value = 0xd;
                r3_value = -r3_value;
                r3_value &= r2_value;
                r2_value = 4;
                r3_value |= r2_value;
                sprite[9] = r3_value;
            }
        }
        *(unsigned int *)(actor + 0x18) = 0x1999;
        r3 = 0x80;
        r3 <<= 12;
        *(unsigned int *)(actor + 0x30) = r3;
        *(unsigned int *)(actor + 0x34) = r3;
        {
            register unsigned char *field asm("r3") = actor;

            field += 0x55;
            *field = random_bits;
        }
        __Actor_SetAnim(actor, 2);
        {
            register unsigned char *r0 asm("r0");
            register int r1 asm("r1");
            register int r2 asm("r2");
            register int call_r3 asm("r3");

            r1 = 0xe7;
            asm volatile("" : "+r"(r1));
            call_r3 = 0x9c;
            asm volatile("" : "+r"(r1), "+r"(call_r3));
            r0 = actor;
            asm volatile("" : "+r"(r0), "+r"(r1), "+r"(call_r3));
            r1 <<= 16;
            asm volatile("" : "+r"(r0), "+r"(r1), "+r"(call_r3));
            r2 = 0;
            asm volatile("" : "+r"(r0), "+r"(r1), "+r"(r2), "+r"(call_r3));
            call_r3 <<= 18;
            asm volatile("" : "+r"(r0), "+r"(r1), "+r"(r2), "+r"(call_r3));
            __Actor_TravelTo(r0, r1, r2, call_r3);
        }
        __Actor_SetScript(actor, gScript_913__0200b2d0);
    }
}
