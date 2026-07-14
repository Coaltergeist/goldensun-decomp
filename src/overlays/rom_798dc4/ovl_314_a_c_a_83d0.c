#include "actor.h"

extern struct Actor *__MapActor_GetActor(int actor_id);
extern void __CutsceneWait(int frames);
extern void __Actor_SetSpriteFlags(void *actor, int flags);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3, int arg4,
                           int arg5);
extern void __SetFlag(int flag);

void OvlFunc_903_20083d0(void) {
    struct Actor *actor = __MapActor_GetActor(10);
    int tileX = actor->pos.x / 0x100000;

    if (tileX == 0x17) {
        __CutsceneWait(10);
        __MapActor_GetActor(10)->flags = 2;
        __MapActor_GetActor(10)->__unk55 = 0;
        __Actor_SetSpriteFlags(__MapActor_GetActor(10), 0);
        __Func_8010704(0x36, 0x11, 1, 1, tileX, 0x11);
        __SetFlag(0x863);
    }
}
