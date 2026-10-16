extern void __Func_8092504(int);
extern void OvlFunc_964_2009068(void);
extern void OvlFunc_964_2008ae8(int, int, int, int, int, int, int, void *);
extern u32 __Random(void);
extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);

void OvlFunc_964_20090c4(void)
{
    struct Actor *actor;
    u8 *unk55;
    void *buf[10];
    u32 i;
    int rx;
    int rz;

    actor = (struct Actor *)__MapActor_GetActor(0);
    __CutsceneStart();
    __Actor_SetAnim(actor, 6);
    __Func_8092504(0);
    __Actor_SetAnim(actor, 1);
    __Actor_SetSpriteFlags(actor, 0);
    unk55 = &actor->__unk55;
    *unk55 |= 2;
    __PlaySound(0x98);
    actor->motion.y = 0x40000;
    __Actor_TravelTo(actor, actor->pos.x, actor->pos.y, actor->pos.z + 0xc0000);
    __WaitFrames(6);
    *unk55 = 0;
    buf[9] = OvlFunc_964_2009068;
    __PlaySound(0x7f);
    for (i = 0; i <= 7; i++) {
        actor->pos.y += -0x20000;
        actor->prevPos.y = actor->pos.y;
        __WaitFrames(1);
        if (i & 1) {
            rx = ((int)_umodsi3_RAM(__Random(), 10) - 5) * 0x3332;
            rz = -(int)_umodsi3_RAM(__Random(), 10) * 0x1999 - 0x7ffd;
            OvlFunc_964_2008ae8(actor->pos.x, actor->pos.y, actor->pos.z, rx, 0, rz, 0x1000001, buf);
        }
    }
    __Actor_SetSpriteFlags(actor, 1);
    *unk55 = 3;
    __CutsceneEnd();
}
