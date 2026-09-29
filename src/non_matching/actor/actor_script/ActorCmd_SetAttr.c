int ActorCmd_SetAttr(void *r0)
{
    void *r5 = r0;
    short idx = *(short *)((char *)r5 + 4);
    int *base = *(int **)r5;
    int *entry = (int *)((char *)base + idx * 4);
    int cmd = *(int *)((char *)entry + 4);
    int (*func)(void *, int, int) = Data_80136e0[cmd];
    unsigned short val = *(unsigned short *)((char *)r5 + 4);

    if (func != 0) {
        int arg = *(int *)((char *)entry + 8);
        func(r5, 0, arg);
        val = *(unsigned short *)((char *)r5 + 4);
    }
    *(unsigned short *)((char *)r5 + 4) = val + 3;
    return 1;
}
