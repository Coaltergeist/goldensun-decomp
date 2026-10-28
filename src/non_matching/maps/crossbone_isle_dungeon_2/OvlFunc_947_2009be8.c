#include "actor.h"
extern struct Actor *CS947S_Actor(unsigned int) __asm__("__MapActor_GetActor");
struct CS947S_Record { unsigned int state[4]; unsigned int flag; };
extern struct CS947S_Record CS947S_Records[] __asm__("bss_36d0");
void OvlFunc_947_2009be8(void)
{
    struct Actor actorCopy;
    unsigned int recordCopy[4];
    unsigned int i, j;
    struct Actor *first, *second;
    for (i = 0; i <= 2; ++i) {
        first = CS947S_Actor(i + 8);
        for (j = i; j <= 3; ++j) {
            second = CS947S_Actor(j + 8);
            if (first->pos.y > second->pos.y || first->pos.z >= second->pos.z) {
                DMA3_COPY(second, &actorCopy, sizeof(actorCopy));
                WaitForDma3();
                DMA3_COPY(first, second, sizeof(actorCopy));
                WaitForDma3();
                DMA3_COPY(&actorCopy, first, sizeof(actorCopy));
                WaitForDma3();
                DMA3_COPY(CS947S_Records[j].state, recordCopy, sizeof(recordCopy));
                WaitForDma3();
                DMA3_COPY(CS947S_Records[i].state, CS947S_Records[j].state, sizeof(recordCopy));
                WaitForDma3();
                DMA3_COPY(recordCopy, CS947S_Records[i].state, sizeof(recordCopy));
                WaitForDma3();
                if (__GetFlag(CS947S_Records[i].flag) && !__GetFlag(CS947S_Records[j].flag)) {
                    __ClearFlag(CS947S_Records[i].flag);
                    __SetFlag(CS947S_Records[j].flag);
                } else if (!__GetFlag(CS947S_Records[i].flag) && __GetFlag(CS947S_Records[j].flag)) {
                    __SetFlag(CS947S_Records[i].flag);
                    __ClearFlag(CS947S_Records[j].flag);
                }
            }
        }
    }
}
