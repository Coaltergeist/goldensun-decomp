extern unsigned int CS943C_Random(void) __asm__("__Random");
extern struct Actor *CS943C_Actor(int) __asm__("__MapActor_GetActor");
int OvlFunc_943_20082ec(struct Actor *actor)
{
    int state = actor->__unk62;
    if (state != 0) {
        switch (state) {
        case 1:
            actor->speed = 0x40000;
            actor->accel = 0x20000;
            API_Actor_TravelTo(actor, 0x1000000, 0x140000, 0x2800000);
            goto advance_state;
        case 3:
            if (actor->prevPos.x == (int)0x80000000 &&
                actor->prevPos.y == actor->prevPos.x &&
                actor->prevPos.z == actor->prevPos.y) {
                ++actor->__unk62;
                API_PlaySound(0x92);
                if (actor->__unk63) API_Func_8092adc(22, 0xd000, 0);
                else API_Func_8092adc(22, 0xb000, 0);
                if ((CS943C_Random() << 2) >> 16) {
                    CS943C_Actor(22)->motion.y = 0x20000;
                } else {
                    API_MapActor_Emote(22, 0x103, 0);
                    CS943C_Actor(22)->motion.y = 0x60000;
                }
            }
            break;
        case 5:
            if (actor->__unk63) API_Actor_TravelTo(actor, 0x1080000, 0, 0x2580000);
            else API_Actor_TravelTo(actor, 0xf20000, 0, 0x25c0000);
            /* Fall through: advance the completed travel state. */
        case 2: case 4: case 6:
        advance_state:
            ++actor->__unk62;
            break;
        case 7:
            if (actor->prevPos.x == (int)0x80000000 &&
                actor->prevPos.y == actor->prevPos.x &&
                actor->prevPos.z == actor->prevPos.y) {
                actor->speed = 0x20000;
                actor->accel = 0x10000;
                actor->waveCounter = 0;
                actor->__unk66 = 0;
                ++actor->__unk62;
                actor->__unk4C = 0;
            }
            break;
        case 8:
            actor->__unk62 = 0;
            break;
        }
    } else {
        if (actor->waveCounter != 0) {
            actor->__unk4C -= (CS943C_Random() << 12) >> 16;
            if (actor->__unk4C < -0x4000) actor->waveCounter = state;
        } else {
            actor->__unk4C += (CS943C_Random() << 12) >> 16;
            if (actor->__unk4C > 0x4000) actor->waveCounter = 1;
        }
        if (actor->pos.x > 0xe80000 && actor->pos.x < 0x1100000)
            actor->pos.x += actor->__unk4C;
        if ((short)actor->__unk66 != 0) {
            actor->pos.y -= ((CS943C_Random() << 15) >> 16) + 0x8000;
            if (actor->pos.y < 0) actor->__unk66 = 0;
        } else {
            actor->pos.y += ((CS943C_Random() << 15) >> 16) + 0x8000;
            if (actor->pos.y > 0x80000) actor->__unk66 = 1;
        }
    }
    if ((CS943C_Random() * 100) >> 16 == 0) actor->__unk62 = 1;
    return 1;
}
