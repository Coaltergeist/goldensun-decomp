extern volatile unsigned int iwram_3001e40[];
extern unsigned char Data_1740[] asm(".L1740");
extern unsigned char *__MapActor_GetActor(int actor);
extern void OvlFunc_common0_10c(int arg0, int arg1, int arg2, int arg3,
                               int arg4, int arg5, int arg6, void *arg7);

void OvlFunc_928_2008370(void)
{
    unsigned char local[0x28];
    register unsigned char *result asm("r0");
    register unsigned char *actor asm("r5");
    register unsigned int phase asm("r3");
    register unsigned int mask asm("r2");

    result = __MapActor_GetActor(0xe);
    phase = iwram_3001e40[0];
    asm volatile("" : "+r"(result), "+r"(phase));
    mask = 3;
    asm volatile("" : "+r"(result), "+r"(phase), "+r"(mask));
    phase &= mask;
    actor = result;
    asm volatile("" : "+r"(actor), "+r"(phase));
    if (phase == 0) {
        register unsigned char *work asm("r4") = local;
        register int arg0 asm("r0");
        register int arg1 asm("r1");
        register int arg2 asm("r2");
        register int arg3 asm("r3");

        *(int *)(work + 0) = 1;
        *(int *)(work + 4) = 9;
        arg3 = 0xa9;
        asm volatile("" : "+r"(arg3), "+r"(work));
        *(unsigned short *)(work + 0x18) = arg3;
        *(void **)(work + 0x1c) = Data_1740;
        arg2 = *(int *)(actor + 0x10);
        arg3 = 0xffff0000;
        asm volatile("" : "+r"(arg2), "+r"(arg3), "+r"(work));
        arg0 = *(int *)(actor + 8);
        arg1 = *(int *)(actor + 0xc);
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3), "+r"(work));
        arg2 += arg3;
        OvlFunc_common0_10c(arg0, arg1, arg2, 0,
                            arg3, arg3, 0xcc << 14, work);
    }
}
