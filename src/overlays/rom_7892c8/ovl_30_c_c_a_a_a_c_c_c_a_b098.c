typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *__CreateActor(int);
extern void __Actor_SetScript(u8 *, const void *);
extern void *__galloc_iwram(int, int);
extern void __LoadItemIcon(int);
extern void __UploadSpriteGFX(int, int, void *);
extern void __gfree(int);
extern void __WaitFrames(int);
extern const u8 gScript_888__0200b8f8[];
extern const u8 gScript_888__0200ba9c[];

void OvlFunc_888_200b098(int item)
{
    register int saved_item asm("r8") = item;
    register u8 *actor asm("r7");
    register u8 *sprite asm("r6");
    register unsigned int frame asm("r5");
    register int temp2 asm("r2");
    register int temp3 asm("r3");
    register u8 *created asm("r0");
    register void *gfx asm("r5");

    created = __CreateActor(0x16);
    actor = created;
    asm volatile("" : "+r"(actor), "+r"(created));
    frame = 0;
    asm volatile("" : "+r"(frame));
    if (actor == 0)
        return;

    __Actor_SetScript(created, gScript_888__0200b8f8);
    sprite = *(u8 **)(actor + 0x50);
    sprite[0x26] = frame;
    sprite[0x27] = frame;
    temp3 = 0x21;
    temp2 = sprite[5];
    temp3 = -temp3;
    temp3 &= temp2;
    temp2 = sprite[9];
    sprite[5] = temp3;
    temp3 = 0x0f;
    temp3 &= temp2;
    sprite[9] = temp3;
    *(u32 *)(actor + 0x28) = 0x20000;
    *(u32 *)(actor + 0x48) = 0x4000;
    gfx = __galloc_iwram(0x11, 0x608);
    __LoadItemIcon(saved_item);
    temp2 = 0x80;
    temp2 <<= 3;
    gfx = (u8 *)gfx + temp2;
    asm volatile("" : "+r"(gfx));
    temp2 = (int)gfx;
    asm volatile("" : "+r"(temp2));
    __UploadSpriteGFX(sprite[0x1c], 0x80, (void *)temp2);
    __gfree(0x11);

    frame = 0;
    sprite = actor + 0x55;
    saved_item = 0;
    do {
        if ((u32)(*(u32 *)(actor + 0x28) + 0xff) <= 0x1fe)
            *sprite = saved_item;
        __WaitFrames(1);
        frame++;
    } while (frame <= 0x3b);

    __Actor_SetScript(actor, gScript_888__0200ba9c);
}
