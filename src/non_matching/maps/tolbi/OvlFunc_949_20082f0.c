#include "field.h"

/* Matches 100% byte-for-byte under stock -O2 (-fstrict-aliasing), where
 * actor->waveCounter (struct Actor) and iwram->__unk17E (struct MapState)
 * have disjoint alias sets so sched2 schedules `lsl r2, #1` (priority 4)
 * ahead of `strh r3, [r6]` (priority 3). Under the Makefile's global
 * -fno-strict-aliasing, the HImode store-to-load dependence raises `strh`
 * to priority 4 and breaks the tie by LUID (`strh` before `lsl`). */
void OvlFunc_949_20082f0(void)
{
    struct MapState *iwram = (struct MapState *)iwram_3001ebc;
    struct Actor *actor = (struct Actor *)__MapActor_GetActor(0x10);
    s16 saved = *(s16 *)&actor->facing;
    int msg;

    API_CutsceneStart();
    actor->waveCounter |= 2;
    if ((s16)iwram->__unk17E == 0) {
        msg = API_GetFlag(0x95 << 4);
        if (msg != 0) {
            msg = 0x2365;
        } else {
            msg = API_GetFlag(0x962);
            if (msg != 0) {
                msg = 0x21e2;
            } else {
                msg = 0x1f95;
            }
        }
    } else {
        msg = API_GetFlag(0x95 << 4);
        if (msg != 0) {
            msg = 0x2371;
        } else {
            msg = API_GetFlag(0x962);
            if (msg != 0) {
                msg = 0x21f5;
            } else {
                msg = 0x1faa;
            }
        }
    }
    API_MessageID(msg);
    API_MapActor_SetAnim(0x10, 0);
    API_MapActor_TurnToFaceActor(0x10, 0, 2);
    API_ActorMessage_Wait(0x10, 0, 0xa);
    actor->facing = saved;
    API_WaitFrames(1);
    actor->waveCounter &= 1;
    API_CutsceneEnd();
}
