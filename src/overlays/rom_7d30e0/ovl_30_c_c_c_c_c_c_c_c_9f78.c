extern unsigned char *iwram_3001ebc;
extern unsigned char gState[];
extern unsigned char Value_1[] asm("0x75");
extern unsigned char Value_2[] asm("0x76");
extern unsigned char Value_3[] asm("0x78");

extern void OvlFunc_948_200a188(void);
extern void OvlFunc_948_200a290(void);
extern void OvlFunc_948_200a334(void);

int OvlFunc_948_2009f78(void)
{
    register unsigned int scratch3 asm("r3");
    register unsigned int scratch2 asm("r2");
    register unsigned int scratch1 asm("r1");
    register unsigned char *state asm("r5");

    scratch3 = (unsigned int)&iwram_3001ebc;
    asm volatile("" : "+r"(scratch3));
    scratch2 = 0xe0;
    asm volatile("" : "+r"(scratch2));
    scratch1 = *(unsigned int *)scratch3;
    asm volatile("" : "+r"(scratch1));
    scratch3 = 0x81;
    asm volatile("" : "+r"(scratch3));
    scratch2 <<= 1;
    asm volatile("" : "+r"(scratch2));
    scratch3 <<= 2;
    asm volatile("" : "+r"(scratch3));
    *(unsigned int *)(scratch1 + scratch2) = scratch3;

    scratch3 = (unsigned int)gState;
    asm volatile("" : "+r"(scratch3));
    state = (unsigned char *)(scratch3 + scratch2);
    asm volatile("" : "+r"(state));
    scratch3 = 0;
    asm volatile("" : "+r"(scratch3));
    scratch2 = *(short *)(state + scratch3);
    scratch3 = (unsigned int)Value_1;
    asm volatile("" : "+r"(scratch3));
    scratch1 = *(unsigned short *)state;
    asm volatile("" : "+r"(scratch1));
    if ((int)scratch2 == (int)scratch3) {
        OvlFunc_948_200a188();
        scratch1 = *(unsigned short *)state;
        asm volatile("" : "+r"(scratch1));
    }
    asm volatile("lsl %0, %1, #16" : "=r"(scratch3) : "r"(scratch1));
    scratch2 = (unsigned int)Value_2;
    asm volatile("" : "+r"(scratch2));
    asm volatile("asr %0, %0, #16" : "+r"(scratch3));
    if ((int)scratch3 == (int)scratch2) {
        OvlFunc_948_200a290();
        scratch1 = *(unsigned short *)state;
        asm volatile("" : "+r"(scratch1));
    }
    asm volatile("lsl %0, %1, #16" : "=r"(scratch3) : "r"(scratch1));
    scratch2 = (unsigned int)Value_3;
    asm volatile("" : "+r"(scratch2));
    asm volatile("asr %0, %0, #16" : "+r"(scratch3));
    if ((int)scratch3 == (int)scratch2) {
        OvlFunc_948_200a334();
    }
    return 0;
}
