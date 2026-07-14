typedef signed short s16;
typedef unsigned char u8;

extern u8 gState[];
extern void __SetFlag(int flag);
extern void OvlFunc_936_20096bc(void);
extern void OvlFunc_936_20097e8(void);
extern void OvlFunc_936_2009858(void);
extern void OvlFunc_936_20098a4(void);
extern void OvlFunc_936_2009930(void);

int OvlFunc_936_200964c(void)
{
    register u8 *base asm("r3");
    register int offset asm("r1");
    register int state asm("r2");
    register int match asm("r3");

    __SetFlag(0x87a);
    base = gState;
    __asm__ volatile ("" : "+r" (base));
    offset = 0xe0;
    offset <<= 1;
    __asm__ volatile ("" : "+r" (offset));
    base += offset;
    offset = 0;
    __asm__ volatile ("" : "+r" (base), "+r" (offset));
    state = *(s16 *)(base + offset);
    __asm__ volatile ("ldr r3, =0x63" : "=r" (match));
    if (state == match)
        OvlFunc_936_20096bc();
    else {
      __asm__ volatile ("ldr r3, =0x66" : "=r" (match));
      if (state == match)
        OvlFunc_936_20097e8();
      else {
       __asm__ volatile ("ldr r3, =0x99" : "=r" (match));
       if (state == match)
        OvlFunc_936_2009858();
       else {
        __asm__ volatile ("ldr r3, =0x9b" : "=r" (match));
        if (state == match)
        OvlFunc_936_20098a4();
        else {
         __asm__ volatile ("ldr r3, =0x9c" : "=r" (match));
         if (state == match)
        OvlFunc_936_2009930();
        }
       }
      }
    }
    return 0;
}
