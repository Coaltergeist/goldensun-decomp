extern void __Func_8010704(int, int, int, int, int, int);

extern void OvlFunc_942_2008af8(void);

extern void __Func_8092950(int, int);

extern unsigned char Lm942_a84[] __asm__(".Lm942_a84");

__asm__(".equ .Lm942_a84, 0");

void OvlFunc_942_2008958(void) {
    GlobalState *state;
    unsigned int r1;
    unsigned short *r5;
    int r2;
    int r3;
    struct Actor *actor;
    int s18;
    int rot;

    OvlFunc_942_2008af8();
    if (__GetFlag(0x950)) {
        __Func_8092950(0xc, 2);
    }

    state = &gState;
    r1 = 0xe1;
    r1 <<= 1;
    r5 = (unsigned short *)((char *)state + r1);
    r1 = 0;
    r3 = *(short *)((char *)r5 + r1);
    r2 = *r5;
    if (r3 == 3) {
        __ClearFlag(0x12f);
        r2 = *r5;
    }
    r3 = r2 << 16;
    r2 = 0x80;
    r2 <<= 9;
    if (r3 == r2) {
        __ClearFlag(0x8aa);
    }

    if (__GetFlag(0x8aa)) {
        API_MapActor_SetPos(8, 0xcc << 17, 0x94 << 17);
        API_Func_8092adc(8, 0x80 << 8, 0);
    }

    if (__GetFlag(0x8ab)) {
        API_MapActor_SetPos(0xd, 0x8c << 17, 0x94 << 17);
        API_Func_8092adc(0xd, 0xc0 << 8, 0);
        API_MapActor_SetPos(0x10, 0x90 << 17, 0x8c << 17);
        API_Func_8092adc(0x10, 0xe0 << 8, 0);
        API_MapActor_SetPos(0xa, 0xe8 << 16, 0x98 << 17);
        API_Func_8092adc(0xa, 0x80 << 7, 0);
        API_MapActor_SetPos(0xb, 0xf0 << 16, 0x9c << 17);
        API_Func_8092adc(0xb, 0xc0 << 8, 0);

        actor = __MapActor_GetActor(0xa);
        actor->__unk59 = 0;
        actor->flags = 2;
        ((unsigned char *)actor->sprite)[9] |= 0xc;
        ((unsigned char *)actor->sprite)[0x26] = 0;
        rot = 0xc0;
        rot <<= 8;
        *(unsigned short *)((char *)actor->sprite + 0x1e) = rot;

        actor = __MapActor_GetActor(0xb);
        actor->flags = (int)Lm942_a84;
        ((unsigned char *)actor->sprite)[9] |= 0xc;
        ((unsigned char *)actor->sprite)[0x15] |= 0xc;
    }

    if (__GetFlag(0x950)) {
        s18 = 0x12;
        __Func_8010704(s18, s18, 1, 1, 0xe, s18);
        __Func_8010704(s18, s18, 1, 1, 0xf, s18);
    }
}
