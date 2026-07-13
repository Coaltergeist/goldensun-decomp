extern unsigned char *__MapActor_GetActor(int actor);
extern void __SetFlag(int flag);
extern unsigned char gScript_884__0200a874[];
extern unsigned char gScript_923__0200a8c8[];
extern void __MapActor_SetBehavior(int actor, unsigned char *script);

void OvlFunc_923_200916c(void)
{
    int x = *(int *)(__MapActor_GetActor(0) + 8);
    int tile;

    if (x < 0)
        x += 0xfffff;
    tile = x >> 20;
    __SetFlag(0x205);
    if (tile == 7)
        __MapActor_SetBehavior(8, gScript_884__0200a874);
    else
        __MapActor_SetBehavior(8, gScript_923__0200a8c8);
}
