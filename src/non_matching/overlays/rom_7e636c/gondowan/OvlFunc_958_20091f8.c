extern int __cos(int);

extern int __sin(int);

extern void __Func_8012350(void);

extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, int);

void OvlFunc_958_20091f8(int actor_id)
{
    unsigned char *actor;
    unsigned char *f55;
    unsigned int i;
    void *field;
    int val;
    int vec[3];
    int angle;
    int c;

    actor = __MapActor_GetActor(actor_id);
    f55 = actor;
    f55 += 0x55;
    *f55 = 0;
    i = 0;
    do {
        unsigned int r1;
        unsigned short r3;
        __WaitFrames(1);
        field = *(void **)(actor + 0x50);
        r1 = 0xffffff00;
        r3 = *(unsigned short *)((char *)field + 0x1e);
        r3 += r1;
        *(unsigned short *)((char *)field + 0x1e) = r3;
        val = __cos(*(unsigned short *)((char *)*(void **)(actor + 0x50) + 0x1e));
        *(int *)(actor + 8) = *(int *)(actor + 8) - (val / 2);
        i++;
        *(int *)(actor + 0x38) = 0x80 << 24;
    } while (i <= 8);

    *(void **)(actor + 0x6c) = OvlFunc_958_20091c8;
    __PlaySound(0x88);
    API_MapActor_SetSpeed(actor_id, 0x80 << 10, 0x80 << 9);
    API_MapActor_TravelTo(actor_id, 0xec << 1, 0x90 << 1);
    *(int *)(actor + 0x48) = 0xcccc;
    *f55 = 3;
    *((unsigned char *)actor + 0x22) = 0;
    __MapActor_WaitMovement(actor_id);
    OvlFunc_958_20091d8((unsigned int)actor, 0x80 << 14);
    API_Func_8012330(0xa0 << 11, 0xa0 << 11, 0x80 << 9);
    API_Func_8012330(-1, -1, 0xe666);

    for (i = 0; i <= 0x10; i++) {
        angle = i << 12;
        vec[0] = __cos(angle);
        vec[1] = 0;
        vec[2] = __sin(angle);
        vec[0] = vec[0] - vec[0] / 4;
        vec[2] = vec[2] - vec[2] / 2;
        OvlFunc_common0_10c(*(int *)(actor + 8), *(int *)(actor + 0xc), *(int *)(actor + 0x10), vec[0], vec[1], vec[2], 0, 0);
    }

    API_MapActor_TravelTo(actor_id, 0xdc << 1, 0x9a << 1);
    __MapActor_WaitMovement(actor_id);
    OvlFunc_958_20091d8((unsigned int)actor, 0x80 << 14);
    *(void **)(actor + 0x6c) = 0;
    c = 0x80;
    c <<= 5;
    *(short *)((char *)*(void **)(actor + 0x50) + 0x1e) = c;
    __PlaySound(0x9a);
    API_MapActor_SetAnim(actor_id, 3);
    __Func_8012350();
    __CutsceneWait(10);
    API_MapActor_SetAnim(actor_id, 2);
}
