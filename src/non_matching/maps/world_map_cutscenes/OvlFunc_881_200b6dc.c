void OvlFunc_881_200b6dc(int arg0)
{
    extern unsigned char gStateBytes[] __asm__("gState");
    extern unsigned char iwram_3001ebc[];
    extern void *__MapActor_GetActor(int);
    extern int __GetFlag(int);
    extern void __CutsceneStart(void);
    extern void __MapActor_Surprise(int, int);
    extern void __MapActor_SetAnim(int, int);
    extern void __MapActor_TravelTo(int, int, int);
    extern void __MapActor_WaitMovement(int);
    extern void __PlaySound(int);
    extern void OvlFunc_881_200b678(void);
    extern int __StartTask(void (*)(void), unsigned int);
    extern void __Actor_TravelTo(void *, int, int, int);
    extern void __SetFlag(int);
    extern void __SetFlagByte(int, int);
    extern void __CutsceneEnd(void);

    unsigned char *gs;
    struct Actor *actor;
    short *target;
    unsigned char *base;
    int leaderId;
    int flag;

    gs = gStateBytes;
    leaderId = *(int *)(gs + (0xfa << 1));
    actor = (struct Actor *)__MapActor_GetActor(leaderId);
    flag = __GetFlag(0xbc << 2);
    if (flag != 0)
        return;

    __CutsceneStart();
    __MapActor_Surprise(leaderId, 0x101);
    __MapActor_SetAnim(leaderId, 9);
    target = (short *)__MapActor_GetActor(arg0);
    if (target != NULL) {
        __MapActor_TravelTo(leaderId, target[5], target[9]);
    }
    __MapActor_WaitMovement(leaderId);
    __PlaySound(0xf4);
    __StartTask(OvlFunc_881_200b678, 0xc8 << 4);
    actor->__unk55 = flag;
    __Actor_TravelTo(actor, actor->pos.x, actor->pos.y + (0x80 << 14), actor->pos.z);
    __MapActor_WaitMovement(leaderId);
    actor->motion.y = flag;
    actor->__unk55 = 4;
    *(gs + (0xf9 << 1)) = 2;
    __SetFlag(0xbc << 2);
    __SetFlagByte(0xbe << 2, 0xb4);
    __CutsceneEnd();
    base = *(unsigned char **)iwram_3001ebc;
    *(u16 *)(base + (0xbe << 1)) = flag;
}
