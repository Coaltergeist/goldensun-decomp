#include "nonmatching.h"

#include "gba/types.h"
#include "actor.h"
#include "math.h"
#include "dma.h"

/* .rodata */

static const s32 gActorBounceTable[] = {
     1,  2,  3,  4,
     5,  6,  7,  8,
     7,  6,  5,  4,
     3,  2,  1,  0,
    -1, -2, -3, -4,
    -5, -6, -7, -8,
    -7, -6, -5, -4,
    -3, -2, -1,  0,
};

extern struct Actor* iwram_3001e64;

extern void WaitFrames(unsigned int nframes);
extern bool32 Actor_IsNotMoving(struct Actor *actor);
extern void Actor_SetPos();
extern int Actor_FindScriptMarker();
extern s32 L13240[] __asm__(".L13240");
extern int _GetFlag(int);
extern void _SetFlag(int);
extern void _ClearFlag(int flag);
extern void Actor_SetAnim(void *actor, unsigned int anim);
extern void DeleteActor(struct Actor *actor);
/* FF: bool ActorCmd_Delete(Actor * actor) */
void Actor_TravelTo(struct Actor*, fx32, fx32, fx32);
extern int atan2(int y, int x);
void ActorAttrOp_scaleX(struct Actor* actor, s32 op, s32 param);
struct Actor *Func_800d98c(struct Actor *other, vec3_t *arg1);
extern u32 Random(void);
extern bool32 TestCollision(struct Actor *actor, vec3_t *pos);
extern void vec3_translate(fx32 mag, u32 angle, vec3_t *vec);
s32 Func_800d924(struct Actor *other, vec3_t *arg1);

s32 Func_8000948(s32);

static inline s32 sqrt(s32 n) {
    s32 (*func)(s32) = Func_8000948;
    return func(n);
}

s32 Func_80008ac(s32, s32);

static inline fx32 FxDiv(fx32 num, fx32 denom) {
    fx32 (*divide)(fx32, fx32) = Func_80008ac;
    return divide(num, denom);
}


bool32 ActorCmd_SetScript(struct Actor *actor) {
    actor->script = actor->script + actor->scriptPos + 1;
    actor->scriptPos = 0;
    return TRUE;
}

unsigned int ActorCmd_Hide(struct Actor *actor) {
    actor->visible = FALSE;
    actor->scriptPos++;
    return TRUE;
}

unsigned int ActorCmd_Show(struct Actor *actor) {
    actor->visible = TRUE;
    actor->scriptPos++;
    return TRUE;
}

void Actor_WaitMovement(void *actor) {
    s32 i;
    for (i = 0; i < 600; i++) {
        if (Actor_IsNotMoving(actor))
            break;
        WaitFrames(1);
    }
}

bool32 Actor_IsNotMoving(struct Actor *actor) {
    fx32 a, b;

    if (actor->__unk55 == 0) {
        b = actor->prevPos.x;
        if (b != 0x80000000) {
            return 0;
        }
        a = actor->prevPos.y;
    } else {
        b = 0x80000000;
        a = actor->prevPos.x;
    }

    if (a == b && actor->prevPos.z == a) {
        return TRUE;
    }
    return FALSE;
}

extern fx32 Func_8011f54(u8 layer, fx32 x, fx32 z);
s32 FastIntSqrtFP1616_RAM(fx32);

#define ACTOR_PREV_POS_NONE ((s32)0x80000000)

extern struct Actor *iwram_3001e64;
extern actorcmd_t Data_8013624[0x40];

void UpdateActors(void) {
    struct Actor *actor;
    actorcmd_t *cmdTable;
    s32 i;
    s32 cmd;
    fx32 posX;
    fx32 posY;
    fx32 posZ;
    fx32 floorPos;
    bool32 reachedTarget;
    vec3_t newPos;

    s32 dx;
    s32 dz;
    s32 dy;
    s32 distance;

    fx32 newMotionX;
    fx32 newMotionY;
    fx32 newMotionZ;
    fx32 magnitude;
    fx32 target;
    fx32 maxDelta;
    fx32 bounce;
    fx32 scale;
    s32 value;
    s32 angle;
    s32 delta;

    actor = iwram_3001e64;

    for (i = 0x40 - 1; i >= 0; i--, actor++) {
        reachedTarget = FALSE;

        if (actor->script == NULL) {
            continue;
        }

        if (actor->update != NULL) {
            actor->update(actor);
        }

        if (actor->script == NULL) {
            continue;
        }

        if (actor->stop != 0) {
            continue;
        }

        if (actor->waitTimer != 0) {
            actor->waitTimer--;
        } else {
            cmdTable = Data_8013624;

            while (TRUE) {
                s32 *arg = actor->script + actor->scriptPos;
                cmd = *arg;

                if ((u32)cmd < 0x40) {
                    actorcmd_t *func = cmdTable + cmd;
                    if (!(*func)(actor)) {
                        break;
                    }
                } else {
                    actor->scriptPos++;
                }
            }

            if (actor->script == NULL) {
                continue;
            }
        }

        posX = actor->pos.x;
        posY = actor->pos.y;
        posZ = actor->pos.z;

        if (actor->__unk61 != 0) {
            goto apply_motion;
        }

        if (actor->__unk55 == 0) {
            if (actor->prevPos.x != ACTOR_PREV_POS_NONE) {
                dx = (actor->prevPos.x - posX) / 0x10000;
                dy = (actor->prevPos.y - posY) / 0x10000;
                dz = (actor->prevPos.z - posZ) / 0x10000;

                distance = sqrt(dx * dx + dy * dy + dz * dz);

                if (distance == 0) {
                    posX = actor->prevPos.x;
                    posY = actor->prevPos.y;
                    posZ = actor->prevPos.z;
                    goto apply_motion;
                }

                scale = FxDiv(distance << 16, actor->accel);

                actor->motion.x += dx * scale;
                actor->motion.y += dy * scale;
                actor->motion.z += dz * scale;

                newMotionX = actor->motion.x;
                newMotionY = actor->motion.y;
                newMotionZ = actor->motion.z;

                magnitude = FastIntSqrtFP1616_RAM(
                    fx32_multiply(newMotionX, newMotionX) +
                    fx32_multiply(newMotionY, newMotionY) +
                    fx32_multiply(newMotionZ, newMotionZ)
                );

                if (magnitude > actor->speed) {
                    scale = FxDiv(magnitude, actor->speed);

                    actor->motion.x = fx32_multiply(newMotionX, scale);
                    actor->motion.y = fx32_multiply(newMotionY, scale);
                    actor->motion.z = fx32_multiply(newMotionZ, scale);
                }
            } else {
                dx = actor->motion.x;
                dy = actor->motion.y;
                dz = actor->motion.z;

                magnitude = FastIntSqrtFP1616_RAM(
                    fx32_multiply(dx, dx) +
                    fx32_multiply(dy, dy) +
                    fx32_multiply(dz, dz)
                );

                if (magnitude != 0) {
                    target = magnitude - actor->accel;

                    if (target < 0) {
                        target = 0;
                    }

                    scale = FxDiv(magnitude, target);

                    actor->motion.x = fx32_multiply(dx, scale);
                    actor->motion.y = fx32_multiply(dy, scale);
                    actor->motion.z = fx32_multiply(dz, scale);
                } else {
                    actor->motion.x = 0;
                    actor->motion.y = 0;
                    actor->motion.z = 0;
                }
            }

            goto apply_motion;
        }

        if (actor->prevPos.x != ACTOR_PREV_POS_NONE) {
            dx = (actor->prevPos.x - posX) / 0x10000;
            dz = (actor->prevPos.z - posZ) / 0x10000;

            distance = sqrt(dx * dx + dz * dz) << 16;

            if (distance <= 0xFFFFFF) {
                dx = actor->prevPos.x - posX;
                dz = actor->prevPos.z - posZ;

                distance = FastIntSqrtFP1616_RAM(
                    fx32_multiply(dx, dx) +
                    fx32_multiply(dz, dz)
                );
            }

            if (distance == 0) {
                posX = actor->prevPos.x;
                posZ = actor->prevPos.z;
            } else {
                scale = FxDiv(distance, actor->accel);

                actor->motion.x += fx32_multiply(dx, scale);
                actor->motion.z += fx32_multiply(dz, scale);

                newMotionX = actor->motion.x;
                newMotionZ = actor->motion.z;

                magnitude = FastIntSqrtFP1616_RAM(
                    fx32_multiply(newMotionX, newMotionX) +
                    fx32_multiply(newMotionZ, newMotionZ)
                );

                if (magnitude > actor->speed) {
                    scale = FxDiv(magnitude, actor->speed);

                    actor->motion.x = fx32_multiply(newMotionX, scale);
                    actor->motion.z = fx32_multiply(newMotionZ, scale);
                }
            }
        } else {
            dx = actor->motion.x;
            dz = actor->motion.z;

            magnitude = FastIntSqrtFP1616_RAM(
                fx32_multiply(dx, dx) +
                fx32_multiply(dz, dz)
            );

            if (magnitude != 0) {
                target = magnitude - actor->accel;

                if (target < 0) {
                    target = 0;
                }

                scale = FxDiv(magnitude, target);

                actor->motion.x = fx32_multiply(dx, scale);
                actor->motion.z = fx32_multiply(dz, scale);
            } else {
                actor->motion.x = 0;
                actor->motion.z = 0;
            }
        }

        if (actor->__unk55 & 1) {
            newMotionX = posX + actor->motion.x;
            newMotionZ = posZ + actor->motion.z;

            floorPos = Func_8011f54(actor->layer, newMotionX, newMotionZ);

            newMotionY = floorPos - actor->floorPos;

            if (floorPos - posY > -0x40000) {
                posY += newMotionY;
            }

            if (newMotionY < 0) {
                newMotionY = -newMotionY;
            }

            maxDelta = actor->accel / 2;

            if (newMotionY > maxDelta) {
                newMotionY = maxDelta;
            }

            newMotionY *= 3;

            if (newMotionY != 0 && !(actor->__unk55 & 0x10)) {
                dx = actor->motion.x;
                dy = actor->motion.y;
                dz = actor->motion.z;

                magnitude = FastIntSqrtFP1616_RAM(
                    fx32_multiply(dx, dx) +
                    fx32_multiply(dy, dy) +
                    fx32_multiply(dz, dz)
                );

                if (magnitude != 0) {
                    target = magnitude - newMotionY;

                    if (target < 0) {
                        target = 0;
                    }

                    scale = FxDiv(magnitude, target);

                    actor->motion.x = fx32_multiply(dx, scale);
                    actor->motion.y = fx32_multiply(dy, scale);
                    actor->motion.z = fx32_multiply(dz, scale);
                }
            }

            actor->floorPos = floorPos;
        }

        if (actor->__unk55 & 2) {
            floorPos = actor->floorPos;

            if (posY > floorPos) {
                actor->motion.y -= actor->gravity;
            } else if (actor->motion.y < 0) {
                posY = floorPos;

                actor->motion.y = -fx32_multiply(
                    actor->motion.y,
                    actor->bounce
                );

                bounce = actor->motion.y;

                if (bounce < 0) {
                    bounce = -bounce;
                }

                if (bounce <= actor->gravity) {
                    actor->motion.y = 0;
                }
            }
        }

        if (actor->__unk55 & 4) {
            u32 bounceIndex;

            bounceIndex = actor->bounce & 0x3F;

            if (actor->__unk55 & 8) {
                value =
                    (gActorBounceTable[bounceIndex >> 1] *
                     actor->gravity) / 16;
            } else {
                value =
                    (gActorBounceTable[bounceIndex >> 1] *
                     actor->gravity) / 64;
            }

            actor->motion.y = value;
            actor->bounce++;
        }

apply_motion:
        posX += actor->motion.x;
        posY += actor->motion.y;
        posZ += actor->motion.z;

        if (actor->collision & 0x80) {
            newPos.y = posY;
            newPos.x = posX;
            newPos.z = posZ;

            if (Func_800d924(actor, &newPos)) {
                actor->__unk60++;
                continue;
            }

            actor->__unk60 = 0;
        }

        switch (actor->__unk56) {
        case 0x10:
            if (posX == actor->prevPos.x ||
                (((actor->pos.x - actor->prevPos.x) ^
                  (posX - actor->prevPos.x)) < 0)) {
                reachedTarget = TRUE;
            }
            break;

        case 0x11:
            if (posY == actor->prevPos.y ||
                (((actor->pos.y - actor->prevPos.y) ^
                  (posY - actor->prevPos.y)) < 0)) {
                reachedTarget = TRUE;
            }
            break;

        case 0x12:
            if (posZ == actor->prevPos.z ||
                (((actor->pos.z - actor->prevPos.z) ^
                  (posZ - actor->prevPos.z)) < 0)) {
                reachedTarget = TRUE;
            }
            break;
        }

        if (reachedTarget) {
            if (actor->__unk58 != 0) {
                posX = actor->prevPos.x;
                actor->motion.x = 0;
                posZ = actor->prevPos.z;

                actor->motion.z = 0;

                if (actor->__unk55 == 0) {
                    posY = actor->prevPos.y;
                    actor->motion.y = 0;
                }
            }

            actor->prevPos.x = ACTOR_PREV_POS_NONE;
            actor->prevPos.y = ACTOR_PREV_POS_NONE;
            actor->prevPos.z = ACTOR_PREV_POS_NONE;

            actor->__unk56 = 0;
        }

        actor->pos.x = posX;
        actor->pos.y = posY;
        actor->pos.z = posZ;

        if (actor->__unk5A & 1) {
            posX = actor->motion.x;
            posZ = actor->motion.z;

            if (posX != 0 || posZ != 0) {
                s32 maxTurn;

                angle = atan2(posZ, posX);
                delta = (s16)(angle - actor->facing);

                maxTurn = 0x1000;
                if (delta > maxTurn) {
                    delta = maxTurn;
                }

                maxTurn = -0x1000;
                if (delta < maxTurn) {
                    delta = maxTurn;
                }

                actor->facing += delta;
            }
        }
    }
}

void Actor_SetPos(struct Actor* actor, fx32 x, fx32 y, fx32 z) {
    actor->pos.z = z;
    actor->prevPos.x = 0x80000000;
    actor->prevPos.y = 0x80000000;
    actor->prevPos.z = 0x80000000;
    actor->pos.x = x;
    actor->pos.y = y;
    actor->motion.x = 0;
    actor->motion.y = 0;
    actor->motion.z = 0;
}

void Actor_TravelTo(struct Actor *actor, fx32 x, fx32 y, fx32 z) {
    s32 dx;
    s32 dy;
    s32 dz;
    fx32 distance;

    dx = (x - actor->pos.x) / 0x10000;
    dy = (y - actor->pos.y) / 0x10000;
    dz = (z - actor->pos.z) / 0x10000;

    distance = sqrt(dx * dx + dy * dy + dz * dz) << 16;

    if (distance < 0x100000) {
        fx32 xSq;
        fx32 ySq;
        fx32 zSq;

        dx = x - actor->pos.x;
        dy = y - actor->pos.y;
        dz = z - actor->pos.z;

        xSq = fx32_multiply(dx, dx);
        ySq = fx32_multiply(dy, dy);
        zSq = fx32_multiply(dz, dz);

        distance = FastIntSqrtFP1616_RAM(xSq + ySq + zSq);
    }

    if (distance < 0x10000) {
        actor->pos.x = x;
        actor->pos.y = y;
        actor->pos.z = z;

        actor->prevPos.x = 0x80000000;
        actor->prevPos.y = 0x80000000;
        actor->prevPos.z = 0x80000000;
    }
    else {
        if (actor->__unk58 == 0) {
            fx32 speedSq;
            fx32 amount;
            fx32 scale;

            speedSq = fx32_multiply(actor->speed, actor->speed);

            amount = FxDiv(actor->accel, speedSq);

            if (distance > amount)
                amount = distance - amount / 2;
            else
                amount = distance / 2;

            scale = FxDiv(distance, amount);
            x = actor->pos.x + fx32_multiply(x - actor->pos.x, scale);
            y = actor->pos.y + fx32_multiply(y - actor->pos.y, scale);
            z = actor->pos.z + fx32_multiply(z - actor->pos.z, scale);
        }

        actor->prevPos.x = x;
        actor->prevPos.y = y;
        actor->prevPos.z = z;

        dx = x - actor->pos.x;
        dy = y - actor->pos.y;
        dz = z - actor->pos.z;

        actor->__unk56 = 0x10;

        if (ABS(dx) < ABS(dz)) {
            actor->__unk56 = 0x12;
            dx = dz;
        }

        if (actor->__unk55 == 0) {
            if (ABS(dx) < ABS(dy))
                actor->__unk56 = 0x11;
        }
    }
}

extern void *alloc_iwram(u32 size);
extern void free(void *mem);
extern void Func_800a494(void);
extern u8 _Func_800a494_SIZE[];

void Func_800d304(void) {
    void (*func)(void);
    func = alloc_iwram((u32)_Func_800a494_SIZE);
    DMA3_COPY(Func_800a494, func, (u32)_Func_800a494_SIZE);
    func();
    free(func);
}

void Func_800d340(void) {
    struct Actor *actor;
    s32 i;

    fx32 posX;
    fx32 posY;
    fx32 posZ;
    fx32 floorPos;

    bool32 reachedTarget;

    s32 dx;
    s32 dz;
    s32 distance;

    fx32 newMotionX;
    fx32 newMotionZ;
    fx32 magnitude;
    fx32 target;
    fx32 bounce;
    fx32 scale;

    s32 angle;
    s32 delta;

    actor = iwram_3001e64;

    for (i = 13; i >= 0; i--, actor++)
    {
        if (actor->script == NULL)
            continue;

        posX = actor->pos.x;
        posY = actor->pos.y;
        posZ = actor->pos.z;

        if (actor->__unk61 != 0)
            goto apply_motion;

        reachedTarget = FALSE;

        if (actor->prevPos.x != (fx32)0x80000000)
        {
            dx = (actor->prevPos.x - posX) / 0x10000;
            dz = (actor->prevPos.z - posZ) / 0x10000;

            distance = sqrt(dx * dx + dz * dz) << 16;

            if (distance <= 0xFFFFFF)
            {
                dx = actor->prevPos.x - posX;
                dz = actor->prevPos.z - posZ;

                distance = sqrt(
                    fx32_multiply(dx, dx) +
                    fx32_multiply(dz, dz)
                ) << 8;
            }

            if (distance == 0)
            {
                posX = actor->prevPos.x;
                posZ = actor->prevPos.z;
            }
            else
            {
                scale = FxDiv(distance, actor->accel);

                actor->motion.x += fx32_multiply(dx, scale);
                actor->motion.z += fx32_multiply(dz, scale);

                newMotionX = actor->motion.x;
                newMotionZ = actor->motion.z;

                magnitude = sqrt(
                    fx32_multiply(newMotionX, newMotionX) +
                    fx32_multiply(newMotionZ, newMotionZ)
                ) << 8;

                if (magnitude > actor->speed)
                {
                    scale = FxDiv(magnitude, actor->speed);

                    actor->motion.x =
                        fx32_multiply(newMotionX, scale);

                    actor->motion.z =
                        fx32_multiply(newMotionZ, scale);
                }
            }
        }
        else
        {
            dx = actor->motion.x;
            dz = actor->motion.z;

            if ((dx | dz) != 0)
            {
                magnitude = sqrt(
                    fx32_multiply(dx, dx) +
                    fx32_multiply(dz, dz)
                ) << 8;

                if (magnitude != 0)
                {
                    target = magnitude - actor->accel;

                    if (target < 0)
                    {
                        actor->motion.x = 0;
                        actor->motion.z = 0;
                    }
                    else
                    {
                        scale = FxDiv(magnitude, target);

                        actor->motion.x =
                            fx32_multiply(dx, scale);

                        actor->motion.z =
                            fx32_multiply(dz, scale);
                    }
                }
                else
                {
                    actor->motion.x = 0;
                    actor->motion.z = 0;
                }
            }
        }

        if (actor->__unk55 & 2)
        {
            floorPos = actor->floorPos;

            if (posY > floorPos)
            {
                actor->motion.y -= actor->gravity;
            }
            else if (actor->motion.y < 0)
            {
                posY = floorPos;

                actor->motion.y = -fx32_multiply(
                    actor->motion.y,
                    actor->bounce
                );

                bounce = actor->motion.y;

                if (bounce < 0)
                    bounce = -bounce;

                if (bounce <= actor->gravity)
                    actor->motion.y = 0;
            }
        }

apply_motion:
        posX += actor->motion.x;
        posY += actor->motion.y;
        posZ += actor->motion.z;

        if (actor->__unk56 != 0)
        {
            switch (actor->__unk56)
            {
            case 0x10:
                if (posX == actor->prevPos.x ||
                    (((actor->pos.x - actor->prevPos.x) ^
                      (posX - actor->prevPos.x)) < 0))
                {
                    reachedTarget = TRUE;
                }
                break;
        
            case 0x11:
                if (posY == actor->prevPos.y ||
                    (((actor->pos.y - actor->prevPos.y) ^
                      (posY - actor->prevPos.y)) < 0))
                {
                    reachedTarget = TRUE;
                }
                break;
        
            case 0x12:
                if (posZ == actor->prevPos.z ||
                    (((actor->pos.z - actor->prevPos.z) ^
                      (posZ - actor->prevPos.z)) < 0))
                {
                    reachedTarget = TRUE;
                }
                break;
            }
        }

        if (reachedTarget)
        {
            if (actor->__unk58 != 0)
            {
                actor->motion.x = 0;
                actor->motion.z = 0;

                posX = actor->prevPos.x;
                posZ = actor->prevPos.z;

                if (actor->__unk55 == 0)
                {
                    posY = actor->prevPos.y;
                    actor->motion.y = 0;
                }
            }

            actor->prevPos.x = (fx32)0x80000000;
            actor->prevPos.y = (fx32)0x80000000;
            actor->prevPos.z = (fx32)0x80000000;

            actor->__unk56 = 0;
        }

        actor->pos.x = posX;
        actor->pos.y = posY;
        actor->pos.z = posZ;

        if (actor->__unk5A & 1)
        {
            posX = actor->motion.x;
            posZ = actor->motion.z;

            if (posX != 0 || posZ != 0)
            {
                angle = atan2(posZ, posX);
                delta = (s16)(angle - actor->facing);
                
                if (delta > 0x1000)
                    delta = 0x1000;
                
                if (delta < -0x1000)
                    delta = -0x1000;
                
                actor->facing += delta;
            }
        }
    }
}

s32 ActorCmd_Wait(struct Actor *actor) {
    actor->waitTimer = actor->script[actor->scriptPos + 1] - 1;
    actor->scriptPos += 2;
    return FALSE;
}

bool32 ActorCmd_WaitMovement(struct Actor *actor)
{
	if (actor->__unk60 > 0x3b) {
		actor->__unk60 = 0;
		actor->scriptPos++;
		return TRUE;
    } else if (Actor_IsNotMoving(actor)) {
		actor->scriptPos++;
		return TRUE;
	}
	return FALSE;
}

bool32 ActorCmd_CallNative(struct Actor *actor) {
    s16 prevPos = actor->scriptPos;
    actorcmd_t nativeFunc = ((actorcmd_t *)actor->script)[prevPos + 1];
    if (nativeFunc(actor) != 0) {
        return FALSE;
    }
    if (actor->scriptPos == prevPos) {
        actor->scriptPos += 2;
    }
    return TRUE;
}

s32 Actor_FindScriptMarker(struct Actor *actor, s32 marker) {
    s32 foundPosition;
    s32 *scriptPtr;

    actor->waitTimer = 0;
    if (marker == 0) {
        return 0;
    }
    marker &= 0xbfffffff;
    scriptPtr = actor->script;
    for (foundPosition = 0; foundPosition < 0x400; foundPosition++) {
        if (*scriptPtr++ == marker) {
            return foundPosition + 1;
        }
    }
    return 0;
}

bool32 ActorCmd_Loop(struct Actor *actor) {
    s32 *script = &actor->script[actor->scriptPos + 1];
    u32 loopCount = *script++;
    s32 marker = *script;

    if (loopCount == 0xFFFF) {
        actor->scriptPos = Actor_FindScriptMarker(actor, marker);
    } else if (++actor->scriptLoop < (s16)loopCount) {
        actor->scriptPos = Actor_FindScriptMarker(actor, marker);
    } else {
        actor->scriptLoop = 0;
        actor->scriptPos += 3;
    }

    return TRUE;
}

bool32 ActorCmd_Goto(struct Actor *actor) {
    actor->scriptPos = Actor_FindScriptMarker(actor, actor->script[actor->scriptPos + 1]);
    return TRUE;
}

bool32 ActorCmd_GotoIfNZ(struct Actor *actor) {
    s32 marker = actor->script[actor->scriptPos + 1];
    if (actor->scriptVar != 0) {
        actor->scriptPos = Actor_FindScriptMarker(actor, marker);
    } else {
        actor->scriptPos += 2;
    }
    return TRUE;
}

bool32 ActorCmd_GotoIfZ(struct Actor *actor) {
    s32 marker = actor->script[actor->scriptPos + 1];
    if (actor->scriptVar == 0) {
        actor->scriptPos = Actor_FindScriptMarker(actor, marker);
    } else {
        actor->scriptPos += 2;
    }
    return TRUE;
}

bool32 ActorCmd_Stop(struct Actor* actor) {
    actor->script = L13240;
    actor->scriptPos = 0;
    return FALSE;
}

bool32 ActorCmd_GetFlag(struct Actor *actor) {
    actor->scriptVar = _GetFlag(actor->script[actor->scriptPos + 1]);
    actor->scriptPos += 2;
    return TRUE;
}

s32 ActorCmd_SetFlag(struct Actor *actor) {
    s32 flag = actor->script[actor->scriptPos + 1];
    actor->scriptVar = _GetFlag(flag);
    _SetFlag(flag);
    actor->scriptPos += 2;
    return TRUE;
}

s32 ActorCmd_ClearFlag(struct Actor *actor) {
    s32 flag = actor->script[actor->scriptPos + 1];
    actor->scriptVar = _GetFlag(flag);
    _ClearFlag(flag);
    actor->scriptPos += 2;
    return TRUE;
}

s32 ActorCmd_ToggleFlag(struct Actor *actor) {
    s32 flag;
    s32 result;

    flag = actor->script[actor->scriptPos + 1];
    result = _GetFlag(flag);
    actor->scriptVar = result;
    if ((result << 0x18) == 0x01000000) {
        _ClearFlag(flag);
    } else {
        _SetFlag(flag);
    }
    actor->scriptPos += 2;
    return TRUE;
}

s32 ActorCmd_Anim(struct Actor *actor) {
    Actor_SetAnim(actor, actor->script[actor->scriptPos + 1]);
    actor->scriptPos += 2;
    return TRUE;
}

bool32 ActorCmd_Delete(struct Actor *actor) {
    DeleteActor(actor);
    return FALSE;
}

bool32 ActorCmd_Nop(struct Actor *actor) {
    actor->scriptPos += 2;
    return TRUE;
}

int ActorCmd_Sound(struct Actor *actor) {
    _PlaySound(actor->script[actor->scriptPos + 1]);
    actor->scriptPos += 2;
    return TRUE;
}

s32 Func_800eba0(vec3_t*, s32, vec3_t*, s32);

s32 Func_800d924(struct Actor *other, vec3_t *arg1) {
    s32 i;
    struct Actor *current = iwram_3001e64;

    for (i = 0; i < 0x40; i++, current++) {
        if ((current->script != 0) && (1 & current->collision) && (current != other)) {
            if (Func_800eba0(&current->pos, current->width - 2, arg1, other->width - 2) >= 0) {
                return -1;
            }
        }
    }
    return 0;
}

struct Actor *Func_800d98c(struct Actor *other, vec3_t *arg1) {
    s32 i;
    struct Actor *current = iwram_3001e64;

    for (i = 0; i < 0x40; i++, current++) {
        if ((current->script != 0) && (1 & current->collision) && (current != other)) {
            if (Func_800eba0(&current->pos, current->width - 2, arg1, other->width - 2) >= 0) {
                return current;
            }
        }
    }
    return NULL;
}

int ActorCmd_SetPos(struct Actor *actor) {
    s32 *args = &actor->script[actor->scriptPos + 1];
    fx32 x, y, z;
    x = *args++;
    y = *args++;
    z = *args;
    Actor_SetPos(actor, x, y, z);
    actor->scriptPos += 4;
    return TRUE;
}

int ActorCmd_TravelTo(struct Actor *actor)
{
    s32 *args = &actor->script[actor->scriptPos + 1];
    fx32 x, y, z;
    x = *args++;
    y = *args++;
    z = *args;
    Actor_TravelTo(actor, x, y, z);
    actor->scriptPos += 4;
    return TRUE;
}

bool32 ActorCmd_Travel(struct Actor *actor) {
    fx32 newX, newY, newZ;
    fx32 x, y, z;
    s32 *args = &actor->script[actor->scriptPos + 1];
    x = *args++;
    y = *args++;
    z = *args;
    newX = actor->pos.x + x;
    newY = actor->pos.y + y;
    newZ = actor->pos.z + z;
    Actor_TravelTo(actor, newX, newY, newZ);
    actor->scriptPos += 4;
    return TRUE;
}

bool32 ActorCmd_FaceTarget(struct Actor *actor) {
    struct Actor* linked = actor->linkedActor;
    actor->facing = atan2(linked->pos.z - actor->pos.z, linked->pos.x - actor->pos.x);
    actor->scriptPos++;
    return TRUE;
}

bool32 ActorCmd_FollowTarget(struct Actor *actor) {
    struct Actor *linked = actor->linkedActor;
    Actor_TravelTo(actor, linked->pos.x, linked->pos.y, linked->pos.z);
    actor->scriptPos++;
    return TRUE;
}

bool32 ActorCmd_Unused(struct Actor *actor)
{
    fx32 stack[3];
    fx32 x = actor->pos.x + stack[0];
    fx32 y = actor->pos.y + stack[1];
    fx32 z = actor->pos.z + stack[2];

    Actor_TravelTo(actor, x, y, z);
    actor->scriptPos += 3;
    return 1;
}

struct State_3001e70 {
    u8 pad_00[0x17];
    u8 __unk17;
    u8 pad_18[0xd4];
    fx32 camMinX;   /* 0xec */
    fx32 camMinZ;   /* 0xf0 */
    fx32 camMaxX;   /* 0xf4 */
    fx32 camMaxZ;   /* 0xf8 */
};

extern struct State_3001e70 *iwram_3001e70;

bool32 ActorCmd_Camera(struct Actor *actor) {
    struct Actor *target = actor->linkedActor;
    fx32 xMin, zMin;
    fx32 xMax, zMax;
    xMin = iwram_3001e70->camMinX + 0x780000;
    zMin = iwram_3001e70->camMinZ + target->pos.y + 0x600000;
    xMax = iwram_3001e70->camMaxX - 0x780000;
    zMax = iwram_3001e70->camMaxZ + target->pos.y - 0x400000;
    actor->__unk55 = 0;
    if (target != NULL && target->script != NULL) {
        fx32 tx, ty, tz;
        tx = target->pos.x;
        ty = target->pos.y;
        tz = target->pos.z;
        actor->prevPos.x = 0x80000000;
        actor->prevPos.y = 0x80000000;
        actor->prevPos.z = 0x80000000;
        tx = (tx < xMin) ? xMin : tx;
        tz = (tz < zMin) ? zMin : tz;
        tx = (tx > xMax) ? xMax : tx;
        tz = (tz > zMax) ? zMax : tz;
    
        if (actor->waveCounter != 0) {
            actor->pos.x = tx;
            actor->pos.y = ty;
            actor->pos.z = tz;
        } else {
            fx32 dx, dy, dz;
            fx32 dist, step;
 
            dx = (tx - actor->pos.x) / 0x10000;
            dy = (ty - actor->pos.y) / 0x10000;
            // unused dy calculation is optimized out
            // but causes codegen differences.
            dz = (tz - actor->pos.z) / 0x10000;
            dist = sqrt(dx * dx + dz * dz) << 16;
            
            dx = tx - actor->pos.x;
            dy = ty - actor->pos.y;
            dz = tz - actor->pos.z;
 
            if (dist < 0x400000)
                dist = FastIntSqrtFP1616_RAM(
                    fx32_multiply(dx, dx) +
                    fx32_multiply(dz, dz));
            step = dist / 8;
            if (step > actor->speed)
                step = actor->speed;
            if (dist < 0x4000) {
                actor->pos.x = tx;
                actor->pos.z = tz;
            } else {
                if (dist > step) {
                    dx = fx32_multiply(FxDiv(dist, dx), step);
                    dz = fx32_multiply(FxDiv(dist, dz), step);
                }
                actor->pos.x += dx;
                actor->pos.z += dz;
            }
            if (ABS(dy) > 0x8000)
                dy /= 4;
            actor->pos.y += dy;
        }
    }
    actor->scriptPos++;
    return (1);
}

bool32 ActorCmd_FollowTargetWait(struct Actor *actor) {
    struct Actor *target = actor->linkedActor;
    fx32 dx, dz;
    s32 x, z, dist, t;
    s32 offX, offZ;

    actor->speed = target->speed;
    actor->accel = target->accel;
    dx = target->pos.x - actor->pos.x;
    dz = target->pos.z - actor->pos.z;
    x = dx >> 16;
    z = dz >> 16;
    dist = sqrt(x * x + z * z);

    if (dist > 16) {
        t = dist - 16;
        offX = dx * t / dist;
        offZ = dz * t / dist;
        Actor_TravelTo(actor, actor->pos.x + offX, actor->pos.y, actor->pos.z + offZ);
        Actor_SetAnim(actor, 2);
        actor->scriptPos++;
        return TRUE;
    }

    Actor_SetAnim(actor, 1);
    return FALSE;
}

bool32 ActorCmd_Wander(struct Actor *actor) {
    s32 *args = &actor->script[actor->scriptPos + 1];
    s32 minDist = *args++;
    s32 range = *args++;
    s32 radius = *args / 0x10000;
    s32 i = 0;
    s32 dist, angle, dx, dz;
    vec3_t pos;
    vec3_t check;

    radius *= radius;

retry:
    if (++i <= 7) {
        pos.x = actor->pos.x;
        pos.y = actor->pos.y;
        pos.z = actor->pos.z;

        dist = minDist + fx32_multiply(Random(), range);
        angle = actor->facing + (Random() >> 2) - (Random() >> 2);

        vec3_translate(dist, angle, &pos);
        if (Func_800d924(actor, &pos))
            goto retry;
        if (TestCollision(actor, &pos))
            goto retry;

        dist += 0x80000;
        
        check.x = actor->pos.x;
        check.y = actor->pos.y;
        check.z = actor->pos.z;

        vec3_translate(dist, angle, &check);

        check.x = actor->pos.x;
        check.y = actor->pos.y;
        check.z = actor->pos.z;
        vec3_translate(dist, angle + 0x2000, &check);
        if (TestCollision(actor, &check))
            goto retry;

        check.x = actor->pos.x;
        check.y = actor->pos.y;
        check.z = actor->pos.z;
        vec3_translate(dist, angle - 0x2000, &check);
        if (TestCollision(actor, &check))
            goto retry;

        do {
            dx = pos.x / 0x10000 - actor->waveCounter;
            dz = pos.z / 0x10000 - actor->__unk66;
        } while (0);


        if (dx * dx + dz * dz > radius)
            goto retry;
    } else {
        actor->facing += 0x8000;
        actor->waitTimer = 1;
        return FALSE;
    }

    Actor_TravelTo(actor, pos.x, pos.y, pos.z);
    actor->scriptPos += 4;
    return TRUE;
}

bool32 ActorCmd_Unk9(struct Actor *actor) {
    s32 *args;
    s32 minDist;
    s32 range;
    s32 radius;
    s32 dx;
    s32 dz;
    s32 dist;
    s32 i;
    u16 baseAngle;
    u16 angle;
    vec3_t pos;
    vec3_t check;
    s32 angleOffset;

    args = &actor->script[actor->scriptPos + 1];

    minDist = *args++;
    range = *args++;

    radius = *args / 0x10000;
    baseAngle = actor->facing;
    radius *= radius;
    i = 0;
    
    dx = actor->pos.x / 0x10000 - actor->waveCounter;
    dz = actor->pos.z / 0x10000 - actor->__unk66;

    if (dx * dx + dz * dz > radius)
        goto return_to_center;

retry:
    if (++i > 7)
        goto return_to_center;

    dist = minDist + fx32_multiply(Random(), range);

    angle = baseAngle + (Random() >> 2) - (Random() >> 2);

    pos.x = actor->pos.x;
    pos.y = actor->pos.y;
    pos.z = actor->pos.z;

    vec3_translate(0x80000, angle, &pos);

    if (Func_800d924(actor, &pos))
        goto retry;

    pos.x = actor->pos.x;
    pos.y = actor->pos.y;
    pos.z = actor->pos.z;

    vec3_translate(dist, angle, &pos);

    if (TestCollision(actor, &pos))
        goto retry;

    dist += 0x80000;

    check.x = actor->pos.x;
    check.y = actor->pos.y;
    check.z = actor->pos.z;

    vec3_translate(dist, angle, &check);

    if (TestCollision(actor, &check))
        goto retry;

    check.x = actor->pos.x;
    check.y = actor->pos.y;
    check.z = actor->pos.z;

    vec3_translate(dist, angle + 0x2000, &check);

    if (TestCollision(actor, &check))
        goto retry;

    check.x = actor->pos.x;
    check.y = actor->pos.y;
    check.z = actor->pos.z;

    vec3_translate(dist, angle - 0x2000, &check);

    if (TestCollision(actor, &check))
        goto retry;

    check.x = actor->pos.x;
    check.y = actor->pos.y;
    check.z = actor->pos.z;

    vec3_translate(dist, angle + 0x4000, &check);

    if (TestCollision(actor, &check))
        goto retry;

    check.x = actor->pos.x;
    check.y = actor->pos.y;
    check.z = actor->pos.z;

    vec3_translate(dist, angle - 0x4000, &check);

    if (TestCollision(actor, &check))
        goto retry;

    dx = pos.x / 0x10000 - actor->waveCounter;
    dz = pos.z / 0x10000 - actor->__unk66;

    if (dx * dx + dz * dz > radius)
        goto retry;

    actor->collision |= 2;

    Actor_TravelTo(actor, pos.x, pos.y, pos.z);
    goto done;

return_to_center:
    i = 0;
    angleOffset = 0x8000;
    baseAngle = atan2(dz, dx) + angleOffset;

center_retry:
    if (++i > 7)
        goto done;

    dist = minDist + fx32_multiply(Random(), range);

    angle = baseAngle + (Random() >> 2) - (Random() >> 2);

    pos.x = actor->pos.x;
    pos.y = actor->pos.y;
    pos.z = actor->pos.z;

    vec3_translate(0x80000, angle, &pos);

    if (Func_800d924(actor, &pos))
        goto center_retry;

    pos.x = actor->pos.x;
    pos.y = actor->pos.y;
    pos.z = actor->pos.z;

    vec3_translate(dist, angle, &pos);

    if (TestCollision(actor, &pos))
        goto center_retry;

    actor->collision &= 0xFD;

    Actor_TravelTo(actor, pos.x, pos.y, pos.z);

done:
    actor->scriptPos += 4;
    return TRUE;
}

void ActorAttrOp_script(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->script = (s32 *)param;
        return;
    }
    if (op == 1) {
        actor->script = actor->script + param;
        return;
    }
    actor->scriptVar = ((s32)actor->script == param);
}

void ActorAttrOp_scriptPos(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->scriptPos = param;
        return;
    }
    if (op == 1) {
        actor->scriptPos += param;
        return;
    }
    actor->scriptVar = (actor->scriptPos == (s16)param);
}

void ActorAttrOp_facing(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->facing = param;
        return;
    }
    if (op == 1) {
        actor->facing += param;
        return;
    }
    actor->scriptVar = (actor->facing == (u16)param);
}

void ActorAttrOp_x(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->pos.x = param;
        return;
    }
    if (op == 1) {
        actor->pos.x += param;
        return;
    }
    actor->scriptVar = (actor->pos.x == param);
}

void ActorAttrOp_y(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->pos.y = param;
        return;
    }
    if (op == 1) {
        actor->pos.y += param;
        return;
    }
    actor->scriptVar = (actor->pos.y == param);
}

void ActorAttrOp_z(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->pos.z = param;
        return;
    }
    if (op == 1) {
        actor->pos.z += param;
        return;
    }
    actor->scriptVar = (actor->pos.z == param);
}

void ActorAttrOp_width(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->width = param;
        return;
    }
    if (op == 1) {
        actor->width += param;
        return;
    }
    actor->scriptVar = (actor->width == (s16)param);
}

void ActorAttrOp_scaleX(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->scale.x = param;
        return;
    }
    if (op == 1) {
        actor->scale.x += param;
        return;
    }
    actor->scriptVar = (actor->scale.x == param);
}


void ActorAttrOp_scaleY(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->scale.y = param;
        return;
    }
    if (op == 1) {
        actor->scale.y += param;
        return;
    }
    actor->scriptVar = (actor->scale.y == param);
}

void ActorAttrOp_motionX(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->motion.x = param;
        return;
    }
    if (op == 1) {
        actor->motion.x += param;
        return;
    }
    actor->scriptVar = (actor->motion.x == param);
}

void ActorAttrOp_motionY(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->motion.y = param;
        return;
    }
    if (op == 1) {
        actor->motion.y += param;
        return;
    }
    actor->scriptVar = (actor->motion.y == param);
}

void ActorAttrOp_motionZ(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->motion.z = param;
        return;
    }
    if (op == 1) {
        actor->motion.z += param;
        return;
    }
    actor->scriptVar = (actor->motion.z == param);
}


void ActorAttrOp_speed(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->speed = param;
        return;
    }
    if (op == 1) {
        actor->speed += param;
        return;
    }
    actor->scriptVar = (actor->speed == param);
}

void ActorAttrOp_accel(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->accel = param;
        return;
    }
    if (op == 1) {
        actor->accel += param;
        return;
    }
    actor->scriptVar = (actor->accel == param);
}

void ActorAttrOp_prevPosX(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->prevPos.x = param;
        return;
    }
    if (op == 1) {
        actor->prevPos.x += param;
        return;
    }
    actor->scriptVar = (actor->prevPos.x == param);
}

void ActorAttrOp_prevPosY(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->prevPos.y = param;
        return;
    }
    if (op == 1) {
        actor->prevPos.y += param;
        return;
    }
    actor->scriptVar = (actor->prevPos.y == param);
}


void ActorAttrOp_prevPosZ(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->prevPos.z = param;
        return;
    }
    if (op == 1) {
        actor->prevPos.z += param;
        return;
    }
    actor->scriptVar = (actor->prevPos.z == param);
}

void ActorAttrOp_bounce(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->bounce = param;
        return;
    }
    if (op == 1) {
        actor->bounce += param;
        return;
    }
    actor->scriptVar = (actor->bounce == param);
}


void ActorAttrOp_gravity(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->gravity = param;
        return;
    }
    if (op == 1) {
        actor->gravity += param;
        return;
    }
    actor->scriptVar = (actor->gravity == param);
}

void ActorAttrOp_floorPos(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->floorPos = param;
        return;
    }
    if (op == 1) {
        actor->floorPos += param;
        return;
    }
    actor->scriptVar = (actor->floorPos == param);
}

void ActorAttrOp_unk4C(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->__unk4C = param;
        return;
    }
    if (op == 1) {
        actor->__unk4C += param;
        return;
    }
    actor->scriptVar = (actor->__unk4C == param);
}

void ActorAttrOp_sprite(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->sprite = (struct Sprite *)param;
        return;
    }
    if (op == 1) {
        actor->sprite = (struct Sprite *)((s32)actor->sprite + (param * 4));
        return;
    }
    actor->scriptVar = ((s32)actor->sprite == param);
}

void ActorAttrOp_unk54(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->visible = param;
        return;
    }
    if (op == 1) {
        actor->visible += param;
        return;
    }
    actor->scriptVar = (actor->visible == (u8)param);
}

void ActorAttrOp_unk55(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->__unk55 = param;
        return;
    }
    if (op == 1) {
        actor->__unk55 += param;
        return;
    }
    actor->scriptVar = (actor->__unk55 == (u8)param);
}

void ActorAttrOp_unk56(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->__unk56 = param;
        return;
    }
    if (op == 1) {
        actor->__unk56 += param;
        return;
    }
    actor->scriptVar = (actor->__unk56 == (u8)param);
}

void ActorAttrOp_scriptVar(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->scriptVar = param;
        return;
    }
    if (op == 1) {
        actor->scriptVar += param;
        return;
    }
    actor->scriptVar = (actor->scriptVar == (u8)param);
}

void ActorAttrOp_unk58(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->__unk58 = param;
        return;
    }
    if (op == 1) {
        actor->__unk58 += param;
        return;
    }
    actor->scriptVar = (actor->__unk58 == (u8)param);
}


void ActorAttrOp_unk59(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->collision = param;
        return;
    }
    if (op == 1) {
        actor->collision += param;
        return;
    }
    actor->scriptVar = (actor->collision == (u8)param);
}

void ActorAttrOp_unk5A(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->__unk5A = param;
        return;
    }
    if (op == 1) {
        actor->__unk5A += param;
        return;
    }
    actor->scriptVar = (actor->__unk5A == (u8)param);
}

void ActorAttrOp_unk5B(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->stop = param;
        return;
    }
    if (op == 1) {
        actor->stop += param;
        return;
    }
    actor->scriptVar = (actor->stop == (u8)param);
}

void ActorAttrOp_unk5D(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->scriptLoop = param;
        return;
    }
    if (op == 1) {
        actor->scriptLoop += param;
        return;
    }
    actor->scriptVar = (actor->scriptLoop == (u8)param);
}

void ActorAttrOp_waitTimer(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->waitTimer = param;
        return;
    }
    if (op == 1) {
        actor->waitTimer += param;
        return;
    }
    actor->scriptVar = ((s16)actor->waitTimer == (s16)param);
}

void ActorAttrOp_unk64(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->waveCounter = param;
        return;
    }
    if (op == 1) {
        actor->waveCounter += param;
        return;
    }
    actor->scriptVar = (actor->waveCounter == (s16)param);
}

void ActorAttrOp_unk66(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->__unk66 = param;
        return;
    }
    if (op == 1) {
        actor->__unk66 += param;
        return;
    }
    actor->scriptVar = (actor->__unk66 == (s16)param);
}

void ActorAttrOp_extra(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->linkedActor = (struct Actor *)param;
        return;
    }
    if (op == 1) {
        actor->linkedActor =
            (struct Actor *)((s32)actor->linkedActor + param);
        return;
    }
    actor->scriptVar = ((s32)actor->linkedActor == param);
}

void ActorAttrOp_updateFn(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->update = (actorfun_t *)param;
        return;
    }
    if (op == 1) {
        actor->update = (actorfun_t *)((s32)actor->update + param);
        return;
    }
    actor->scriptVar = ((s32)actor->update == param);
}

void ActorAttrOp_unk62(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->__unk62 = param;
        return;
    }
    if (op == 1) {
        actor->__unk62 += param;
        return;
    }
    actor->scriptVar = (actor->__unk62 == (u8)param);
}

void ActorAttrOp_unk63(struct Actor* actor, s32 op, s32 param) {
    if (op == 0) {
        actor->__unk63 = param;
        return;
    }
    if (op == 1) {
        actor->__unk63 += param;
        return;
    }
    actor->scriptVar = (actor->__unk63 == (u8)param);
}

typedef void (*actorattrop_t)(struct Actor *actor, s32 op, s32 param);
extern actorattrop_t gActorAttrOpTable[];

bool32 ActorCmd_SetAttr(struct Actor* actor) {
    s32* args;
    actorattrop_t attrOp;

    args = actor->script + actor->scriptPos + 1;
    attrOp = gActorAttrOpTable[args[0]];

    if (attrOp != NULL) {
        attrOp(actor, 0, args[1]);
    }

    actor->scriptPos += 3;
    return TRUE;
}

bool32 ActorCmd_IncAttr(struct Actor* actor) {
    s32* args;
    actorattrop_t attrOp;

    args = actor->script + actor->scriptPos + 1;
    attrOp = gActorAttrOpTable[args[0]];

    if (attrOp != NULL) {
        attrOp(actor, 1, args[1]);
    }

    actor->scriptPos += 3;
    return TRUE;
}

bool32 ActorCmd_CmpAttr(struct Actor* actor) {
    s32* args;
    actorattrop_t attrOp;

    args = actor->script + actor->scriptPos + 1;
    attrOp = gActorAttrOpTable[args[0]];

    if (attrOp != NULL) {
        attrOp(actor, 2, args[1]);
    }

    actor->scriptPos += 3;
    return TRUE;
}

void Actor_SetUpdateFunc(struct Actor *actor, actorfun_t func) {
    if (actor != NULL) {
        actor->update = func;
    }
}

