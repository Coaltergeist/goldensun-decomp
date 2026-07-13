extern unsigned char *iwram_3001f30;
extern void __Func_8096fb0(int value, int arg);
extern void __Func_80970f8(int value, int arg);
extern void __Func_809728c(void);
extern void __FieldMove(int direction);
extern void __Func_8097174(void);

void OvlFunc_903_2008d68(void)
{
    unsigned char *state = iwram_3001f30;
    register int arg __asm__("r1");
    register int value __asm__("r0");
    register unsigned int flags __asm__("r2");
    register unsigned int bit __asm__("r3");

    __Func_8096fb0(0x4e, 1);
    arg = 0xf;
    value = 2;
    __asm__ volatile ("" : : "r" (arg), "r" (value));
    __Func_80970f8(value, arg);
    state += 0x71c;
    flags = *state;
    bit = 8;
    /* Preserve the original call and byte-update register allocation. */
    __asm__ volatile ("" : "+r" (flags), "+r" (bit));
    bit |= flags;
    *state = bit;
    __Func_809728c();
    __FieldMove(1);
    __Func_8097174();
}
