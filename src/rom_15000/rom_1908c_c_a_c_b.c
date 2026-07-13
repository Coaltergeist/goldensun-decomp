typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 *iwram_3001e8c;

void Func_80198dc(void)
{
    register u8 *cursor asm("r3") = iwram_3001e8c;
    register int offset asm("r4") = 0x12dc;
    register u16 *halfwords asm("r2");
    register int count asm("r1") = 0;
    register int zero asm("r0") = 0;

    halfwords = (u16 *)(cursor + offset);
    offset -= 0x20;
    cursor += offset;

    do {
        count++;
        *(volatile u32 *)cursor = zero;
        cursor += 4;
        *(volatile u16 *)halfwords = zero;
        halfwords++;
    } while (count != 8);
}
