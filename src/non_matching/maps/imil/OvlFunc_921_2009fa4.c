extern void *__GetFieldActor(void *);

extern int __Func_8012038(int, int, int);

extern int __Func_8011f54(int, int, int);

extern void __vec3_translate(int, int, int *);

extern void __Actor_TravelTo(void *, int, int, int);

extern void __Actor_WaitMovement(void *);

extern void __WaitFrames(int);

extern short Lm921_2430[] __asm__(".Lm921_2430");

extern void OvlFunc_921_2009f24(void *);

void OvlFunc_921_2009fa4(void)
{
    unsigned char *actor;
    int vec[3];
    int dir;
    int result;
    int hit;
    int type;
    int d;

    actor = __GetFieldActor(*(void **)((char *)&gState + 0x1f4));

L_1fc4:
    dir = Lm921_2430[(gKeyHeld >> 4) & 0xf];
    if (dir == -1) {
        goto L_213a;
    }

    __CutsceneStart();

    vec[0] = (*(int *)(actor + 8) & 0xfff00000) + 0x80000;
    vec[1] = *(int *)(actor + 0xc);
    vec[2] = (*(int *)(actor + 0x10) & 0xfff00000) + 0x80000;

    type = actor[0x22];

    result = __Func_8012038(type, vec[0], vec[2]);

    __vec3_translate(0x100000, dir, vec);
    hit = __Func_8012038(type, vec[0], vec[2]);
    if (hit == 0xff) {
        goto L_208c;
    }

    d = __Func_8011f54(type, vec[0], vec[2]) - *(int *)(actor + 0xc);
    if (d > 0x80000) {
        goto L_208c;
    }

    *(int *)(actor + 0x30) = 0x20000;
    *(int *)(actor + 0x34) = 0x1999;
    *(short *)(actor + 0x64) = 0;
    __Actor_TravelTo(actor, vec[0], *(int *)(actor + 0xc), vec[2]);
    __Actor_SetAnim(actor, 2);
    __Actor_SetAnimSpeed(actor, 0x30);
    __Actor_WaitMovement(actor);
    *(void (**)(void *))(actor + 0x6c) = OvlFunc_921_2009f24;
    goto L_20d6;

L_208c:
    *(short *)(actor + 6) = (short)dir;
    goto L_2130;

L_2094:
    d = __Func_8011f54(type, vec[0], vec[2]) - *(int *)(actor + 0xc);
    if (d > 0x80000) {
        goto L_20f4;
    }

    *(int *)(actor + 0x30) = 0x20000;
    *(int *)(actor + 0x34) = 0x1999;
    __Actor_TravelTo(actor, vec[0], vec[1], vec[2]);
    __Actor_WaitMovement(actor);
    if (hit != result) {
        goto L_211a;
    }

L_20d6:
    __vec3_translate(0x100000, dir, vec);
    hit = __Func_8012038(type, vec[0], vec[2]);
    if (hit != 0xff) {
        goto L_2094;
    }

L_20f4:
    *(int *)(actor + 0x30) = 0x20000;
    *(int *)(actor + 0x34) = 0x10000;
    __Actor_TravelTo(actor, vec[0], *(int *)(actor + 0xc), vec[2]);
    __Actor_WaitMovement(actor);
    __WaitFrames(2);
    goto L_1fc4;

L_211a:
    *(int *)(actor + 0x6c) = 0;
    actor[0x5a] |= 1;
    *(int *)(actor + 0x34) = 0x4000;

L_2130:
    __WaitFrames(10);
    __CutsceneEnd();

L_213a:
    return;
}
