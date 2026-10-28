#include "actor.h"
struct CS897_FloatingActor {
    struct Actor *actor;
    int savedX, savedY, savedZ;
    int phaseX, phaseY, phaseZ;
    int scale, scaleStep;
    unsigned char tick, hiddenFrames;
    unsigned char pad[2];
};
struct CS897_FloatingState {
    struct CS897_FloatingActor actors[10];
    unsigned short count;
};
extern struct CS897_FloatingState *CS897_Alloc(int, unsigned int) __asm__("__galloc_ewram");
extern unsigned int CS897_Random(void) __asm__("__Random");
extern unsigned int _udivsi3_RAM(unsigned int, unsigned int);
extern int CS897_Sin(int) __asm__("__sin");
extern int CS897_Cos(int) __asm__("__cos");
extern unsigned char CS897_Ranges[] __asm__(".Lm897_3a0c");
extern signed char CS897_Directions[] __asm__(".Lm897_3a48");
extern unsigned char CS897_PhaseFactors[] __asm__(".Lm897_3a2a");
extern int CS897_MaxScale[] __asm__(".Lm897_3a68");
extern int CS897_ScaleSteps[] __asm__(".Lm897_3a90");

void OvlFunc_897_200b01c(void)
{
    struct CS897_FloatingState *state;
    struct CS897_FloatingActor *entry;
    struct Actor *actor;
    unsigned int index;
    int phaseX, phaseY, phaseZ, scale, scaleStep;
    int savedX, savedY, savedZ;
    unsigned char tick, hiddenFrames;
    unsigned int stepX, stepY, stepZ;
    unsigned int randomX, randomY, randomZ;
    int x, y, z, angleX, angleY, angleZ;
    state = CS897_Alloc(0x21, 0x194);
    entry = state->actors;
    for (index = 0; index != state->count; index++, entry++) {
        phaseX = entry->phaseX;
        actor = entry->actor;
        phaseY = entry->phaseY;
        phaseZ = entry->phaseZ;
        scale = entry->scale;
        scaleStep = entry->scaleStep;
        hiddenFrames = entry->hiddenFrames;
        savedX = entry->savedX;
        savedY = entry->savedY;
        savedZ = entry->savedZ;
        tick = entry->tick;
        tick--;
        if (tick == 0) {
            tick = 3;
            if (hiddenFrames == 0) {
                scale += scaleStep;
                if (scale >= CS897_MaxScale[index])
                    scaleStep = -CS897_ScaleSteps[index];
                else if (scale <= 0x1999) {
                    scale = 0x1999;
                    scaleStep = CS897_ScaleSteps[index];
                    savedX = actor->pos.x;
                    savedY = actor->pos.y;
                    savedZ = actor->pos.z;
                    actor->pos.x = 0;
                    actor->pos.y = 0;
                    actor->pos.z = 0;
                    hiddenFrames = 24;
                }
                actor->scale.x = scale;
                actor->scale.y = scale;
            }
            randomX = (CS897_Random() * CS897_Ranges[index * 3]) >> 16;
            randomY = (CS897_Random() * CS897_Ranges[index * 3 + 1]) >> 16;
            randomZ = (CS897_Random() * CS897_Ranges[index * 3 + 2]) >> 16;
            if (randomX != 0)
                stepX = _udivsi3_RAM(randomX << 16, 1000);
            else
                stepX = 0;
            if (randomY != 0)
                stepY = _udivsi3_RAM(randomY << 16, 1000);
            else
                stepY = 0;
            if (randomZ != 0)
                stepZ = _udivsi3_RAM(randomZ << 16, 1000);
            else
                stepZ = 0;
            if (CS897_Directions[index * 3] == 1)
                phaseX += stepX;
            else {
                phaseX -= stepX;
                if (CS897_Directions[index * 3] != -1)
                    phaseX = 0;
            }
            if (CS897_Directions[index * 3 + 1] == 1)
                phaseY += stepY;
            else {
                phaseY -= stepY;
                if (CS897_Directions[index * 3 + 1] != -1)
                    phaseY = 0;
            }
            if (CS897_Directions[index * 3 + 2] == 1)
                phaseZ += stepZ;
            else {
                phaseZ -= stepZ;
                if (CS897_Directions[index * 3 + 2] != -1)
                    phaseZ = 0;
            }
            angleX = CS897_PhaseFactors[index * 3];
            angleX *= phaseX;
            x = 2 * CS897_Sin(angleX);
            angleY = CS897_PhaseFactors[index * 3 + 1];
            angleY *= phaseY;
            y = 2 * CS897_Sin(angleY);
            angleZ = CS897_PhaseFactors[index * 3 + 2];
            angleZ *= phaseZ;
            z = 2 * CS897_Cos(angleZ);
            if (hiddenFrames != 0) {
                savedX += x;
                savedY += y;
                savedZ += z;
                hiddenFrames--;
                if (hiddenFrames == 0) {
                    actor->pos.x = savedX;
                    actor->prevPos.x = savedX;
                    if (stepY != 0) {
                        actor->pos.y = savedY;
                        actor->prevPos.y = savedY;
                    }
                    actor->pos.z = savedZ;
                    actor->prevPos.z = savedZ;
                }
            } else {
                actor->pos.x += x;
                actor->prevPos.x = actor->pos.x;
                if (stepY != 0) {
                    actor->pos.y += y;
                    actor->prevPos.y = actor->pos.y;
                }
                actor->pos.z += z;
                actor->prevPos.z = actor->pos.z;
            }
        }
        entry->phaseX = phaseX;
        entry->phaseY = phaseY;
        entry->phaseZ = phaseZ;
        entry->scale = scale;
        entry->scaleStep = scaleStep;
        entry->hiddenFrames = hiddenFrames;
        entry->savedX = savedX;
        entry->savedY = savedY;
        entry->savedZ = savedZ;
        entry->tick = tick;
    }
}
