extern int __GetFlag(int);
extern void __CutsceneStart(void);
extern void __MapActor_Surprise(int, int);
extern void __MapActor_SetAnim(int, int);
extern void __MapActor_TravelTo(int, int, int);
extern void __MapActor_WaitMovement(int);
extern void __PlaySound(int);
extern void __StartTask(void *, int);
extern void __Actor_TravelTo(void *, int, int, int);
extern void __SetFlag(int);
extern void __CutsceneEnd(void);

void OvlFunc_960_2008464(int arg0)
{
    unsigned char *actor;
    unsigned char *target;
    int actorId;
    int flag;
    int off;

    off = 0xfa << 1;
    actorId = *(int *)((char *)&gState + off);
    actor = __MapActor_GetActor(actorId);
    target = __MapActor_GetActor(arg0);
    flag = __GetFlag(0x20f);
    if (flag == 0) {
        __CutsceneStart();
        __MapActor_Surprise(actorId, 0x101);
        __MapActor_SetAnim(actorId, 9);
        target = __MapActor_GetActor(arg0);
        if (target != 0) {
            __MapActor_TravelTo(actorId, *(short *)(target + 0xa), *(short *)(target + 0x12));
        }
        __MapActor_WaitMovement(actorId);
        __PlaySound(0xf4);
        __StartTask(OvlFunc_960_2008400, 0xc8 << 4);
        actor[0x55] = flag;
        __Actor_TravelTo(actor, *(int *)(actor + 8), *(int *)(actor + 0xc) + (0x80 << 14), *(int *)(actor + 0x10));
        __MapActor_WaitMovement(actorId);
        *(int *)(actor + 0x28) = flag;
        actor[0x55] = 4;
        off = 0xf9 << 1;
        *(unsigned char *)((char *)&gState + off) = 2;
        __SetFlag(0x20f);
        __SetFlagByte(0x86 << 2, arg0);
        __SetFlagByte(0x84 << 2, 0xb4);
        __CutsceneEnd();
        off = 0xbe << 1;
        *(unsigned short *)(iwram_3001ebc + off) = flag;
    }
}
