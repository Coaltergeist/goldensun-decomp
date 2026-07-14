extern unsigned char *__MapActor_GetActor(int actor_id);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern int OvlFunc_947_2009268(void);
extern void OvlFunc_947_20083a8(void);
extern void OvlFunc_947_2009d84(void);

void OvlFunc_947_2009fd4(void)
{
    __CutsceneStart();
    if (OvlFunc_947_2009268() == 0) {
        register unsigned int mask asm("r5");

        {
            register unsigned char *field asm("r0") = __MapActor_GetActor(0);
            register unsigned int value asm("r2");
            register unsigned int temp asm("r3");

            field += 0x55;
            value = *field;
            mask = 0xfe;
            asm volatile("" : "+r"(field), "+r"(value), "+r"(mask));
            temp = mask;
            temp &= value;
            *field = temp;
        }
        {
            register unsigned char *field asm("r0") = __MapActor_GetActor(0);
            register unsigned int temp asm("r3");

            field += 0x23;
            temp = *field;
            asm volatile("" : "+r"(field), "+r"(temp), "+r"(mask));
            mask &= temp;
            *field = mask;
        }

        OvlFunc_947_20083a8();
        OvlFunc_947_2009d84();

        {
            register unsigned char *field asm("r0") = __MapActor_GetActor(0);
            register unsigned int temp asm("r3");

            field += 0x55;
            temp = *field;
            mask = 1;
            asm volatile("" : "+r"(field), "+r"(temp), "+r"(mask));
            temp |= mask;
            *field = temp;
        }
        {
            register unsigned char *field asm("r0") = __MapActor_GetActor(0);
            register unsigned int temp asm("r3");

            field += 0x23;
            temp = *field;
            asm volatile("" : "+r"(field), "+r"(temp), "+r"(mask));
            mask |= temp;
            *field = mask;
        }
    }
    __CutsceneEnd();
}
