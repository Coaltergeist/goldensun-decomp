#include "actor.h"
#include "math.h"
extern unsigned char *CS897_EffectState __asm__("iwram_3001ec4");
extern unsigned int CS897_Fade __asm__(".Lm897_3b00");
extern unsigned int CS897_Ages[16] __asm__(".Lm897_3ac0");
extern unsigned int CS897_SpawnMask __asm__(".Lm897_3b68");
extern unsigned int CS897_Frame __asm__("iwram_3001e40");
extern struct Actor *CS897_GetActor(int) __asm__("__MapActor_GetActor");
extern void CS897_SetAnim(void *, int) __asm__("__Actor_SetAnim");
extern void CS897_SetSpriteFlags(void *, int) __asm__("__Actor_SetSpriteFlags");
extern void CS897_SetScript(void *, void *) __asm__("__Actor_SetScript");
extern void CS897_ActorMode(void *, int) __asm__("__Func_80929d8");
extern unsigned int CS897_UnsignedDivide(unsigned int, unsigned int) __asm__("_udivsi3_RAM");
extern unsigned int CS897_UnsignedRemainder(unsigned int, unsigned int) __asm__("_umodsi3_RAM");
extern unsigned int CS897_Random(void) __asm__("__Random");
extern int CS897_Cos(int) __asm__("__cos");
extern int CS897_Sin(int) __asm__("__sin");
extern unsigned char gScript_897__0200ba00[];

void OvlFunc_897_20090c4(void)
{
    unsigned char *effect = CS897_EffectState;
    unsigned int scale, random, radius;
    unsigned char i;
    struct Actor *actor;
    int stopped, trig, targetX, targetZ;
    short signedAngle;
    unsigned short angle;
    unsigned int unusedAge;
    scale = CS897_UnsignedDivide(CS897_Fade, 10);
    if (scale != 0) {
        *(int *)(effect + 0x40c) = 0;
        API_Func_8012330(scale << 16, scale << 16, 0x10000);
    } else {
        *(int *)(effect + 0x40c) = 1;
        API_Func_8012330(-1, -1, 0xe666);
    }
    if (CS897_Fade != 0)
        CS897_Fade -= 3;
    for (i = 0; i <= 15; i++) {
        if (CS897_Ages[i] != 0) {
            actor = CS897_GetActor(i + 16);
            if (actor->prevPos.x == (int)0x80000000) {
                stopped = actor->prevPos.z;
                if (stopped == actor->prevPos.x) {
                    CS897_Ages[i]++;
                    if (CS897_Ages[i] == 2)
                        CS897_SetAnim(actor, 3);
                    if (CS897_Ages[i] == 19) {
                        actor->pos.x = 0;
                        actor->pos.y = 0;
                        actor->pos.z = 0;
                        actor->motion.x = 0;
                        actor->motion.y = 0;
                        actor->motion.z = 0;
                        actor->prevPos.x = stopped;
                        actor->prevPos.y = stopped;
                        actor->prevPos.z = stopped;
                        CS897_ActorMode(actor, 15);
                    } else if (CS897_Ages[i] == 20) {
                        CS897_Ages[i] = 0;
                    }
                }
            }
        }
    }
    if (CS897_SpawnMask == 999 || (CS897_Frame & CS897_SpawnMask) != 0)
        return;
    for (i = 0; i <= 15; i++) {
        signedAngle = CS897_UnsignedRemainder(CS897_Random(), 0xffff);
        actor = CS897_GetActor(i + 16);
        unusedAge = CS897_Ages[i];
        if (unusedAge == 0) {
            if (!API_GetFlag(0x246))
                API_PlaySound(0xf6);
            CS897_Ages[i] = 1;
            actor->__unk55 = unusedAge;
            actor->speed = 0x80000;
            actor->accel = 0x10000;
            CS897_SetSpriteFlags(actor, 0);
            actor->sprite->oam.priority = 1;
            CS897_SetAnim(actor, 2);
            CS897_SetScript(actor, gScript_897__0200ba00);
            angle = signedAngle;
            trig = CS897_Cos(angle);
            random = CS897_Random();
            radius = (((random << 8) >> 16) << 16) + 0x1000000;
            actor->pos.x = fx32_multiply(trig, radius) + 0x1450000;
            actor->pos.y = unusedAge;
            trig = CS897_Sin(angle);
            random = CS897_Random();
            radius = (((random << 8) >> 16) << 16) + 0x1000000;
            actor->pos.z = fx32_multiply(trig, radius) + 0x12e0000;
            trig = CS897_Cos(angle);
            random = CS897_Random();
            radius = ((random & 0x3f) << 16) + 0x80000;
            targetX = fx32_multiply(trig, radius);
            trig = CS897_Sin(angle);
            random = CS897_Random();
            radius = ((random & 0x3f) << 16) + 0x80000;
            targetZ = fx32_multiply(trig, radius);
            API_Actor_TravelTo(actor, targetX + 0x1450000, 0, targetZ + 0x11e0000);
            CS897_ActorMode(actor, 0);
            CS897_Fade = 30;
            break;
        }
    }
}
