extern void *iwram_3001e70;
extern unsigned int Lm891_2a50[] __asm__(".Lm891_2a50");
extern int Lm891_2974 __asm__(".Lm891_2974");
extern void __Func_8003dec(struct SpriteOAM *, int);

void OvlFunc_891_2008eb0(void) {
    int *cam;
    struct SpriteOAM *p;
    int camX;
    int y;
    int x;
    unsigned int i;

    cam = (int *)((char *)iwram_3001e70 + 0xe4);
    p = (struct SpriteOAM *)Lm891_2a50;
    camX = cam[0] / 65536;
    y = 0x50 - cam[1] / 65536;

    if ((unsigned int)(y + 0x10) <= 0xaf) {
        x = ((Lm891_2974 >> 10) - camX) | -0x20;
        i = 0;
        do {
            p->attr1 = (p->attr1 & ~0x1ff) | (x & 0x1ff);
            *(u8 *)&p->attr0 = y;
            __Func_8003dec(p, 0);
            x += 0x20;
            p++;
            i++;
        } while (i <= 8);

        x = ((Lm891_2974 >> 9) - camX) | -0x20;
        i = 0;
        do {
            p->attr1 = (p->attr1 & ~0x1ff) | (x & 0x1ff);
            *(u8 *)&p->attr0 = y;
            __Func_8003dec(p, 0);
            x += 0x20;
            p++;
            i++;
        } while (i <= 8);

        x = ((Lm891_2974 >> 8) - camX) | -0x20;
        y += 8;
        i = 0;
        do {
            p->attr1 = (p->attr1 & ~0x1ff) | (x & 0x1ff);
            *(u8 *)&p->attr0 = y;
            __Func_8003dec(p, 0);
            x += 0x20;
            p++;
            i++;
        } while (i <= 8);
    }

    Lm891_2974 += 0x80;
}
