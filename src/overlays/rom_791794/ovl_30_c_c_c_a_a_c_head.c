extern int __sin(int angle);
extern void __DeleteActor(void *actor);

void OvlFunc_897_200ae0c(unsigned char *actor)
{
    register unsigned char *self asm("r5") = actor;
    register unsigned char *counter asm("r2") = self + 0x64;
    register unsigned int raw_frame asm("r3") = *(unsigned short *)counter;
    register unsigned char *origin asm("r6");
    register int frame asm("r0");
    int height;

    raw_frame++;
    origin = *(unsigned char **)(self + 0x68);
    *(unsigned short *)counter = raw_frame;
    asm volatile("" : "+r"(raw_frame), "+r"(origin));
    frame = (signed short)raw_frame;
    if (frame > 0x1f) {
        __DeleteActor(self);
        return;
    }

    height = __sin(frame << 10);
    *(int *)(self + 0x18) = height;
    *(int *)(self + 0x1c) = height;
    *(int *)(self + 8) = *(int *)(origin + 8);
    *(int *)(self + 0xc) += 0x10000;
    *(int *)(self + 0x10) =
        *(int *)(origin + 0x10) + (0x10000 - height) * 5 + 0x80000;
}

void OvlFunc_897_200ae5c(unsigned char *actor)
{
    register unsigned char *self asm("r5") = actor;
    register unsigned char *counter asm("r2") = self + 0x64;
    register unsigned int raw_frame asm("r3") = *(unsigned short *)counter;
    register unsigned char *origin asm("r6");
    register int frame asm("r0");
    int height;

    raw_frame++;
    origin = *(unsigned char **)(self + 0x68);
    *(unsigned short *)counter = raw_frame;
    asm volatile("" : "+r"(raw_frame), "+r"(origin));
    frame = (signed short)raw_frame;
    if (frame > 0x1f) {
        __DeleteActor(self);
        return;
    }

    height = __sin(frame << 10);
    *(int *)(self + 0x18) = height;
    *(int *)(self + 0x1c) = -height;
    *(int *)(self + 8) = *(int *)(origin + 8);
    *(int *)(self + 0xc) += 0x10000;
    *(int *)(self + 0x10) =
        *(int *)(origin + 0x10) - (0x10000 - height) * 5 + 0x100000;
}
