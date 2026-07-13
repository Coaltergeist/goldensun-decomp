typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001e8c;

void SetTextColor(int color)
{
    register u8 **global asm("r3");
    register unsigned int mask asm("r2");
    register u8 *state asm("r3");
    register unsigned int offset asm("r2");

    asm("ldr %0, SetTextColor_Global" : "=r"(global));
    asm("ldr %0, SetTextColor_Mask" : "=r"(mask));
    state = *global;
    color &= mask;
    asm("ldr %0, SetTextColor_Offset" : "=r"(offset));
    state += offset;
    asm("" : "+r"(state));
    *(u16 *)state = color;
}

asm(".align 2, 0\n"
    "SetTextColor_Mask:\n"
    ".word 0xf\n"
    "SetTextColor_Global:\n"
    ".word iwram_3001e8c\n"
    "SetTextColor_Offset:\n"
    ".word 0xeae");
