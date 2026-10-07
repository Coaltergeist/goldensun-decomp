void OvlFunc_925_200b1c0(int *, int);

void OvlFunc_925_200b208(void)
{
    unsigned char *ptr;
    int actors[5];
    int speed;
    int count;
    int i;
    int k;
    int j;

    ptr = *(unsigned char **)iwram_3001e70 + (0xb2 << 1);
    speed = 0x1999;
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

    for (k = 0; k <= 0xe3; k++) {
        *(int *)(ptr + 0xc) -= speed;

        for (j = 0; j < count; j++) {
            ((struct Actor *)__MapActor_GetActor(actors[j]))->pos.z += speed;
            ((struct Actor *)__MapActor_GetActor(actors[j]))->prevPos.z =
                ((struct Actor *)__MapActor_GetActor(actors[j]))->pos.z;
        }

        if ((k & 3) == 3) {
            speed += 0x1999;
        }

        if (speed > 0x17fff) {
            speed = 0x18000;
        }

        __WaitFrames(1);
    }

    for (i = 0; i < count; i++) {
        ((struct Actor *)__MapActor_GetActor(actors[i]))->__unk55 = 0;
    }
}
