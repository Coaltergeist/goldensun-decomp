int ActorCmd_CallNative(void *r0)
{
    void *r5 = r0;
    short r6 = *(short *)((char *)r5 + 4);
    int *r2 = *(int **)r5;
    int (*r3)(void *, int, int *) = *(int (**)(void *, int, int *))((char *)r2 + r6 * 4 + 4);

    if (r3(r5, 4, r2) != 0) {
        return 0;
    }
    if (*(short *)((char *)r5 + 4) == r6) {
        *(unsigned short *)((char *)r5 + 4) = *(unsigned short *)((char *)r5 + 4) + 2;
    }
    return 1;
}
