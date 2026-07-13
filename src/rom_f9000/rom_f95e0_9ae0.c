typedef unsigned char u8;
typedef unsigned int u32;

void ply_patt(void *mplay, u8 *track)
{
    register u8 *track_reg asm("r1") = track;
    register u32 count asm("r2") = track_reg[2];
    register u8 *slot asm("r3");

    asm volatile (
        "cmp r2, #3\n\t"
        "bcs .Lply_patt_full"
        : "+r" (count));
    count <<= 2;
    slot = track_reg + count;
    count = *(u32 *)(track_reg + 0x40);
    count += 4;
    *(u32 *)(slot + 0x44) = count;
    count = track_reg[2];
    count++;
    track_reg[2] = count;
    asm volatile (
        "b ply_goto\n"
        ".Lply_patt_full:\n\t"
        "b ply_fine\n\t"
        ".macro bx target\n\t"
        ".endm");
}
