void OvlFunc_911_200a910(void);
void OvlFunc_911_20088ec(void);
void __Actor_SetSpriteFlags(void *, int);
void __DeleteFieldActor(int);
void __LoadFieldActors(void *);
extern unsigned char gScript_911__0200add8[];
extern unsigned char Lm911_32d8[] __asm__(".Lm911_32d8");

int Kolima_MapInit(void)
{
    unsigned int i;
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);

    if (ev == 0x27) {
        OvlFunc_911_200a910();
        return 0;
    }

    if (ev == 0x26) {
        *(int *)(*(unsigned char **)iwram_3001ebc + 0x1c0) = 0x204;
        return 0;
    }

    __Actor_SetSpriteFlags(__MapActor_GetActor(0x17), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x18), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x19), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x1a), 0);

    API_MapActor_SetBehavior(0x17, (int)gScript_911__0200add8);
    API_MapActor_SetBehavior(0x18, (int)gScript_911__0200add8);
    API_MapActor_SetBehavior(0x19, (int)gScript_911__0200add8);
    API_MapActor_SetBehavior(0x1a, (int)gScript_911__0200add8);

    if (!API_GetFlag(0x845)) {
        for (i = 8; i <= 0x10; i++) {
            __Actor_SetSpriteFlags(__MapActor_GetActor(i), 0);
        }
        API_Func_8010704(0xd, 9, 1, 1, 0xd, 8);
        API_Func_8010704(0xd, 9, 1, 1, 0xf, 8);
        API_Func_8010704(0xd, 9, 1, 1, 0xe, 9);
    }

    if (!API_GetFlag(0x843)) {
        if (*(short *)((char *)p + 0x1c2) == 1) {
            OvlFunc_911_20088ec();
        }
    }

    if (API_GetFlag(0x843)) {
        __DeleteFieldActor(1);
        __DeleteFieldActor(2);
        __DeleteFieldActor(3);
        __DeleteFieldActor(0x11);
        __DeleteFieldActor(0x12);
        __DeleteFieldActor(0x13);
        __DeleteFieldActor(0x14);
        __DeleteFieldActor(0x15);
        __DeleteFieldActor(0x16);
        __LoadFieldActors(Lm911_32d8);
    }

    return 0;
}
