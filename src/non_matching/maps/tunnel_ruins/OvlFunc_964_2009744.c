extern struct Actor *CS964P_Actor(unsigned int) __asm__("__MapActor_GetActor");
extern struct Actor *CS964P_Create(int, int, int, int) __asm__("OvlFunc_964_20089f4");
extern unsigned int CS964P_Random(void) __asm__("__Random");
extern void CS964P_Delete(struct Actor *) __asm__("__DeleteActor");
struct CS964P_Effect {
    int priority, animation, scaleX, scaleY, targetX, targetY;
    short sprite, unused;
    void *script;
    short rotation, angularSpeed;
    void *update;
};
extern struct Actor *CS964P_Particle(int, int, int, int, int, int, unsigned int, struct CS964P_Effect *) __asm__("OvlFunc_964_2008ae8");
void OvlFunc_964_2009744(void)
{
    struct CS964P_Effect effect;
    struct Actor *created;
    unsigned int i;
    int x, z;
    __CutsceneStart();
    if ((CS964P_Actor(19)->pos.x >> 20) == 0x30 && __GetFlag(0x202)) {
        __CutsceneWait(30);
        created = CS964P_Create(0x3020000, 0, 0x1120000, 0xdf);
        effect.scaleX = 0x9999;
        effect.scaleY = 0x9999;
        effect.animation = 7;
        CS964P_Actor(19)->__unk55 = 0;
        __PlaySound(0xb9);
        for (i = 0; i <= 15; ++i) {
            __WaitFrames(3);
            CS964P_Actor(19)->pos.y -= 0x10000;
            x = (((CS964P_Random() << 4) >> 16) << 16) + 0x3000000;
            z = (((CS964P_Random() * 18) >> 16) << 16) + 0xe00000;
            CS964P_Particle(x, 0, z, 0, 0, 0, 0x90000, &effect);
        }
        __Func_8010704(0x33, 8, 1, 1, 0x2d, 14);
        __CutsceneWait(30);
        CS964P_Actor(19)->flags |= 2;
        __MapActor_SetAnim(19, 3);
        CS964P_Delete(created);
        __Func_8010704(0x2d, 4, 1, 1, 0x30, 14);
        API_MapActor_SetPos(21, 0x3080000, 0xe80000);
        __PlaySound(0xbc);
        API_CopyMapTiles(0x3a, 8, 0x2d, 14, 1, 3);
        API_Func_8012330(0, 0x50000, 0x10000);
        API_Func_8012330(-1, -1, 0xe666);
        __CutsceneWait(20);
        __PlaySound(0xbc);
        API_CopyMapTiles(0x3b, 8, 0x2d, 14, 1, 3);
        API_Func_8012330(0, 0x50000, 0x10000);
        API_Func_8012330(-1, -1, 0xe666);
        __Func_8012350();
        __CutsceneWait(10);
        __SetFlag(0x972);
    }
    __CutsceneEnd();
}
