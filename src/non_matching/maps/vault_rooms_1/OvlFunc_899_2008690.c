extern unsigned char gScript_899__0200d8bc[];
extern unsigned char gScript_899__0200d858[];
extern void *Lm899_64d8[] __asm__(".Lm899_64d8");
extern void __MapActor_SetBehavior(int, int);
extern void __MapActor_WaitScript(int);

void OvlFunc_899_2008690(void)
{
    struct Actor *actor = (struct Actor *)__MapActor_GetActor(0x19);
    int r7 = actor->facing & (0xf0 << 8);
    short *p = &actor->waveCounter;
    int r6 = *p >> 1;

    __CutsceneStart();
    __Func_80925cc(0x19, 2);
    __MessageID(0x12ad);
    __ActorMessage(0x19, 0);
    __MapActor_SetSpeed(0x19, 0xe0 << 10, 0xe0 << 9);

    switch (*p) {
    case 4:
        if ((r7 + 0xffffdfff) <= 0x7ffe) {
            __MapActor_SetBehavior(0x19, (int)gScript_899__0200d8bc);
            *p = 2;
        } else {
            __MapActor_SetBehavior(0x19, (int)gScript_899__0200d858);
            *p = 3;
        }
        break;
    case 0:
    case 2:
        if ((r7 + 0xffffdfff) <= 0x7ffe) {
            __MapActor_SetBehavior(0x19, (int)Lm899_64d8[(r6 << 2) + *p]);
            *p = *p - (r6 << 1) + 1;
            break;
        }
        goto shared_else;
    case 1:
    case 3:
        if ((r7 + 0xffff9fff) <= 0x7ffe) {
            __MapActor_SetBehavior(0x19, (int)Lm899_64d8[(r6 << 2) + *p]);
            *p = *p - (r6 << 1) + 1;
            break;
        }
    shared_else:
        __MapActor_SetBehavior(0x19, (int)Lm899_64d8[((r6 ^ 1) << 2) + *p]);
        *p = *p - (r6 << 1) + 0xffff;
        break;
    }

    *p &= 3;
    __MapActor_WaitScript(0x19);
    __CutsceneEnd();
}
