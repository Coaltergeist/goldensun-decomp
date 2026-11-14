#include "field.h"

/* Matches 100% byte-for-byte under stock -O2 (-fstrict-aliasing); under the
 * Makefile's global -fno-strict-aliasing, sched2 swaps `lsl r2, #1` and
 * `strh r3, [r6]` at +0x28/+0x2a due to HImode store-to-load alias set 0
 * tie-breaking by LUID (same as OvlFunc_949_20082f0). */
void OvlFunc_949_20083d0(void)
{
    struct MapState *iwram = (struct MapState *)iwram_3001ebc;
    struct Actor *actor = (struct Actor *)__MapActor_GetActor(0x11);
    s16 saved = *(s16 *)&actor->facing;
    int msg;

    API_CutsceneStart();
    actor->waveCounter |= 2;
    if ((s16)iwram->__unk17E == 0) {
        msg = API_GetFlag(0x95 << 4);
        if (msg != 0) {
            msg = 0x2366;
        } else {
            msg = API_GetFlag(0x962);
            if (msg != 0) {
                msg = 0x21e3;
            } else {
                msg = 0x1f96;
            }
        }
    } else {
        msg = API_GetFlag(0x95 << 4);
        if (msg != 0) {
            msg = 0x2372;
        } else {
            msg = API_GetFlag(0x962);
            if (msg != 0) {
                msg = 0x21f6;
            } else {
                msg = 0x1fab;
            }
        }
    }
    API_MessageID(msg);
    API_MapActor_SetAnim(0x11, 0);
    API_MapActor_TurnToFaceActor(0x11, 0, 2);
    API_ActorMessage_Wait(0x11, 0, 0xa);
    actor->facing = saved;
    API_WaitFrames(1);
    actor->waveCounter &= 1;
    API_CutsceneEnd();
}
