typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern volatile u32 iwram_3001e40[];
extern u32 __Random(void);
extern void OvlFunc_common0_10c(s32 x, s32 y, s32 z, s32 arg3,
                                 s32 arg4, s32 arg5, s32 arg6, void *config);

void OvlFunc_924_200bb24(s32 x0, s32 y0, s32 z0)
{
    register u32 raw asm("r8") = iwram_3001e40[0];
    register s32 z asm("r11") = z0;
    register u32 mask asm("r8") = raw & 3;
    register s32 x asm("r10") = x0;
    register s32 y asm("r9") = y0;
    u8 buffer[0x28];

    if (mask == 0) {
        register u8 *work asm("r7") = buffer;
        register s32 v1 asm("r5");
        s32 v2;
        register s32 negOffset asm("r6");

        *(s32 *)(work + 4) = 7;
        if (((__Random() << 1) >> 16 & 1) == 0) {
            *(s32 *)(work + 4) = 5;
        }
        *(s32 *)(work + 8) = 0xb333;
        *(s32 *)(work + 0xc) = 0xb333;

        v1 = ((__Random() << 3) >> 16) * 0x3333;
        negOffset = 0xffff3334;
        v2 = ((__Random() << 3) >> 16) * 0x3333;
        v2 += negOffset;
        v1 += negOffset;

        OvlFunc_common0_10c(x, y, z, v1, v2, mask, 0x90000, work);
    }
}
