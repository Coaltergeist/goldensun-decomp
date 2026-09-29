static inline void SetRegAnimDest(void *dest, const void *src) {
    struct DmaQueue *queue;
    unsigned int savedIme;
    int count;
    unsigned int *task;

    queue = &gDMATaskCount;
    savedIme = REG_IME;
    SET_IO(REG_IME, REG_ADDR_IME);
    count = queue->count;
    if (count < 32) {
        task = (unsigned int *)((char *)queue + count * 12);
        queue->count = count + 1;
        task++;
        *task++ = (unsigned int)src;
        *task++ = (unsigned int)dest;
        *task = 0x20000;
    }
    SET_IO(REG_IME, savedIme);
}

void OvlFunc_960_2008f50(void)
{
    int val;
    int i;
    unsigned char *actor;

    val = 0;
    if (__GetFlag(0x301)) {
        __SetFlag(0x206);
    }
    if (__GetFlag(0x302)) {
        __SetFlag(0x207);
    }
    if (__GetFlag(0x303)) {
        __SetFlag(0x208);
    }
    if (__GetFlag(0x304)) {
        __SetFlag(0x209);
    }
    if (__GetFlag(0x305)) {
        __SetFlag(0x20a);
    }

    for (i = 8; i <= 12; i++) {
        actor = (unsigned char *)__MapActor_GetActor(i);
        if (actor != 0) {
            if (__GetFlag(0x109) == 0) {
                *(int *)(actor + 0x18) = 0x800;
                *(int *)(actor + 0x1c) = 0x800;
            }
            *(unsigned char *)(*(unsigned char **)(actor + 0x50) + 0x26) = 0;
        }
    }

    SetRegAnimDest((void *)REG_ADDR_BLDCNT, (void *)0x3f42);

    if (__GetFlag(0x340)) {
        val = 0x10;
        __Func_8091ff0(0xf4);
    }

    SetRegAnimDest((void *)REG_ADDR_BLDALPHA, (void *)(((0x10 - val) << 8) | val));
}
