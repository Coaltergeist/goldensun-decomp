extern void OvlFunc_925_200b1c0(int *, int);

void OvlFunc_925_200b324(void)
{
    unsigned char *ptr;
    int actors[5];
    int vel;
    int count;
    int i;
    int k;

    ptr = *(unsigned char **)iwram_3001e70 + (0xb2 << 1);
    vel = 0xc0 << 9;
    count = 0;

    for (i = 0; i < 5; i++) {
        actors[i] = 0x42;
    }

    OvlFunc_925_200b1c0(actors, *(int *)(ptr + 0xc));

    for (i = 0; i < 5; i++) {
        if (actors[i] == 0x42) {
            break;
        }
        ((struct Actor *)__MapActor_GetActor(actors[i]))->__unk55 = 0;
        count++;
    }

    __PlaySound(0xdf);

    for (i = 0; i <= 0x55; i++) {
        *(int *)(ptr + 0xc) += vel;
        for (k = 0; k < count; k++) {
            ((struct Actor *)__MapActor_GetActor(actors[k]))->pos.z -= vel;
            ((struct Actor *)__MapActor_GetActor(actors[k]))->prevPos.z =
                ((struct Actor *)__MapActor_GetActor(actors[k]))->pos.z;
        }

        if ((i & 3) == 3 && i > 0x4b) {
            vel -= 0x3333;
        }
        if (vel < 0xccc) {
            vel = 0xccc;
        }
        __WaitFrames(1);
    }

    *(int *)(ptr + 0xc) = 0x80 << 19;
    __Func_800fe9c();
    __WaitFrames(2);
}
