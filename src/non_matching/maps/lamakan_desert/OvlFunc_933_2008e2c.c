#include "actor.h"
extern struct Actor *CS933R_Actor(int) __asm__("__MapActor_GetActor");
extern unsigned char *CS933R_Scene __asm__("iwram_3001ebc");
extern short CS933R_Heat __asm__("ewram_2000472");
extern int CS933R_PointsA[6] __asm__("Events_TolbiSpring");
extern int CS933R_PointsB[10] __asm__(".Lm933_1f48");
extern int CS933R_PointsC[4] __asm__(".Lm933_1f70");
extern void CS933R_PauseHeat(unsigned short) __asm__("OvlFunc_933_2009c78");
struct CS933R_StateView { unsigned char beforeMap[0x1c0]; short map; };
extern struct CS933R_StateView CS933R_State __asm__("gState");
union CS933R_Countdown { int value; unsigned short low; };
void OvlFunc_933_2008e2c(void)
{
    unsigned char *scene = CS933R_Scene;
    union CS933R_Countdown frames = {60};
    int nearestDistance = 0xf00000;
    int *points;
    int count, remaining;
    /* The original requires a point within 0xf00000 of the player. */
    int nearest;
    struct Actor *actor;
    struct EffectData933 enterEffect, exitEffect;
    API_SetFlag(0x200);
    CS933R_PauseHeat(1);
    if (CS933R_State.map == (int)Const59) {
        points = CS933R_PointsA;
        remaining = 3;
    } else if (CS933R_State.map == (int)Const5A) {
        points = CS933R_PointsB;
        remaining = 5;
    } else {
        points = CS933R_PointsC;
        remaining = 2;
    }
    {
        int *point;
        count = remaining;
        point = points;
        while (remaining != 0) {
            int distance = OvlFunc_933_2008e00((int *)&CS933R_Actor(0)->pos, point);
            if (distance <= nearestDistance) {
                nearestDistance = distance;
                nearest = count - remaining;
            }
            --remaining;
            point = points + (count - remaining) * 2;
        }
    }
    nearest *= 2;
    API_MapActor_SetSpeed(0, 0x20000, 0x10000);
    API_Actor_TravelTo(CS933R_Actor(0), points[nearest], 0, points[nearest + 1]);
    CS933R_Actor(0)->motion.y = 0x60000;
    API_PlaySound(0x98);
    actor = CS933R_Actor(0);
    OvlFunc_933_2008324((unsigned int *)actor, CS933R_Actor(0)->pos.y);
    API_PlaySound(0xf1);
    {
        struct Actor *effectActor = CS933R_Actor(0);
        enterEffect.unk18 = 0xd6;
        enterEffect.unk8 = 0x8000;
        enterEffect.unkc = 0xcccc;
        enterEffect.unk10 = 0x10000;
        enterEffect.unk14 = 0x13333;
        OvlFunc_common0_10c(effectActor->pos.x, effectActor->pos.y, effectActor->pos.z, 0, 0, 0, 0x1c0000, &enterEffect);
    }
    API_MapActor_Emote(0, 0x104, 0);
    API_MapActor_SetAnim(0, 18);
    {
        int zero = 0;
        do {
            *(unsigned short *)(scene + 0xcba) = 600;
            --frames.value;
            if (CS933R_Heat != 0) {
                CS933R_Heat -= 5;
                if (CS933R_Heat <= 0) CS933R_Heat = zero;
                else if (frames.value == 0) frames.value = 1;
            }
            API_WaitFrames(1);
        } while (frames.value != 0);
    }
    {
        struct Actor *effectActor = CS933R_Actor(0);
        exitEffect.unk18 = 0xd6;
        exitEffect.unk8 = 0x8000;
        exitEffect.unkc = 0xcccc;
        exitEffect.unk10 = 0x8000;
        exitEffect.unk14 = 0x13333;
        OvlFunc_common0_10c(effectActor->pos.x, effectActor->pos.y, effectActor->pos.z, 0, frames.value, frames.value, 0x1c0000, &exitEffect);
    }
    API_PlaySound(0x120);
    API_PlaySound(0x98);
    CS933R_Actor(0)->motion.y = 0x60000;
    API_MapActor_SetAnim(0, 1);
    API_CutsceneWait(10);
    *(unsigned short *)(scene + 0xcba) = frames.low;
    CS933R_PauseHeat(0);
}
