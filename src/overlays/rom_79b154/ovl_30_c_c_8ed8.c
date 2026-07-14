#include "actor.h"

struct State {
    unsigned char pad[500];
    int actor;
};

extern unsigned char gState[];
extern unsigned char Data_1d88[] asm(".L1d88");
extern struct Actor *__MapActor_GetActor(int actorID);
extern void OvlFunc_907_2008f3c(struct Actor *actor);

void OvlFunc_907_2008ed8(void)
{
    struct Actor *actor;
    register unsigned char *addr asm("r3");
    register unsigned int off asm("r1");

    addr = gState;
    off = 0xfa;
    asm volatile("" : "+r"(addr), "+r"(off));
    off <<= 1;
    addr += off;
    asm volatile("" : "+r"(addr));
    actor = __MapActor_GetActor(*(int *)addr);
    if (actor->pos.x < (0x8e << 16)) {
        register int posYThresh asm("r1");

        posYThresh = 0x80;
        asm volatile("" : "+r"(posYThresh));
        posYThresh <<= 12;
        if (actor->pos.y < posYThresh) {
            short *p;
            short signedVal;
            int val;
            register int zeroIdx asm("r1");

            p = (short *)Data_1d88;
            zeroIdx = 0;
            asm volatile("" : "+r"(zeroIdx));
            signedVal = *(short *)(zeroIdx + (char *)p);
            asm volatile("" ::: "memory");
            val = *(unsigned short *)Data_1d88;
            if (signedVal == 0) {
                OvlFunc_907_2008f3c(actor);
                val = *(unsigned short *)Data_1d88;
            }
            {
                register int sum asm("r3");
                register int thresh asm("r2");

                sum = val + 1;
                thresh = 240;
                asm volatile("" : "+r"(sum), "+r"(thresh));
                *p = sum;
                thresh <<= 13;
                sum <<= 16;
                asm volatile("" : "+r"(sum), "+r"(thresh));
                if (sum == thresh) {
                    *p = 0;
                }
            }
        } else {
            *(short *)Data_1d88 = 0;
        }
    }
}
