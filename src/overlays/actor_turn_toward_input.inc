typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;

extern unsigned int gKeyHeld;
extern const s16 direction_table[] asm(ACTOR_TURN_TABLE_ASM);
extern void __Actor_SetAnim(u8 *actor, int animation);
extern void __Actor_SetAnimSpeed(u8 *actor, int speed);

void ACTOR_TURN_FUNCTION(u8 *actor)
{
    s16 *delay = (s16 *)(actor + 0x64);

    if (*delay != 0) {
        (*delay)--;
    } else {
        int target;

        actor[0x5a] = 0;
        target = direction_table[(gKeyHeld >> 4) & 0xf];
        if (target == -1) {
            __Actor_SetAnim(actor, 9);
        } else {
            u16 current = *(u16 *)(actor + 6);
            int change = (s16)(target - current);

            if (change > 0x1000) {
                change = 0x1000;
            }
            if (change < -0x1000) {
                change = -0x1000;
            }
            *(u16 *)(actor + 6) = current + change;
            __Actor_SetAnim(actor, 2);
            __Actor_SetAnimSpeed(actor, 0x30);
        }
    }
}
