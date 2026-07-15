typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u16 *iwram_3001ebc;
extern u8 gState[];
extern volatile u32 gKeyPress;
extern int Func_800ea60(u32 packed);

int Func_800eaf8(void)
{
    u16 *state;
    int result;

    state = iwram_3001ebc;
    result = 0;
    if (state == 0)
        return 0;
    {
        register u8 *base asm("r4") = gState;
        if (gKeyPress & *(u16 *)(base + 0x214)) {
            register int idx asm("r3") = 0xb9;
            goto merge;
        } else if (gKeyPress & *(u16 *)(base + 0x210)) {
            register int idx asm("r3") = 0xba;
            goto merge;
        } else if (gKeyPress & *(u16 *)(base + 0x216)) {
            register int idx asm("r3") = 0xbb;
        merge:
            asm volatile(
                "lsl r3, r3, #1\n\t"
                "add r2, r1, r3\n\t"
                "mov r3, #1\n\t"
                "strh r3, [r2]\n\t"
                : : "r"(idx), "r"(state) : "r2", "r3");
            result = 1;
        } else if (gKeyPress & *(u16 *)(base + 0x218)) {
            register u8 *addr asm("r3") = base + 0x220;
            result = Func_800ea60(*(u16 *)addr);
        } else if (gKeyPress & *(u16 *)(base + 0x21a)) {
            register u8 *addr asm("r3") = base + 0x222;
            result = Func_800ea60(*(u16 *)addr);
        }
    }
    return result;
}
