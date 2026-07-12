extern unsigned int __Random(void);
extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);

unsigned int OvlFunc_943_2008030(unsigned char *actor) {
    short *timer = (short *)(actor + 0x64);

    switch (*timer) {
        case 6:
            *(int *)(actor + 0x18) -= 0x4000;
            *(int *)(actor + 0x1c) += 0x2000;
            break;
        case 4:
            *(int *)(actor + 0x18) += 0x2000;
            *(int *)(actor + 0x1c) -= 0x1000;
            break;
        case 2:
            *(int *)(actor + 0x18) += 0x1000;
            *(int *)(actor + 0x1c) -= 0x800;
            break;
        case 0:
            *(int *)(actor + 0x18) = 0x10000;
            *(int *)(actor + 0x1c) = 0x10000;
            *timer = _umodsi3_RAM(__Random(), 90) + 60;
            break;
    }

    asm volatile("" ::: "memory");
    --*timer;
    return 1;
}
