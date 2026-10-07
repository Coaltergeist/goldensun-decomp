#include "global.h"

#include "actor.h"

void OvlFunc_960_2009094(void)
{
    struct DmaQueue *queue;
    int val;
    int i;
    struct Actor *actor;
    struct Sprite *sprite;
    unsigned int savedIme;
    int count;
    unsigned int *task;

    val = 0;
    if (__GetFlag(0x311)) {
        __SetFlag(0x206);
    }
    if (__GetFlag(0x312)) {
        __SetFlag(0x207);
    }
    if (__GetFlag(0x313)) {
        __SetFlag(0x208);
    }

    for (i = 8; i <= 10; i++) {
        actor = (struct Actor *)__MapActor_GetActor(i);
        if (actor != 0) {
            if (__GetFlag(0x109) == 0) {
                actor->scale.x = 0x800;
                actor->scale.y = 0x800;
            }
            sprite = actor->sprite;
            sprite->flags = 0;
        }
    }

    actor = (struct Actor *)__MapActor_GetActor(11);
    if (actor != 0) {
        sprite = actor->sprite;
        if (sprite->layers[0] != 0) {
            sprite->layers[0]->colorswap = 10;
        }
        sprite->visible = 1;
        sprite->flags = 0;
    }

    if (__GetFlag(0x315)) {
        __SetFlag(0x9b7);
    }

    queue = &gDMATaskCount;

    savedIme = REG_IME;
    SET_IO(REG_IME, REG_ADDR_IME);
    count = queue->count;
    if (count < 32) {
        task = (unsigned int *)((char *)queue + 4 + count * 12);
        queue->count = count + 1;
        *task++ = 0x3f42;
        *task++ = REG_ADDR_BLDCNT;
        *task = 0x20000;
    }
    SET_IO(REG_IME, savedIme);

    if (__GetFlag(0x340)) {
        val = 0x10;
        __Func_8091ff0(0xf4);
    }

    savedIme = REG_IME;
    SET_IO(REG_IME, REG_ADDR_IME);
    count = queue->count;
    if (count < 32) {
        task = (unsigned int *)((char *)queue + 4 + count * 12);
        queue->count = count + 1;
        *task++ = ((0x10 - val) << 8) | val;
        *task++ = REG_ADDR_BLDALPHA;
        *task = 0x20000;
    }
    SET_IO(REG_IME, savedIme);
}
