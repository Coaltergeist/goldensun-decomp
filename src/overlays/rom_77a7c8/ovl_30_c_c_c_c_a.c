extern void __DeleteActor(unsigned char *actor);
extern int __sin(int angle);

void OvlFunc_881_200bfb4(unsigned char *actor)
{
    unsigned short *age = (unsigned short *)(actor + 0x64);
    register unsigned char *parent asm("r6");
    int frame;
    unsigned int next_age;

    next_age = *age;
    next_age++;
    asm volatile("" : "+r"(next_age));
    parent = *(unsigned char **)(actor + 0x68);
    asm volatile("" : "+r"(parent));
    *age = next_age;
    frame = (signed short)next_age;
    if (frame > 0x1f) {
        __DeleteActor(actor);
    } else {
        int wave = __sin(frame << 10);
        register int offset asm("r1");
        register int distance asm("r2");
        int position;

        *(int *)(actor + 0x18) = wave;
        *(int *)(actor + 0x1c) = wave;
        position = *(int *)(parent + 8);
        offset = 0x80;
        *(int *)(actor + 8) = position;
        position = *(int *)(actor + 0xc);
        offset <<= 9;
        position += offset;
        *(int *)(actor + 0xc) = position;
        offset -= wave;
        position = *(int *)(parent + 0x10);
        distance = offset << 2;
        distance += offset;
        position += distance;
        distance = 0x80;
        distance <<= 12;
        position += distance;
        *(int *)(actor + 0x10) = position;
    }
}

void OvlFunc_881_200c004(unsigned char *actor)
{
    unsigned short *age = (unsigned short *)(actor + 0x64);
    register unsigned char *parent asm("r6");
    int frame;
    unsigned int next_age;

    next_age = *age;
    next_age++;
    asm volatile("" : "+r"(next_age));
    parent = *(unsigned char **)(actor + 0x68);
    asm volatile("" : "+r"(parent));
    *age = next_age;
    frame = (signed short)next_age;
    if (frame > 0x1f) {
        __DeleteActor(actor);
    } else {
        int wave = __sin(frame << 10);
        register int offset asm("r1");
        register int distance asm("r2");
        register int negated asm("r3");
        int position;

        negated = -wave;
        *(int *)(actor + 0x18) = wave;
        *(int *)(actor + 0x1c) = negated;
        position = *(int *)(parent + 8);
        offset = 0x80;
        *(int *)(actor + 8) = position;
        position = *(int *)(actor + 0xc);
        offset <<= 9;
        position += offset;
        *(int *)(actor + 0xc) = position;
        offset -= wave;
        position = *(int *)(parent + 0x10);
        distance = offset << 2;
        distance += offset;
        position -= distance;
        distance = 0x80;
        distance <<= 13;
        position += distance;
        *(int *)(actor + 0x10) = position;
    }
}

/* Count the original alignment halfword in the function symbol size. */
asm(".align 2, 0\n.size OvlFunc_881_200c004, . - OvlFunc_881_200c004");
