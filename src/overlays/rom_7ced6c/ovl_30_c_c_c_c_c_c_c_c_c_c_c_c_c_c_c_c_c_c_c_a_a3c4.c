typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int actor_id);
extern void __WaitFrames(int frames);
extern void __Func_8010704(int x, int y, int width, int height,
                           int source_x, int source_y);
extern void OvlFunc_946_2009774(int actor_id, int x, int y);

void OvlFunc_946_200a3c4(void)
{
    register int x asm("r5");
    register int y asm("r6");
    register int actor asm("r0");
    int raw;
    int other_x;
    int movement;
    raw = *(int *)(__MapActor_GetActor(0x11) + 8);
    actor = 0x11;
    asm volatile("" : "+r"(actor));
    asm volatile("asr %0, %1, #20" : "=r"(x) : "r"(raw));
    raw = *(int *)(__MapActor_GetActor(actor) + 0x10);
    actor = 0x13;
    asm volatile("" : "+r"(actor));
    asm volatile("asr %0, %1, #20" : "=r"(y) : "r"(raw));
    other_x = *(int *)(__MapActor_GetActor(actor) + 8) >> 20;

    if (y == 0x13) {
        other_x -= 3;
        if ((unsigned)other_x <= 2) {
            asm volatile("");
            movement = 0x10;
        } else {
            asm volatile("");
            movement = 0x40;
        }
        goto move;
    }
    if (y != 0x12)
        goto check;

    other_x -= 3;
    if ((unsigned)other_x <= 2)
        return;
    movement = 0x30;

move:
    OvlFunc_946_2009774(0x11, 0, -movement);
    goto draw;

check:
    if (y == 0x0f)
        return;

draw:
    __WaitFrames(2);
    other_x = *(int *)(__MapActor_GetActor(0x11) + 0x10) >> 20;
    x--;
    __Func_8010704(x, y, 3, 1, x, other_x);
    __Func_8010704(0, 0, 3, 1, x, y);
}
