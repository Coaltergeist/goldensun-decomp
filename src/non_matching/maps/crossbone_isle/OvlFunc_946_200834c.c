extern void *iwram_3001ebc;
extern unsigned char *__MapActor_GetActor(unsigned int);
extern int L31b4[] __asm__(".Lm946_31b4");

void *OvlFunc_946_200834c(int *arg0, void *arg1, void *arg2)
{
    void *base;
    void *actor;
    void **actors;
    int i;

    base = iwram_3001ebc;
    actor = __MapActor_GetActor(0);
    *arg0 = *(unsigned short *)((char *)actor + 6) >> 12;
    actors = (void **)((char *)base + 0x34);
    for (i = 8; i <= 0x41; i++, actors++) {
        void *target;
        int *p;
        short val;
        int *q;
        int *b;
        int j;

        target = *actors;
        p = *(int **)((char *)target + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        q = L319c;
        b = L31b4;
        for (j = 0; j <= 5; j++, b += 4) {
            if (val == *q++) {
                int t;
                int r7, r5;
                short tx, tz;
                int r6, r4;
                int r1, r2;

                *(int *)arg2 = j;
                t = L315c[*arg0];
                r7 = ((*(int *)((char *)actor + 8) >> 16) + (t >> 16)) >> 4;
                r5 = ((*(int *)((char *)actor + 0x10) >> 16) + (short)t) >> 4;
                tx = *(short *)((char *)target + 10);
                r6 = (tx + b[0]) >> 4;
                tz = *(short *)((char *)target + 0x12);
                r4 = (tz + b[1]) >> 4;
                r1 = (tx + b[2]) >> 4;
                r2 = (tz + b[3]) >> 4;
                if (r6 <= r7 && r7 < r1 && r4 <= r5 && r5 < r2) {
                    if (j & 1) {
                        if (r6 != (*(int *)((char *)actor + 8) >> 20)) {
                            *(int *)arg1 = i;
                            return target;
                        }
                    } else {
                        if (r4 != (*(int *)((char *)actor + 0x10) >> 20)) {
                            *(int *)arg1 = i;
                            return target;
                        }
                    }
                }
            }
        }
    }
    return 0;
}
