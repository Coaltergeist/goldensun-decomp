typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern u8 *__CreateActor(int type, int x, int y, int z);
extern u8 *__galloc_iwram(int index, int size);
extern void __LoadItemIcon(int item);
extern u32 __UploadSpriteGFX(u32 slot, int size, const void *gfx);
extern void __gfree(int index);

extern u8 *OvlData_945_200e968 asm(".L6968");

#define FORCE(name, value) \
    register int name asm("r0") = (value); \
    asm volatile("" : "+r"(name))

u8 *OvlFunc_945_200c5d0(void)
{
    int state;
    u8 *actor;
    u8 *sub;
    u8 *buffer;

    { FORCE(flag, 0x200); state = __GetFlag(flag); }
    if (state != 0)
        return OvlData_945_200e968;

    actor = __CreateActor(0x16, 0x1c70000, 0x40000, 0x2200000);
    actor[0x55] = state;
    actor[0x5c] = 1;
    sub = *(u8 **)(actor + 0x50);
    sub[0x27] = state;
    {
        int mask;
        mask = -0x21;
        sub[5] &= mask;
    }
    sub[9] &= 0xf;
    buffer = __galloc_iwram(0x11, 0xc1 << 3);
    __LoadItemIcon(0xe8);
    {
        void *gfx = buffer + 0x400;
        asm volatile("" : "+r"(gfx));
        __UploadSpriteGFX(sub[0x1c], 0x80, gfx);
    }
    __gfree(0x11);
    { FORCE(flag, 0x200); __SetFlag(flag); }
    OvlData_945_200e968 = actor;
    return actor;
}
