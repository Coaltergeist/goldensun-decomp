typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

typedef struct {
    u8 pad0[8];
    s32 unk8;
    u8 pad12[4];
    s32 unk10;
    u8 pad20[4];
    s32 unk18;
} Struct80a6a98;

extern u8 *iwram_3001f2c;
extern int _GetFlag(int flag);
extern void _ClearFlag(int flag);
extern void _Func_8016498(unsigned int box);
extern void WaitFrames(int frames);
extern void _Func_801e7c0(unsigned int text_id, unsigned int box, int x, int y);
extern void Func_80a2268(const u16 *box, int x, int y, int width, int height, int palette);

int Func_80a6a98(void *unused0, void *unused1, Struct80a6a98 *arg)
{
    u8 *state = iwram_3001f2c;
    s32 i;
    s32 y;
    s32 height;
    s32 offset;
    u16 *entry;

    arg->unk18 = arg->unk8 * 5 + arg->unk10;
    if (_GetFlag(0x151) == 0) {
        _Func_8016498(*(unsigned int *)(state + 0x2c));
        WaitFrames(1);
        offset = (arg->unk18 * 2) + 0x1c8;
        entry = (u16 *)(state + offset);
        if (*entry != 0) {
            register s32 mask asm("r0") = 0x1ff;
            register s32 base asm("r3") = 0x53a;
            asm volatile(
                "and r0, %2\n\t"
                "add r0, r0, r3\n\t"
                "ldr r1, [r7, #0x2c]\n\t"
                "mov r2, #0\n\t"
                "mov r3, #0\n\t"
                "bl _Func_801e7c0"
                : "+r"(mask)
                : "r"(base), "r"(*entry)
                : "r1", "r4", "lr", "cc", "memory");
        }
    } else {
        _ClearFlag(0x2ff);
    }

    i = 0;
    height = 1;
    y = 1;
    do {
        if (i == arg->unk10) {
            Func_80a2268(*(const u16 **)(state + 0x20), 0, y, 0xf, height, 0xe);
        } else {
            Func_80a2268(*(const u16 **)(state + 0x20), 0, y, 0xf, height, 0xf);
        }
        i++;
        y += 2;
    } while (i <= 4);
    WaitFrames(1);
    return 1;
}
