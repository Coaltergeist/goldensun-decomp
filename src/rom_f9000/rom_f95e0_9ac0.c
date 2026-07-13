typedef unsigned char u8;
typedef unsigned int u32;

void ply_goto(void *mplay, u8 *track)
{
    register u32 address asm("r0");
    register u8 *track_reg asm("r1") = track;
    register u8 *source asm("r2");
    register u32 low_byte asm("r3");

    asm volatile (
        ".hword 0xb500\n"
        ".LM4aPlyGotoRead:");
    source = *(u8 **)(track_reg + 0x40);
    address = source[3];
    address <<= 8;
    asm volatile ("" : "+r" (address));
    address |= source[2];
    address <<= 8;
    asm volatile ("" : "+r" (address));
    address |= source[1];
    address <<= 8;
    asm volatile (
        "bl Func_80f9a98"
        : "+r" (address), "=r" (low_byte)
        : "r" (track_reg), "r" (source));
    address |= low_byte;
    *(u32 *)(track_reg + 0x40) = address;

    asm volatile (
        ".macro bx target\n\t"
        ".hword 0xbc01\n\t"
        ".hword 0x4700\n\t"
        ".endm");
}
