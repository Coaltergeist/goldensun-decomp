extern unsigned char *__MapActor_GetActor(int actor);

int OvlFunc_964_2008fe8(unsigned char *self)
{
    register unsigned char *actor asm("r0");
    register unsigned int limit asm("r2");
    register int value asm("r3");

    actor = __MapActor_GetActor(0);
    limit = 0xffd00000;
    asm volatile("" : "+r"(actor), "+r"(limit));
    value = *(int *)(actor + 0xc);
    if (value > (int)limit) {
        actor = __MapActor_GetActor(8);
        value = *(int *)(actor + 0x10);
        value >>= 20;
        if (value == 10) {
            actor = __MapActor_GetActor(8);
            value = *(int *)(actor + 8);
            *(int *)(self + 8) = value;
            value = 0xffe00000;
            *(int *)(self + 0xc) = value;
            actor = __MapActor_GetActor(8);
            value = *(int *)(actor + 0x10);
            goto write_last;
        }
    }
    value = 0;
    *(int *)(self + 8) = value;
    *(int *)(self + 0xc) = value;
write_last:
    *(int *)(self + 0x10) = value;
    return 0;
}
