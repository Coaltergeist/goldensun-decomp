extern unsigned char iwram_3001ebc[];
extern void CS968S_FieldMode(int) __asm__("__Func_8091ff0");
extern struct Actor *CS968S_Actor(int) __asm__("__MapActor_GetActor");
extern void CS968S_SpriteFlags(struct Actor *, int) __asm__("__Actor_SetSpriteFlags");
extern void CS968S_ActorFlags(int, int) __asm__("__Func_8092950");
struct CS968S_Effect {
    int priority, animation;
    int scaleX, scaleY, targetScaleX, targetScaleY;
    short spriteId;
    void *script;
    unsigned short rotation, angularVelocity;
    void *update;
};
static inline void CS968S_Prepare(struct CS968S_Effect *params)
{
        params->scaleX = ((__Random() << 1) >> 16) * 0x4ccc + 0x17ffc;
        params->scaleY = ((__Random() << 1) >> 16) * 0x4ccc + 0x17ffc;
        params->angularVelocity = ((__Random() << 12) >> 16) + 0xf800;
}
void OvlFunc_968_200c2bc(void)
{
    struct CS968S_Effect data;
    unsigned int row, column, repeats, rowZ;
    *(int *)(*(unsigned char **)iwram_3001ebc + 0x1c0) = 0x202;
    API_CutsceneStart();
    CS968S_SpriteFlags(CS968S_Actor(0), 0);
    CS968S_ActorFlags(0, 15);
    CS968S_FieldMode(0xaa);
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(40);
    API_PlaySound(0xa2);
    repeats = 0;
    for (row = 0, rowZ = 0; row <= 9; rowZ += 0x100000, row++) {
        data.scaleX = ((__Random() << 1) >> 16) * 0x4ccc + 0x17ffc;
        data.scaleY = ((__Random() << 1) >> 16) * 0x4ccc + 0x17ffc;
        data.angularVelocity = ((__Random() << 12) >> 16) + 0xf800;
repeatFirstRow:
        for (column = 0; column <= 3 && row <= 7; column++) {
            OvlFunc_968_2008118(((__Random() * 7) >> 16) * 0x80000 + 0x3600000,
                                0, 0x300000 + rowZ + (column << 18),
                                0, 0, 0, 0x880000, &data);
        }
        API_WaitFrames(3);
        if (row == 3 && repeats <= 2) {
            repeats++;
            goto repeatFirstRow;
        }
        API_CopyMapTiles(0x30, row + 3, 0x36, row + 3, 3, 1);
    }
    API_CopyMapTiles(0x6f, 5, 0x75, 5, 5, 2);
    API_CopyMapTiles(0x6f, 10, 0x75, 10, 5, 2);
    API_CopyMapTiles(0x6f, 7, 0x6f, 5, 5, 2);
    API_CopyMapTiles(0x6f, 7, 0x6f, 10, 5, 2);
    for (row = 0, rowZ = 0; row <= 9; rowZ += 0x100000, row++) {
        CS968S_Prepare(&data);
        for (column = 0; column <= 3 && row <= 7; column++) {
            OvlFunc_968_2008118(((__Random() * 7) >> 16) * 0x80000 + 0x3000000,
                                0, 0x300000 + rowZ + (column << 18),
                                0, 0, 0, 0x880000, &data);
        }
        API_WaitFrames(3);
        API_CopyMapTiles(0x37, row + 26, 0x30, row + 3, 3, 1);
    }
    API_PlaySound(0x121);
    API_CutsceneWait(60);
    API_Func_8091e9c(21);
    API_CutsceneEnd();
}
