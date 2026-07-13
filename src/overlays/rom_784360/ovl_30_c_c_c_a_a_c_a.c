extern void __DeleteActor(unsigned char *actor);
extern signed int __sin(signed int angle);

void OvlFunc_884_200a39c(unsigned char *actor)
{
    /* Preserve the original parent-load and timer-store ordering. */
    volatile unsigned short *timer =
        (volatile unsigned short *)(actor + 0x64);
    unsigned int next_timer = *timer + 1;
    unsigned char *parent = *(unsigned char * volatile *)(actor + 0x68);
    signed int frame;

    *timer = next_timer;
    frame = (signed short)next_timer;
    if (frame > 0x1f) {
        __DeleteActor(actor);
    } else {
        signed int wave = __sin(frame << 10);
        signed int delta;

        *(signed int *)(actor + 0x18) = wave;
        *(signed int *)(actor + 0x1c) = wave;
        *(signed int *)(actor + 8) = *(signed int *)(parent + 8);
        *(signed int *)(actor + 0xc) += 0x10000;
        delta = 0x10000 - wave;
        *(signed int *)(actor + 0x10) =
            *(signed int *)(parent + 0x10) + delta * 5 + 0x80000;
    }
}
