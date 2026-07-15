typedef unsigned char u8;
typedef signed char s8;
typedef unsigned int u32;
typedef int s32;

extern u32 __Random(void);
extern void __vec3_translate(u32 a, u32 b, u32 *v);
extern u32 __Func_809ba34(u8 *entry);
extern void __Func_809bb34(u8 *entry);
extern void __PlaySound(int sound);
extern s32 iwram_3001800;

void OvlFunc_957_200ba30(u8 *entry)
{
    s8 state;
    u32 x;
    u32 z;

    state = *(s8 *)(entry + 0x40);
    if (state == 0) {
        u32 v[3];

        z = *(u32 *)(entry + 0x18);
        x = *(u32 *)(entry + 0x14);
        *(u32 *)(entry + 8) = z;
        v[2] = z;
        *(u32 *)(entry + 4) = x;
        v[0] = x;
        __vec3_translate(0x780000, __Random(), v);
        *(u32 *)(entry + 0xc) = v[0];
        *(u32 *)(entry + 0x10) = v[2];
        *(u32 *)(entry + 0x24) = 0x50000;
        *(u32 *)(entry + 0x20) = 0x50000;
        entry[0x42] = 0;
        entry[0x40]++;
        if ((iwram_3001800 & 3) == 0)
            __PlaySound(0x86);
    } else if (state == 1) {
        if (__Func_809ba34(entry) == 0)
            (*(s8 *)(entry + 0x40))--;
    } else if (state == 2) {
        if (__Func_809ba34(entry) == 0)
            __Func_809bb34(entry);
    }
}
