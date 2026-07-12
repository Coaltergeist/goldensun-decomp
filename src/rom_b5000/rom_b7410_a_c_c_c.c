extern unsigned char *GetBattleActor(int actor);
extern void _DeleteActor(void *actor);

int Func_80b7e7c(void) {
    register unsigned char *actor asm("r5");
    register int i asm("r6") = 0;
    register int zero asm("r7") = 0;

    asm volatile("" : "+r"(i), "+r"(zero));
    do {
        int actorID = i + 0x78;

        if (i <= 7)
            actorID = i;
        actor = GetBattleActor(actorID);
        asm volatile("" : "+r"(actor), "+r"(i), "+r"(zero));
        if (actor != 0 && *(short *)(actor + 0x28) != 0) {
            _DeleteActor(*(void **)actor);
            *(unsigned int *)actor = zero;
            *(unsigned short *)(actor + 0x28) = zero;
        }
        i++;
    } while (i <= 0xd);
}
