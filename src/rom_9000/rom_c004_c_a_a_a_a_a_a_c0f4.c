#include "actor.h"
#include "dma.h"

extern void DeleteSprite(u8 *sprite);

void DeleteActor(struct Actor *actor)
{
    if (actor != 0) {
        unsigned int type = actor->spriteMode & 0xf;
        switch (type) {
        case 1:
            DeleteSprite(actor->sprite);
            break;
        case 2: {
            register void **sprites asm("r5") = (void **)actor->sprite;
            register int i asm("r6");
            i = 3;
            asm volatile("" : "+r"(i));
            do {
                void *s = *sprites++;
                if (s != 0) {
                    DeleteSprite(s);
                }
                i--;
            } while (i >= 0);
            break;
        }
        }
        DMA3_CLEAR(actor, sizeof(struct Actor));
    }
}
