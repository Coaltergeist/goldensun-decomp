extern unsigned char *__GetFieldActor(int actor_id);
extern int OvlFunc_899_200c7bc(int x, int z, int actor_id);

int OvlFunc_899_200c7fc(int x, int z, int actor_id)
{
    unsigned char *actor = __GetFieldActor(actor_id);
    register int actor_x asm("r4") = *(int *)(actor + 0x38);
    register int actor_z asm("r1");
    register int square_z asm("r2");
    register int distance_squared asm("r3");
    register int difference asm("r3");

    if (actor_x == (int)0x80000000) {
        actor_x = *(int *)(actor + 8);
    }
    actor_z = *(int *)(actor + 0x40);
    if (actor_z == (int)0x80000000) {
        actor_z = *(int *)(actor + 0x10);
    }
    difference = actor_x - x;
    actor_x = difference >> 16;
    difference = actor_z - z;
    actor_z = difference >> 16;
    square_z = actor_z;
    square_z *= actor_z;
    distance_squared = actor_x;
    distance_squared *= actor_x;
    distance_squared += square_z;
    asm volatile("" : "+r"(distance_squared));
    if (distance_squared <= 0x100) {
        return 1;
    }
    return 0;
}

int OvlFunc_899_200c840(const unsigned char *tile)
{
    int x;
    int z;

    if (tile == 0) {
        return 1;
    }

    x = (unsigned int)tile[0] * 0x80000 + 0x480000;
    z = (unsigned int)tile[1] * 0x80000 + 0x2780000;
    if (OvlFunc_899_200c7fc(x, z, 0) ||
        OvlFunc_899_200c7bc(x, z, 2) ||
        OvlFunc_899_200c7bc(x, z, 0x18) ||
        OvlFunc_899_200c7bc(x, z, 0x19)) {
        return -1;
    }
    return 0;
}
