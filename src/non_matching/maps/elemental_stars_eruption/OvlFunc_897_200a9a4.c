extern void __Func_8091200(unsigned int arg0, unsigned int arg1);
extern void __Func_8091254(unsigned int arg0);
extern void __PlaySound(unsigned int arg0);
void __WaitFrames(int);

extern unsigned char Lm897_3684[] __asm__(".Lm897_3684");

extern unsigned int Lm897_3b40[] __asm__(".Lm897_3b40");

extern unsigned int Lm897_3b10[] __asm__(".Lm897_3b10");

extern void OvlFunc_897_200aba0(void);

struct Entry_3684 {
    unsigned int x;
    unsigned int y;
};

void OvlFunc_897_200a9a4(unsigned int arg0)
{
    unsigned int i;
    unsigned int zero;
    struct Entry_3684 *entry;
    int mask;

    for (i = 0; i <= 15; i++) {
        __DeleteFieldActor(i + 0x10);
    }

    switch (arg0) {
    case 0:
        __Func_8091200(0x4039d2, 1);
        break;
    case 1:
        __Func_8091200(0x4049d2, 1);
        break;
    case 2:
        __Func_8091200(0x404a4e, 1);
        break;
    case 3:
        __Func_8091200(0x403a52, 1);
        break;
    }

    __Func_8091254(0x3c);
    __PlaySound(0xd6);

    zero = i = 0;
    entry = (struct Entry_3684 *)Lm897_3684;

    for (; i <= 9; i++) {
        unsigned int x = entry->x;
        unsigned int z = 0;
        unsigned int y = entry->y;
        unsigned char *actor;
        unsigned char *sub;

        switch (arg0) {
        case 0:
            x += 0xe8 << 16;
            z = 0x90 << 16;
            break;
        case 1:
            x += 0xe8 << 16;
            z = 0xe8 << 17;
            break;
        case 2:
            x += 0x2c70000;
            z = 0x90 << 16;
            break;
        case 3:
            x += 0x2c70000;
            z = 0xe8 << 17;
            break;
        }

        Lm897_3b40[i] = zero;
        actor = (unsigned char *)__CreateActor(0x8e << 1, x, y, z);
        Lm897_3b10[i] = (unsigned int)actor;
        actor[0x55] = zero;
        sub = *(unsigned char **)(actor + 0x50);
        sub[0x26] = zero;
        mask = -13;
        sub[9] = (sub[9] & mask) | 4;
        __Actor_SetAnim(actor, 6);
        __WaitFrames(6);
        entry++;
    }

    if (arg0 == 0) {
        __MapActor_Emote(0, 0x80 << 1, 0);
        __MapActor_Emote(1, 0x80 << 1, 0);
    }

    __WaitFrames(0x14);
    __StartTask(OvlFunc_897_200aba0, 0xc8 << 4);
    __PlaySound(0xf6);

    Lm897_3b40[0] = 1;
    __WaitFrames(6);
    Lm897_3b40[1] = 1;
    __WaitFrames(6);
    Lm897_3b40[2] = 1;
    __WaitFrames(6);
    Lm897_3b40[3] = 1;
    __WaitFrames(6);
    Lm897_3b40[4] = 1;
    __WaitFrames(6);
    Lm897_3b40[5] = 1;
    __WaitFrames(6);
    Lm897_3b40[6] = 1;
    __WaitFrames(6);
    Lm897_3b40[7] = 1;
    __WaitFrames(6);
    Lm897_3b40[8] = 1;
    __WaitFrames(6);
    Lm897_3b40[9] = 1;
    __WaitFrames(6);

    while (1) {
        for (i = 0; i <= 9; i++) {
            if (Lm897_3b40[i] != 0) {
                i = 0xde << 2;
                break;
            }
        }
        if (i != (0xde << 2)) {
            break;
        }
        __WaitFrames(1);
    }

    __WaitFrames(0x28);
    __StopTask(OvlFunc_897_200aba0);
    __Func_8091200(0x80 << 9, 1);
    __Func_8091254(0x28);
}
