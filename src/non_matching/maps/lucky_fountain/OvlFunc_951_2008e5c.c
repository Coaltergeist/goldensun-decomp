/* Remaining diff: stack spill size (`sub sp, #24` vs `#12`) and high-register
 * allocation (`coin` in sl vs r9) across the coin physics and 4-obstacle loop. */
#include "api.h"

struct FountainVector { int x, y, z; };
struct FountainCoin {
    short unused, frame;
    struct FountainVector samples[4];
    struct FountainVector shadow;
    struct FountainVector velocity;
    int attractionTime;
};
struct FountainObstacle {
    struct FountainVector pos;
    short direction, phase, speedMode, hitTime, cooldown, unused;
};
extern struct FountainCoin FountainCoinState __asm__(".Lm951_2070");
extern struct FountainObstacle FountainObstacles[4] __asm__(".Lm951_20d0");
extern int FountainCoinType __asm__(".Lm951_20c0");
extern int FountainStopped __asm__(".Lm951_2134");
extern int FountainPrizeRing __asm__(".Lm951_2138");
extern unsigned char FountainStraightColors[] __asm__(".Lm951_2054");
extern unsigned char FountainOrbitColors[] __asm__(".Lm951_2057");
extern int Func_8000948(int);
extern int _divsi3_RAM(int, int);
extern int _modsi3_RAM(int, int);
extern unsigned char *__MapActor_GetActor(int);
extern void __Actor_SetAnim(unsigned char *, unsigned int);
extern int __sin(int);
extern int __cos(int);
extern void OvlFunc_951_2008dd0(int, unsigned int *, int, int, int);
extern void OvlFunc_951_2008e44(int, int);

static inline int FountainLength(int squareLength) {
    int (*fn)(int) = Func_8000948;
    return fn(squareLength);
}

void OvlFunc_951_2008e5c(void)
{
    struct FountainCoin *coin;
    struct FountainObstacle *obstacle;
    int i, dx, dz, distance, x, z, adjustment;
    int minX, maxX, minZ, maxZ, speed, phase, speedMode;

    coin = &FountainCoinState;
    for (i = 3; i != 0; --i) {
        coin->samples[i].x = coin->samples[i - 1].x;
        coin->samples[i].y = coin->samples[i - 1].y;
        coin->samples[i].z = coin->samples[i - 1].z;
    }

    if (coin->frame > 31) {
        coin->samples[0].x += coin->velocity.x;
        coin->samples[0].y += coin->velocity.y;
        coin->samples[0].z += coin->velocity.z;
        if (coin->samples[0].y <= 0) {
            coin->samples[0].y = 0;
            if (coin->velocity.y != 0) {
                coin->velocity.y = 0;
                if (FountainCoinType == 1)
                    __Actor_SetAnim(__MapActor_GetActor(17), 1);
                else
                    __Actor_SetAnim(__MapActor_GetActor(12), 1);
            }
            if (coin->attractionTime > 0) {
                int attractionX, attractionZ, attractionLength, newVZ;
                attractionX = (0x780000 - coin->samples[0].x) >> 8;
                attractionZ = (0x470000 - coin->samples[0].z) >> 8;
                attractionLength = FountainLength(attractionX * attractionX + attractionZ * attractionZ);
                attractionX = coin->velocity.x + _divsi3_RAM(0x1999 * attractionX, attractionLength);
                coin->velocity.x = attractionX;
                newVZ = coin->velocity.z + _divsi3_RAM(0x1999 * attractionZ, attractionLength);
                coin->velocity.z = newVZ;
                coin->velocity.x = attractionX * 253 / 256;
                coin->velocity.z = newVZ * 253 / 256;
                --coin->attractionTime;
            } else {
                int dampedX;
                dampedX = coin->velocity.x * 220 / 256;
                coin->velocity.x = dampedX;
                coin->velocity.z = coin->velocity.z * 220 / 256;
                if ((unsigned int)(dampedX + 0x3ff) <= 0x7fe)
                    coin->velocity.x = 0;
                if ((unsigned int)(coin->velocity.z + 0x3ff) <= 0x7fe)
                    coin->velocity.z = 0;
                if (coin->velocity.x == 0 && coin->velocity.z == 0) {
                    if (FountainCoinType == 1) {
                        __Actor_SetAnim(__MapActor_GetActor(17), 2);
                        OvlFunc_951_2008e44(15, 0);
                        OvlFunc_951_2008e44(14, 0);
                        OvlFunc_951_2008e44(13, 0);
                    } else {
                        __Actor_SetAnim(__MapActor_GetActor(12), 2);
                        OvlFunc_951_2008e44(10, 0);
                        OvlFunc_951_2008e44(9, 0);
                        OvlFunc_951_2008e44(8, 0);
                    }
                    {
                        int ringX, ringZ, ringDistance;
                        ringX = (0x780000 - coin->samples[0].x) >> 16;
                        ringZ = (0x470000 - coin->samples[0].z) >> 16;
                        ringDistance = ringX * ringX + ringZ * ringZ;
                        FountainStopped = 1;
                        if (ringDistance <= 224) FountainPrizeRing = 0;
                        else if (ringDistance <= 624) FountainPrizeRing = 1;
                        else if (ringDistance <= 1088) FountainPrizeRing = 2;
                        else if (ringDistance <= 1680) FountainPrizeRing = 3;
                        else FountainPrizeRing = 4;
                    }
                }
            }
            maxZ = 0x780000;
            maxX = 0xc00000;
            minX = 0x300000;
            minZ = 0x180000;
            z = coin->samples[0].z;
            if (z < 0x2a0000) {
                adjustment = _divsi3_RAM((0x2a0000 - z) * 42, 18);
                minX = 0x300000 + adjustment;
                if (minX > 0x5a0000) minX = 0x5a0000;
                maxX -= adjustment;
                if (maxX < 0x960000) maxX = 0x960000;
            }
            if (z > 0x660000) {
                adjustment = _divsi3_RAM((z - 0x660000) * 42, 18);
                minX = 0x300000 + adjustment;
                if (minX > 0x5a0000) minX = 0x5a0000;
                maxX = 0xc00000 - adjustment;
                if (maxX < 0x960000) maxX = 0x960000;
            }
            x = coin->samples[0].x;
            if (x < 0x5a0000) {
                adjustment = _divsi3_RAM((0x5a0000 - x) * 18, 42);
                minZ = 0x180000 + adjustment;
                if (minZ > 0x2a0000) minZ = 0x2a0000;
                maxZ = 0x780000 - adjustment;
                if (maxZ < 0x660000) maxZ = 0x660000;
            }
            if (x > 0x960000) {
                adjustment = _divsi3_RAM((x - 0x960000) * 18, 42);
                minZ = 0x180000 + adjustment;
                if (minZ > 0x2a0000) minZ = 0x2a0000;
                maxZ = 0x780000 - adjustment;
                if (maxZ < 0x660000) maxZ = 0x660000;
            }
            if (x < minX) {
                coin->samples[0].x = minX;
                if (coin->velocity.x < 0) coin->velocity.x = -coin->velocity.x / 2;
                x = minX;
            }
            if (x > maxX) {
                coin->samples[0].x = maxX;
                if (coin->velocity.x > 0) coin->velocity.x = -coin->velocity.x / 2;
            }
            z = coin->samples[0].z;
            if (z < minZ) {
                coin->samples[0].z = minZ;
                if (coin->velocity.z < 0) coin->velocity.z = -coin->velocity.z / 2;
                z = minZ;
            }
            if (z > maxZ) {
                coin->samples[0].z = maxZ;
                if (coin->velocity.z > 0) coin->velocity.z = -coin->velocity.z / 2;
            }
        } else {
            coin->velocity.y -= 0x4000;
        }
    }

    for (i = 0; i != 4; ++i) {
        obstacle = &FountainObstacles[i];
        if (obstacle->hitTime > 0) --obstacle->hitTime;
        if (obstacle->cooldown > 0) --obstacle->cooldown;
        if (i <= 1) {
            speed = 0x10000;
            if (obstacle->speedMode == 1) speed *= 2;
            if (obstacle->speedMode == 2) speed *= 3;
            if (obstacle->hitTime > 0) {
                if (i == 0) __Actor_SetAnim(__MapActor_GetActor(18), 3);
                else __Actor_SetAnim(__MapActor_GetActor(19), 3);
            } else {
                if (i == 0) __Actor_SetAnim(__MapActor_GetActor(18), 1);
                else __Actor_SetAnim(__MapActor_GetActor(19), 1);
                if (obstacle->phase == 0) {
                    if (obstacle->direction == 0) obstacle->pos.x += speed;
                    else obstacle->pos.x -= speed;
                    if (obstacle->pos.x <= 0x400000) {
                        obstacle->direction = 0;
                        if (i == 1) obstacle->phase = 30;
                    }
                    if (obstacle->pos.x > 0xafffff) {
                        obstacle->direction = 1;
                        if (i == 1) obstacle->phase = 30;
                    }
                } else {
                    --obstacle->phase;
                }
            }
        } else if (i == 2) {
            speed = -64;
            if (obstacle->speedMode == 1) speed *= 2;
            if (obstacle->speedMode == 2) speed *= 3;
            if (obstacle->hitTime > 0) {
                __Actor_SetAnim(__MapActor_GetActor(20), 3);
            } else {
                __Actor_SetAnim(__MapActor_GetActor(20), 2);
                obstacle->pos.x = __sin(obstacle->direction) * 48 + 0x700000;
                obstacle->pos.z = __cos(obstacle->direction) * 40 + 0x480000;
                obstacle->direction += speed;
                ++obstacle->phase;
            }
        } else {
            phase = (unsigned short)obstacle->phase & 0x1ff;
            speed = 64;
            if (obstacle->speedMode == 1) speed = 128;
            if (obstacle->speedMode == 2) speed *= 3;
            if (obstacle->hitTime > 0) {
                __Actor_SetAnim(__MapActor_GetActor(21), 3);
            } else if (phase <= 0x17f) {
                obstacle->pos.x = __sin(obstacle->direction) * 52 + 0x700000;
                obstacle->pos.z = __cos(obstacle->direction) * 24 + 0x480000;
                obstacle->direction += speed;
                __Actor_SetAnim(__MapActor_GetActor(21), 2);
            } else {
                __Actor_SetAnim(__MapActor_GetActor(21), 3);
            }
            ++obstacle->phase;
        }
        if (obstacle->cooldown == 0 && coin->samples[0].y == 0) {
            dx = (obstacle->pos.x - coin->samples[0].x) >> 16;
            dz = (obstacle->pos.z - coin->samples[0].z) >> 16;
            distance = dx * dx + dz * dz;
            if (distance <= 119 && coin->attractionTime > 30) {
                int kickSpeed, collisionLength;
                kickSpeed = 0x30000;
                if (i <= 1) {
                    if (obstacle->direction == 0) {
                        if (coin->velocity.x < kickSpeed) {
                            coin->velocity.x = kickSpeed;
                            coin->attractionTime -= 100;
                        }
                    } else {
                        if (coin->velocity.x > -kickSpeed) {
                            coin->velocity.x = -kickSpeed;
                            coin->attractionTime -= 100;
                        }
                    }
                } else {
                    collisionLength = FountainLength(distance);
                    coin->velocity.x = _divsi3_RAM(-dx * kickSpeed, collisionLength);
                    coin->velocity.z = _divsi3_RAM(-dz * kickSpeed, collisionLength);
                    coin->attractionTime -= 100;
                }
                API_PlaySound(0x12d);
                speedMode = _modsi3_RAM(obstacle->speedMode + 1, 3);
                obstacle->hitTime = 36;
                obstacle->speedMode = speedMode;
                obstacle->cooldown = 30;
            }
        }
        switch (i) {
        case 0:
            OvlFunc_951_2008dd0(18, (unsigned int *)&obstacle->pos, 0, FountainStraightColors[obstacle->speedMode], obstacle->speedMode * 16 + 16);
            break;
        case 1:
            OvlFunc_951_2008dd0(19, (unsigned int *)&obstacle->pos, 0, FountainStraightColors[obstacle->speedMode], obstacle->speedMode * 16 + 16);
            break;
        case 2:
            OvlFunc_951_2008dd0(20, (unsigned int *)&obstacle->pos, 0x8000 - obstacle->direction, FountainOrbitColors[obstacle->speedMode], obstacle->speedMode * 16 + 16);
            break;
        case 3:
            OvlFunc_951_2008dd0(21, (unsigned int *)&obstacle->pos, 0xffff - obstacle->direction, FountainOrbitColors[obstacle->speedMode], obstacle->speedMode * 16 + 16);
            break;
        }
    }
    coin->shadow.x = coin->samples[0].x;
    coin->shadow.y = 0;
    coin->shadow.z = coin->samples[0].z;
    if (FountainCoinType == 1) {
        OvlFunc_951_2008dd0(17, (unsigned int *)&coin->samples[0], 0, 0, 16);
        OvlFunc_951_2008dd0(16, (unsigned int *)&coin->shadow, 0, 0, 16);
        OvlFunc_951_2008dd0(15, (unsigned int *)&coin->samples[1], 0, 0, 16);
        OvlFunc_951_2008dd0(14, (unsigned int *)&coin->samples[2], 0, 0, 16);
        OvlFunc_951_2008dd0(13, (unsigned int *)&coin->samples[3], 0, 0, 16);
        __Actor_SetAnim(__MapActor_GetActor(15), 4);
        __Actor_SetAnim(__MapActor_GetActor(14), 4);
        __Actor_SetAnim(__MapActor_GetActor(13), 4);
    } else {
        OvlFunc_951_2008dd0(12, (unsigned int *)&coin->samples[0], 0, 0, 16);
        OvlFunc_951_2008dd0(11, (unsigned int *)&coin->shadow, 0, 0, 16);
        OvlFunc_951_2008dd0(10, (unsigned int *)&coin->samples[1], 0, 0, 16);
        OvlFunc_951_2008dd0(9, (unsigned int *)&coin->samples[2], 0, 0, 16);
        OvlFunc_951_2008dd0(8, (unsigned int *)&coin->samples[3], 0, 0, 16);
        __Actor_SetAnim(__MapActor_GetActor(10), 4);
        __Actor_SetAnim(__MapActor_GetActor(9), 4);
        __Actor_SetAnim(__MapActor_GetActor(8), 4);
    }
    if (coin->frame != -1) ++coin->frame;
}
