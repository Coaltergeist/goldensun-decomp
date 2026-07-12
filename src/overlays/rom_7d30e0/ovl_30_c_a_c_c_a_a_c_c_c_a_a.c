extern unsigned char iwram_3001ebc[];

extern void OvlFunc_948_20090b8(int arg0);
extern unsigned char *__MapActor_GetActor(int arg0);
extern void __Func_8093c00(void);

void OvlFunc_948_2009120(void)
{
    register unsigned char *field asm("r5");
    register unsigned int r0 asm("r0");
    register unsigned int r2 asm("r2");
    register int r3 asm("r3");

    OvlFunc_948_20090b8(2);
    r0 = (unsigned int)__MapActor_GetActor(0);
    r2 = 0x80;
    r3 = *(unsigned short *)(r0 + 6);
    r2 <<= 7;
    if (r3 == r2) {
        r3 = (unsigned int)iwram_3001ebc;
        r2 = 0xce;
        asm volatile("" : "+r"(r2), "+r"(r3));
        r3 = *(unsigned int *)r3;
        r2 <<= 1;
        field = (unsigned char *)(r3 + r2);
        r2 = 0;
        r3 = *(short *)(field + r2);
        if (r3 > 0xc) {
            __Func_8093c00();
            r3 = 0;
            *(unsigned short *)field = r3;
        }
    }
}

void OvlFunc_948_200915c(void)
{
    register unsigned char *field asm("r5");
    register unsigned int r0 asm("r0");
    register unsigned int r2 asm("r2");
    register int r3 asm("r3");

    OvlFunc_948_20090b8(3);
    r0 = (unsigned int)__MapActor_GetActor(0);
    r2 = 0x80;
    r3 = *(unsigned short *)(r0 + 6);
    r2 <<= 7;
    if (r3 == r2) {
        r3 = (unsigned int)iwram_3001ebc;
        r2 = 0xce;
        asm volatile("" : "+r"(r2), "+r"(r3));
        r3 = *(unsigned int *)r3;
        r2 <<= 1;
        field = (unsigned char *)(r3 + r2);
        r2 = 0;
        r3 = *(short *)(field + r2);
        if (r3 > 0xc) {
            __Func_8093c00();
            r3 = 0;
            *(unsigned short *)field = r3;
        }
    }
}
