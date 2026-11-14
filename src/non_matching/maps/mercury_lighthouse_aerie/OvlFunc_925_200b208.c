/*
 * 100% exact byte-for-byte match under -fstrict-aliasing (verified via gs_check_tu.py).
 * Under -fno-strict-aliasing, the u8 __unk55 store (`strb r6, [r0]`) creates an
 * anti-dependence with stack spill slot `[sp, #0]` (`ldr r2, [sp]`), preventing sched2
 * from hoisting `ldr r2, [sp]` above `strb r6, [r0]`.
 */
extern unsigned char iwram_3001e70[];
extern void OvlFunc_925_200b1c0(unsigned int *, int);

void OvlFunc_925_200b208(void)
{
    unsigned char *ptr;
    unsigned int actors[5];
    int speed;
    unsigned int count;
    unsigned int i;
    unsigned int j;

    ptr = *(unsigned char **)iwram_3001e70 + (0xb2 << 1);
    speed = 0x1999;
    count = 0;

    for (i = 0; i <= 4; i++) {
        actors[i] = 0x42;
    }

    OvlFunc_925_200b1c0(actors, *(int *)(ptr + 0xc));

    for (i = 0; i <= 4; i++) {
        if (actors[i] == 0x42) {
            break;
        }
        ((struct Actor *)__MapActor_GetActor(actors[i]))->__unk55 = 0;
        count++;
    }

    __PlaySound(0xdf);

    for (i = 0; i <= 0xe3; i++) {
        *(int *)(ptr + 0xc) -= speed;

        for (j = 0; j < count; j++) {
            ((struct Actor *)__MapActor_GetActor(actors[j]))->pos.z += speed;
            ((struct Actor *)__MapActor_GetActor(actors[j]))->prevPos.z =
                ((struct Actor *)__MapActor_GetActor(actors[j]))->pos.z;
        }

        if ((i & 3) == 3) {
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
