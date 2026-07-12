extern unsigned char *GetFieldActor(void);
extern void WaitFrames(int frames);

void Func_8092504(void)
{
    unsigned char *actor;
    int initial;
    register unsigned char *field asm("r6");
    register int *saved asm("r7");
    register int i asm("r5");
    register int work asm("r3");
    register int current asm("r2");

    actor = GetFieldActor();
    if (actor == 0)
        goto done;
    work = actor[0x54];
    if (work != 1)
        goto done;
    work = *(unsigned int *)(actor + 0x50);
    field = (unsigned char *)work;
    asm volatile("" : "+r"(field), "+r"(work));
    field += 0x24;
    work = *field;
    saved = &initial;
    i = 0;
    asm volatile("" : "+r"(field), "+r"(saved), "+r"(i), "+r"(work));
    *saved = work;
    goto check;

again:
    i++;
check:
    if (i > 0x59)
        goto done;
    WaitFrames(1);
    current = *field;
    work = *saved;
    if (work == current)
        goto again;

done:
    return;
}
