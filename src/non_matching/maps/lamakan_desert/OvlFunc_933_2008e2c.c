extern unsigned char iwram_3001ebc[];
extern void *__MapActor_GetActor(int);
extern void OvlFunc_933_2009c78(unsigned short);
extern int Events_TolbiSpring[];
extern int Lm933_1f48[] __asm__(".Lm933_1f48");
extern int Lm933_1f70[] __asm__(".Lm933_1f70");
extern short ewram_2000472;

void OvlFunc_933_2008e2c(void)
{
    char *base;
    short *ptr;
    int timer;
    int *points;
    int count;
    int rem;
    int min_dist;
    int closest;
    char *actor;
    struct EffectData933 data1;
    struct EffectData933 data2;
    GlobalState *p;
    int ev;

    base = *(char **)iwram_3001ebc;
    timer = 0x3c;
    min_dist = 0xf0 << 16;
    API_SetFlag(0x80 << 2);
    OvlFunc_933_2009c78(1);

    p = &gState;
    ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)Const59) {
        points = Events_TolbiSpring;
        count = 3;
    } else if (ev == (int)Const5A) {
        points = Lm933_1f48;
        count = 5;
    } else {
        points = Lm933_1f70;
        count = 2;
    }

    rem = count;
    while (rem != 0) {
        int dist = OvlFunc_933_2008e00((int *)((char *)__MapActor_GetActor(0) + 8), &points[(count - rem) * 2]);
        if (dist <= min_dist) {
            min_dist = dist;
            closest = count - rem;
        }
        rem--;
    }

    closest *= 2;
    API_MapActor_SetSpeed(0, 0x80 << 10, 0x80 << 9);
    actor = (char *)__MapActor_GetActor(0);
    API_Actor_TravelTo(actor, points[closest], 0, points[closest + 1]);

    *(int *)((char *)__MapActor_GetActor(0) + 0x28) = 0xc0 << 11;
    __PlaySound(0x98);

    actor = (char *)__MapActor_GetActor(0);
    OvlFunc_933_2008324((unsigned int *)actor, *(int *)((char *)__MapActor_GetActor(0) + 0xc));
    __PlaySound(0xf1);

    actor = (char *)__MapActor_GetActor(0);
    data1.unk18 = 0xd6;
    data1.unk8 = 0x80 << 8;
    data1.unkc = 0xcccc;
    data1.unk10 = 0x80 << 9;
    data1.unk14 = 0x13333;
    OvlFunc_common0_10c(*(int *)(actor + 8), *(int *)(actor + 0xc), *(int *)(actor + 0x10), 0, 0, 0, 0xe0 << 13, &data1);

    API_MapActor_Emote(0, 0x82 << 1, 0);
    API_MapActor_SetAnim(0, 0x12);

    ptr = (short *)(base + 0xcba);
    do {
        *ptr = 0x96 << 2;
        timer--;
        if (ewram_2000472 != 0) {
            ewram_2000472 -= 5;
            if (ewram_2000472 <= 0) {
                ewram_2000472 = 0;
            } else if (timer == 0) {
                timer = 1;
            }
        }
        __WaitFrames(1);
    } while (timer != 0);

    actor = (char *)__MapActor_GetActor(0);
    data2.unk18 = 0xd6;
    data2.unk8 = 0x80 << 8;
    data2.unkc = 0xcccc;
    data2.unk10 = 0x80 << 8;
    data2.unk14 = 0x13333;
    OvlFunc_common0_10c(*(int *)(actor + 8), *(int *)(actor + 0xc), *(int *)(actor + 0x10), 0, timer, timer, 0xe0 << 13, &data2);

    __PlaySound(0x90 << 1);
    __PlaySound(0x98);
    *(int *)((char *)__MapActor_GetActor(0) + 0x28) = 0xc0 << 11;
    API_MapActor_SetAnim(0, 1);
    API_CutsceneWait(10);

    *(short *)(base + 0xcba) = timer;
    OvlFunc_933_2009c78(0);
}
