extern void StartTask(void *task, int priority);

extern void Func_8028194(void);

unsigned int Func_80284dc(void) {
    unsigned int local = 0;
    void *ptr = galloc_ewram(0x3a, 0x98);

    DMA3_COPY(&local, ptr, 0x98);
    StartTask((void *)Func_8028194, 0xc76);
    return (unsigned int)ptr;
}
