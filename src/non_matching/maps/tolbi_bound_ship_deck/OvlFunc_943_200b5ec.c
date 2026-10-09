extern void __Func_8092b54(int, int);
extern int __sin(int);
extern unsigned char Lm943_5b40[] __asm__(".Lm943_5b40");
extern unsigned char Lm943_5b70[] __asm__(".Lm943_5b70");
extern unsigned char Lm943_5b90[] __asm__(".Lm943_5b90");

void OvlFunc_943_200b5ec(int actorId, int index, int flags)
{
    struct Actor *actor = (struct Actor *)__MapActor_GetActor(actorId);
    struct Sprite *sprite = actor->sprite;

    if (!(flags & 2)) {
        switch (((int *)Lm943_5b70)[index]) {
        case 1:
            ((u16 *)Lm943_5b40)[index] = ((u16 *)L5b30)[0];
            __Func_8092b54(actorId, 8);
            break;
        case 2:
            ((u16 *)Lm943_5b40)[index] = ((u16 *)L5b30)[1];
            __Func_8092b54(actorId, 9);
            break;
        case 3:
            ((u16 *)Lm943_5b40)[index] = ((u16 *)L5b30)[2];
            __Func_8092b54(actorId, 10);
            break;
        case 4:
            ((u16 *)Lm943_5b40)[index] = ((u16 *)L5b30)[3];
            __Func_8092b54(actorId, 11);
            break;
        }
    }

    if (flags & 1) {
        int sinVal = __sin(((u16 *)Lm943_5b40)[index]);
        sprite->rotation = __sin(((u16 *)Lm943_5b40)[index] + 0x8000) >> 5;
        actor->pos.z = ((int *)Lm943_5b90)[index] - sinVal * 6;
    } else {
        int sinVal = __sin(((u16 *)Lm943_5b40)[index] + 0x8000);
        sprite->rotation = __sin(((u16 *)Lm943_5b40)[index]) >> 5;
        actor->pos.z = ((int *)Lm943_5b90)[index] + sinVal * 6;
    }
}
