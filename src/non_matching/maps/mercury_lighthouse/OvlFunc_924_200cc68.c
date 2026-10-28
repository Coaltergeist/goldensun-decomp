#include "actor.h"
extern unsigned char *CS924_Map __asm__("iwram_3001e70");
extern unsigned int CS924_Frame __asm__("iwram_3001e40");
extern struct Actor *CS924_Actor(int) __asm__("__MapActor_GetActor");
extern void CS924_Refresh(void) __asm__("__Func_800fe9c");
extern void CS924_BeginMotion(void) __asm__("__Func_8011ae0");
extern void CS924_Sprite(void *, int) __asm__("__Actor_SetSpriteFlags");
static inline void CS924_Byte(unsigned char *p, int value) { *p = value; }

void OvlFunc_924_200cc68(void)
{
    int *layer;
    int speed;
    struct Actor *actor, *saved1, *saved2, *saved3, *saved4, *saved5, *saved6;
    unsigned char *byte;
    layer = (int *)(CS924_Map + 0x164);
    speed = 0x9c28;
    layer[3] = 0x4890000;
    layer[7] = 0;
    byte = (unsigned char *)CS924_Actor(0);
    byte += 0x55;
    CS924_Byte(byte, 0);
    actor = CS924_Actor(0);
    actor->pos.z -= 0x890000;
    saved1 = CS924_Actor(0);
    actor = CS924_Actor(0);
    saved1->prevPos.z = actor->pos.z;
    byte = (unsigned char *)CS924_Actor(13);
    byte += 0x55;
    CS924_Byte(byte, 0);
    API_MapActor_SetPos(13, 0x2a80000, 0x1b80000);
    actor = CS924_Actor(13);
    actor->pos.z -= 0x890000;
    saved2 = CS924_Actor(13);
    actor = CS924_Actor(13);
    saved2->prevPos.z = actor->pos.z;
    CS924_Refresh();
    API_WaitFrames(1);
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(60);
    CS924_BeginMotion();
    API_PlaySound(0xdf);
    do {
        layer[3] -= speed;
        actor = CS924_Actor(0);
        actor->pos.z += speed;
        saved3 = CS924_Actor(0);
        actor = CS924_Actor(0);
        saved3->prevPos.z = actor->pos.z;
        actor = CS924_Actor(13);
        actor->pos.z += speed;
        saved4 = CS924_Actor(13);
        actor = CS924_Actor(13);
        saved4->prevPos.z = actor->pos.z;
        if (layer[3] > 0x4000000) {
            if ((CS924_Frame & 15) == 0 && speed > 0xccb)
                speed -= 0x560;
            API_WaitFrames(1);
        } else {
            break;
        }
    } while (1);
    layer[3] = 0x4000000;
    CS924_Refresh();
    API_WaitFrames(2);
    byte = (unsigned char *)CS924_Actor(0);
    byte += 0x55;
    CS924_Byte(byte, 3);
    actor = CS924_Actor(13);
    actor->pos.z = 0x1b80000;
    saved5 = CS924_Actor(13);
    actor = CS924_Actor(13);
    saved5->prevPos.z = actor->pos.z;
    API_CutsceneWait(30);
    API_MapActor_TravelToAnimWait(0, 0x2c0, 0x248);
    actor = CS924_Actor(0);
    actor->bounce = 0;
    API_MapActor_SetAnim(0, 6);
    API_CutsceneWait(6);
    API_MapActor_SetAnim(0, 7);
    actor = CS924_Actor(0);
    actor->speed = 0x30000;
    actor = CS924_Actor(0);
    actor->accel = 0x20000;
    API_PlaySound(0x98);
    actor = CS924_Actor(0);
    actor->motion.y = 0x40000;
    CS924_Sprite(CS924_Actor(0), 0);
    API_MapActor_TravelTo(0, 0x2e0, 0x248);
    API_MapActor_WaitMovement(0);
    CS924_Sprite(CS924_Actor(0), 1);
    actor = CS924_Actor(0);
    actor->bounce = 0x4000;
    API_MapActor_SetAnim(0, 6);
    API_CutsceneWait(6);
    API_Func_8092adc(0, 0x8000, 30);
    API_PlaySound(0xdf);
    while (1) {
        layer[3] += speed;
        actor = CS924_Actor(13);
        actor->pos.z -= speed;
        saved6 = CS924_Actor(13);
        actor = CS924_Actor(13);
        saved6->prevPos.z = actor->pos.z;
        if (layer[3] > 0x488ffff)
            break;
        if ((CS924_Frame & 7) == 0 && speed <= 0xcccc)
            speed += 0x1999;
        API_WaitFrames(1);
    }
    layer[3] = 0x4000000;
    API_CopyMapTiles(0x2d, 0x5b, 0x28, 0x5b, 5, 4);
    API_Func_8010704(0x68, 0x22, 5, 4, 0x28, 0x22);
    CS924_Refresh();
    API_WaitFrames(2);
    API_MapActor_SetPos(13, 0, 0);
    API_CutsceneWait(30);
    byte = (unsigned char *)CS924_Actor(0);
    byte += 0x23;
    CS924_Byte(byte, *byte | 1);
}
