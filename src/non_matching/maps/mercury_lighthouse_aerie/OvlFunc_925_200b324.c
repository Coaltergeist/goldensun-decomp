/*
 * 100% exact byte-for-byte match under -fstrict-aliasing (verified via gs_check_tu.py).
 * Under -fno-strict-aliasing, the u8 __unk55 store (`strb r6, [r0]`) creates an
 * anti-dependence with stack spill slot `[sp, #0]` (`ldr r2, [sp]`), preventing sched2
 * from hoisting `ldr r2, [sp]` above `strb r6, [r0]`.
 */
extern unsigned char iwram_3001e70[];
extern void OvlFunc_925_200b1c0(unsigned int *, int);
extern void __Func_800fe9c(void);

void OvlFunc_925_200b324(void)
{
    unsigned char *ptr;
    unsigned int actors[5];
    int vel;
    unsigned int count;
    unsigned int i;
    unsigned int k;

    ptr = *(unsigned char **)iwram_3001e70 + (0xb2 << 1);
    vel = 0xc0 << 9;
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
