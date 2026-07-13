typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;

extern u8 *iwram_3001ebc;
extern void Func_808e5d8(unsigned int eventId);

void Func_808e118(void)
{
    register u8 *cursor asm("r3") = iwram_3001ebc;
    register int offset asm("r2") = 0xcb6;
    register u16 *flag asm("r1");

    flag = (u16 *)(cursor + offset);
    offset = 0;
    *flag = offset;
    offset = 0xcb8;
    cursor += offset;
    offset = 0;
    if (*(s16 *)(cursor + offset) != 0)
        Func_808e5d8(0x2090);
}
