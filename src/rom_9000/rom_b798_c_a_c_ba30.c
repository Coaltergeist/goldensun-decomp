typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef short s16;
typedef int s32;

extern u8 *_GetSpriteInfo(int spriteId);

int Sprite_SetAnim(u8 *sprite, u32 flags)
{
    u32 noReset = flags & 0x80;
    register int anim asm("r6") = flags & 0x7f;
    register int i asm("r1");

    if (sprite[0x24] != anim) {
        i = 0;
        goto test;
    loop:
        {
            int off = i * 4 + 0x28;
            u8 *layer = *(u8 **)(sprite + off);
            if (layer != 0 && *(u32 *)(layer + 0xc) != 0) {
                int iMemSlot;
                u8 *info;
                s16 spriteId = *(s16 *)layer;
                u8 threshold;
                asm volatile ("str %1, %0" : "=m"(iMemSlot) : "r"(i));
                info = _GetSpriteInfo(spriteId);
                threshold = info[5];
                asm volatile ("ldr %0, %1" : "=r"(i) : "m"(iMemSlot));
                if (anim < threshold) {
                    u32 frame = *(u32 *)(*(u32 *)(layer + 0xc) + anim * 4);
                    layer[4] = info[4];
                    *(u32 *)(layer + 0x10) = frame;
                    layer[0x15] = 0x10;
                    if (noReset == 0) {
                        layer[0x14] = 0;
                        *(u16 *)(layer + 2) = 0;
                    }
                    if (i == 0) {
                        sprite[0x23] = info[7];
                        sprite[0x22] = info[6];
                    }
                }
            }
        }
        i++;
    test:
        if (i < sprite[0x27])
            goto loop;
        sprite[0x24] = anim;
    }
    return 0;
}
