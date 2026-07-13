typedef unsigned char u8;
typedef signed short s16;
typedef unsigned int u32;

extern u8 *_GetSpriteInfo(int spriteId);
extern void *GetCachedSpriteGFX(int spriteId);

void InitSpriteLayer(u8 *layer)
{
    u8 *info;
    void *graphics;

    if (layer != 0) {
        info = _GetSpriteInfo(*(s16 *)layer);
        if (info[0] != 0) {
            register unsigned int infoByte asm("r3");
            register unsigned int zero asm("r2");

            graphics = *(void **)(info + 0xc);
            if (graphics == 0) {
                graphics = GetCachedSpriteGFX(*(s16 *)layer);
            }
            layer[4] = info[4];
            *(void **)(layer + 8) = graphics;
            *(u32 *)(layer + 0xc) = *(u32 *)(info + 0x10);
            infoByte = info[0xa];
            asm volatile("" : "+r"(infoByte));
            zero = 0;
            asm volatile("" : "+r"(zero));
            layer[7] = infoByte;
            layer[0x16] = 0xff;
            *(u32 *)(layer + 0x10) = zero;
            layer[0x14] = zero;
        }
    }
}
