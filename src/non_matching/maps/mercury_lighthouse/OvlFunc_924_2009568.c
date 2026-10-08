extern unsigned char Lm924_603a[] __asm__(".Lm924_603a");

void OvlFunc_924_2009568(void)
{
    extern void __Func_8010560(void *, int, int);
    struct Actor *actor;

    if (__GetFlag(0x256)) {
        __CutsceneStart();
        __ClearFlag(0x256);
        actor = (struct Actor *)__MapActor_GetActor(0);
        actor->pos.y += 0x20000;
        actor = (struct Actor *)__MapActor_GetActor(0);
        actor->prevPos.y = ((struct Actor *)__MapActor_GetActor(0))->pos.y;
        __CutsceneWait(5);
        __CopyMapTiles(7, 2, 5, 11, 1, 1);
        __PlaySound(0xd9);
        __Func_8010560(Lm924_603a, 9, 7);
        __CutsceneEnd();
    }
}
