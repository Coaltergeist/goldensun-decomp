extern struct Actor *CS964Q_Actor(unsigned int) __asm__("__MapActor_GetActor");
extern struct Actor *CS964Q_Create(int, int, int, int) __asm__("OvlFunc_964_20089f4");
extern unsigned int CS964Q_Random(void) __asm__("__Random");
extern void CS964Q_Delete(struct Actor *) __asm__("__DeleteActor");
struct CS964Q_Effect {
    int priority, animation, scaleX, scaleY, targetX, targetY;
    short sprite, unused;
    void *script;
    short rotation, angularSpeed;
    void *update;
};
extern struct Actor *CS964Q_Particle(int, int, int, int, int, int, unsigned int, struct CS964Q_Effect *) __asm__("OvlFunc_964_2008ae8");
void OvlFunc_964_2009550(void)
{
    struct CS964Q_Effect effect;
    struct Actor *created;
    unsigned int i;
    int x, z;
    __CutsceneStart();
    if ((CS964Q_Actor(18)->pos.x >> 20) == 0x2e) {
        __CutsceneWait(30);
        created = CS964Q_Create(0x2e80000, 0, 0xb80000, 0xfd);
        effect.scaleX = 0x9999;
        effect.scaleY = 0x9999;
        effect.animation = 7;
        CS964Q_Actor(18)->__unk55 = 0;
        __PlaySound(0xb9);
        for (i = 0; i <= 15; ++i) {
            __WaitFrames(3);
            CS964Q_Actor(18)->pos.y -= 0x10000;
            x = (((CS964Q_Random() << 4) >> 16) << 16) + 0x2e00000;
            z = (((CS964Q_Random() * 18) >> 16) << 16) + 0x800000;
            CS964Q_Particle(x, 0, z, 0, 0, 0, 0x90000, &effect);
        }
        __Func_8010704(0x33, 8, 1, 1, 0x31, 8);
        __CutsceneWait(30);
        CS964Q_Actor(18)->flags |= 2;
        __MapActor_SetAnim(18, 3);
        CS964Q_Delete(created);
        __Func_8010704(0x2d, 4, 1, 1, 0x2e, 8);
        API_MapActor_SetPos(20, 0x2e80000, 0x880000);
        __PlaySound(0xbc);
        API_CopyMapTiles(0x3a, 8, 0x31, 8, 1, 3);
        API_Func_8012330(0, 0x50000, 0x10000);
        API_Func_8012330(-1, -1, 0xe666);
        __CutsceneWait(20);
        __PlaySound(0xbc);
        API_CopyMapTiles(0x3b, 8, 0x31, 8, 1, 3);
        API_Func_8012330(0, 0x50000, 0x10000);
        API_Func_8012330(-1, -1, 0xe666);
        __Func_8012350();
        __CutsceneWait(10);
        __SetFlag(0x971);
    }
    __CutsceneEnd();
}
