#include "actor.h"

extern void __ClearFlag(int flag);
extern struct Actor *__MapActor_GetActor(int actorID);
extern void __StopTask(void (*func)(void));
extern void OvlFunc_939_200918c(void);
extern void OvlFunc_939_2009240(void);
extern unsigned char *iwram_3001ebc;

void OvlFunc_939_20091d0(void)
{
    unsigned char *p = iwram_3001ebc;
    struct Actor *actor;

    __ClearFlag(0x241);
    __ClearFlag(0x90 << 2);
    actor = __MapActor_GetActor(0);
    if ((unsigned int)(actor->pos.x + 0xff97ffff) <= 0x87fffe) {
        if (actor->pos.z > (0xa0 << 16)) {
            if (actor->pos.z < (0xf8 << 16)) {
                __StopTask(OvlFunc_939_2009240);
                {
                    register int shift asm("r3");
                    register unsigned short *addr asm("r2");

                    shift = 0xc1;
                    asm volatile("" : "+r"(shift));
                    shift <<= 1;
                    asm volatile("" : "+r"(shift));
                    addr = (unsigned short *)(p + shift);
                    asm volatile("" : "+r"(addr));
                    {
                        register int val asm("r3");

                        val = 0x5b;
                        asm volatile("" : "+r"(val));
                        *addr = val;
                    }
                }
            }
        }
    }
    OvlFunc_939_200918c();
    __ClearFlag(0x91 << 2);
}
