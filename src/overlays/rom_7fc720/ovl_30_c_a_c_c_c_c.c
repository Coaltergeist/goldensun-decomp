extern unsigned char *iwram_3001ebc;
extern unsigned char *__MapActor_GetActor(int actor_id);
extern void __MapActor_SetAnim(int actor_id, int anim);
extern unsigned char *__CreateUIBox(int x, int y, int width, int height,
                                    int style);
extern void __UIDrawText(const void *text, unsigned char *box, int x, int y);
extern unsigned char gOvl_02008920[];
extern unsigned char L93c[] __asm__(".L93c");
extern unsigned char L958[] __asm__(".L958");

int OvlFunc_973_200871c(void)
{
    unsigned char *base = iwram_3001ebc;
    unsigned char *actor;

    *(int *)(base + 0x1c0) = 0x204;
    *(int *)(base + 0x1c8) = 0x18;
    actor = __MapActor_GetActor(0xb);
    *(int *)(actor + 0x1c) = 0x19999;
    actor = __MapActor_GetActor(0xb);
    *(int *)(actor + 0x18) = 0x19999;
    __MapActor_SetAnim(0xd, 5);
    __MapActor_SetAnim(0xe, 2);
    return 0;
}

void OvlFunc_973_2008768(void)
{
    /* This source routine reserved a 32-byte local buffer. */
    volatile unsigned char unused[0x20];
    unsigned char *box;

    box = __CreateUIBox(0, 0xd, 0x1e, 6, 2);
    __UIDrawText(gOvl_02008920, box, 0, 0);
    __UIDrawText(L93c, box, 0, 8);
    __UIDrawText(L958, box, 0, 0x10);
}
