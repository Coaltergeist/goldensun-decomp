extern struct Actor *CS968R_Actor(int) __asm__("__MapActor_GetActor");
extern void CS968R_SpriteFlags(struct Actor *, int) __asm__("__Actor_SetSpriteFlags");
extern void CS968R_StartTask(void (*)(void), int) __asm__("__StartTask");
struct CS968R_Field { unsigned char pad[0x1c0]; int flags; };
extern struct CS968R_Field *CS968R_Field __asm__("iwram_3001ebc");
struct CS968R_Effect {
    int priority, animation, scaleX, scaleY, targetX, targetY;
    short sprite, unused;
    void *script;
    short rotation, angularSpeed;
    void *update;
};
void OvlFunc_968_200c7c0(void)
{
    struct CS968R_Effect effect;
    struct CS968R_Effect *effectPtr;
    unsigned int repeated, row, column;
    CS968R_Field->flags = 0x202;
    __CutsceneStart();
    CS968R_SpriteFlags(CS968R_Actor(0), 0);
    __Func_8092950(0, 15);
    __Func_8091ff0(0xaa);
    __MapTransitionIn();
    __WaitMapTransition();
    __CutsceneWait(40);
    __PlaySound(0xa2);
    API_Func_80933d4(0x8000, 0x1000);
    API_Func_80933f8(0x2380000, -1, 0x1680000, 1);
    repeated = 0;
    row = 0;
    effectPtr = &effect;
    for (; row <= 12; ++row) {
        unsigned int z;
        effect.scaleX = (((__Random() << 1) >> 16) * 0x4ccc) + 0x17ffc;
        effect.scaleY = (((__Random() << 1) >> 16) * 0x4ccc) + 0x17ffc;
        effect.angularSpeed = (((__Random() << 12) >> 16) + 0xf800);
    repeat:
        for (column = 0; column <= 3; ++column) {
            int x;
            z = 0xc00000 + row * 0x100000 + column * 0x40000;
            x = (((__Random() * 7) >> 16) << 19) + 0x2200000;
            OvlFunc_968_2008118(x, 0, z, 0, 0, 0, 0x880000, effectPtr);
        }
        __WaitFrames(3);
        if (row == 3) {
            if (repeated <= 2) {
                ++repeated;
                goto repeat;
            }
        }
        CS968R_StartTask(OvlFunc_968_200c600, 0xc80);
        API_CopyMapTiles(0x3a, row + 12, 0x22, row + 12, 3, 1);
    }
    API_CopyMapTiles(0x56, 0x29, 0x61, 14, 5, 2);
    __Func_8093530();
    API_Func_80933f8(-1, -1, -1, 0);
    __CutsceneWait(60);
    __SetFlag(0x307);
    __Func_8091e9c(20);
    __CutsceneEnd();
}
