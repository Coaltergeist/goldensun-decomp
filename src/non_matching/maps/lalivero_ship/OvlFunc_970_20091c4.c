/*
 * Remaining diff vs target OvlFunc_970_20091c4:
 * - Minor register allocation differences (`r2`/`r3`/`r4`) in the first OAM
 *   initialization loop and `Lm970_1c18` decrement prelude.
 */
struct SpriteSlot970 {
    short f0;
    short f2;
};

struct OamEntry970 {
    int attr0;
    int attr1;
    int attr2;
};

extern short Lm970_1c18 __asm__(".Lm970_1c18");
extern short Lm970_1c1a __asm__(".Lm970_1c1a");
extern struct SpriteSlot970 gSpriteSlots[];
extern struct OamEntry970 Lm970_1af8[] __asm__(".Lm970_1af8");
extern void __Func_8003dec(void *entry, int a);

void OvlFunc_970_20091c4(void)
{
    int tile;
    unsigned int i;
    int angle;
    int half;
    int *p;
    struct OamEntry970 *e;

    tile = (unsigned short)gSpriteSlots[Lm970_1c1a].f2 >> 5;

    {
        signed short a = Lm970_1c18;
        int u = (unsigned short)Lm970_1c18;
        p = (int *)Lm970_1af8;
        if (a != 0) {
            u = u - 1;
            Lm970_1c18 = u;
        }
    }

    for (i = 0; i <= 7; i++) {
        int val;
        angle = Lm970_1c18;
        val = (-angle) / 2;
        *p++ = 0;
        *p++ = (i << 21) | (val & 0xff) | 0x80004000;
        *p++ = tile;
    }

    half = (angle / 2 + 0x88) & 0xff;
    e = (struct OamEntry970 *)p;
    for (i = 0; i <= 7; i++) {
        e->attr1 = (i << 21) | half | 0x80004000;
        e->attr0 = 0;
        e->attr2 = tile;
        e++;
        p += 3;
    }

    half = (Lm970_1c18 / 2 + 0x98) & 0xff;
    e = (struct OamEntry970 *)p;
    for (i = 0; i <= 7; i++) {
        e->attr1 = (i << 21) | half | 0x80004000;
        e->attr0 = 0;
        e->attr2 = tile;
        e++;
    }

    for (i = 0; i <= 23; i++) {
        __Func_8003dec(&Lm970_1af8[i], 0xff);
    }
}
