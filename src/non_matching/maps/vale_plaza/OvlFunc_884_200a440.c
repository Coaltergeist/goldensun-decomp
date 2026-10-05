#include "sprite/slot.h"

extern unsigned char iwram_3001f30[];

extern struct SpriteSlot gSpriteSlots[96];

extern void OvlFunc_884_200a3ec(void);

extern void OvlFunc_884_200a39c(void);

void OvlFunc_884_200a440(unsigned int arg0)
{
    void *base;
    void *actors[2];
    int i;
    void *actor;
    void *sprite;

    base = *(void **)iwram_3001f30;
    __PlaySound(0x83);
    for (i = 0; i <= 1; i++) {
        actor = __CreateActor(0x1a, *(int *)((char *)arg0 + 8), *(int *)((char *)arg0 + 0xc), *(int *)((char *)arg0 + 0x10));
        actors[i] = actor;
        if (actor != 0) {
            *(unsigned int *)((char *)actor + 0x14) = *(unsigned int *)((char *)arg0 + 0x14);
            sprite = *(void **)((char *)actor + 0x50);
            *(unsigned char *)((char *)actor + 0x55) = 0;
            *(unsigned short *)((char *)actor + 0x64) = 0;
            *(unsigned int *)((char *)actor + 0x68) = arg0;
            if (sprite != 0) {
                unsigned char slotVal;
                __Sprite_SetAnim(sprite, 0);
                slotVal = 0;
                *(unsigned char *)((char *)sprite + 0x26) = slotVal;
                __Func_8003f3c(*(unsigned char *)((char *)sprite + 0x1c));
                *(unsigned char *)((char *)sprite + 0x1c) = *(unsigned short *)((char *)base + 0x46);
                *(unsigned char *)((char *)sprite + 0x1d) |= 1;
                {
                    unsigned char slot = *(unsigned char *)((char *)sprite + 0x1c);
                    unsigned short vram = *(unsigned short *)((char *)&gSpriteSlots[slot] + 2);
                    unsigned short v = *(unsigned short *)((char *)sprite + 8);
                    v = (v & 0xfc00) | (((unsigned int)vram << 17) >> 22);
                    *(unsigned short *)((char *)sprite + 8) = v;
                }
                {
                    unsigned char b5 = *(unsigned char *)((char *)sprite + 5);
                    b5 = (b5 & (unsigned char)~0x20 & 0x3f) | 0x40;
                    *(unsigned char *)((char *)sprite + 5) = b5;
                    {
                        unsigned char b7 = *(unsigned char *)((char *)sprite + 7);
                        b7 = (b7 & 0x3f) | 0x80;
                        *(unsigned char *)((char *)sprite + 7) = b7;
                    }
                }
                *(unsigned char *)((char *)(*(void **)((char *)sprite + 0x28)) + 0x16) = slotVal;
            }
        }
    }
    *(void (**)(void))((char *)actors[0] + 0x6c) = OvlFunc_884_200a3ec;
    *(unsigned char *)((char *)(*(void **)((char *)actors[0] + 0x50)) + 9) =
        (*(unsigned char *)((char *)(*(void **)((char *)actors[0] + 0x50)) + 9) & 0xf3) | 8;
    *(void (**)(void))((char *)actors[1] + 0x6c) = OvlFunc_884_200a39c;
    *(unsigned char *)((char *)(*(void **)((char *)actors[1] + 0x50)) + 9) =
        (*(unsigned char *)((char *)(*(void **)((char *)actors[1] + 0x50)) + 9) & 0xf3) | 8;
    *(unsigned char *)((char *)actors[1] + 0x23) = 2;
}
