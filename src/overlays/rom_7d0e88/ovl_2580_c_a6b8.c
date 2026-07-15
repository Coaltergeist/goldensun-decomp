typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *__MapActor_GetActor(int id);
extern void __Func_8092b08(int actor, int value);

void OvlFunc_947_200a6b8(void)
{
    register u8 *leader asm("r5") = __MapActor_GetActor(0);
    register u32 actorId asm("r6") = 8;

    do {
        register u8 *actor asm("r0") = __MapActor_GetActor(actorId);
        register int tile asm("r3") = *(int *)(leader + 0xc);
        register int leaderTile asm("r2");
        register int actorTile asm("r3");

        if (tile < 0)
            asm volatile("ldr r1, =0xffff\n\tadd r3, r1"
                         : "+r"(tile) : : "r1");
        leaderTile = tile >> 16;
        actorTile = *(int *)(actor + 0xc);
        if (actorTile < 0)
            asm volatile("ldr r4, =0xffff\n\tadd r3, r4"
                         : "+r"(actorTile) : : "r4");
        actorTile >>= 16;

        if (leaderTile == actorTile) {
            register int actorY asm("r1");
            register int leaderY asm("r2");
            register int threshold asm("r3");
            asm volatile("ldr r2, =0xfff80000\n\tldr r1, [r0, #0x10]\n\t"
                         "add r3, r1, r2\n\tldr r2, [r5, #0x10]"
                         : "=r"(actorY), "=r"(leaderY), "=r"(threshold)
                         : "r"(actor), "r"(leader));
            if (leaderY <= threshold) {
                asm volatile("ldr r4, =0xffe80000\n\tadd r3, r1, r4"
                             : "=r"(threshold) : "r"(actorY) : "r4");
            if (leaderY > threshold) {
                register int leaderX asm("r1");
                register int actorX asm("r2");
                asm volatile("ldr r2, =0xfff00000\n\tldr r1, [r5, #8]\n\t"
                             "add r3, r1, r2\n\tldr r2, [r0, #8]"
                             : "=r"(leaderX), "=r"(actorX), "=r"(threshold)
                             : "r"(actor), "r"(leader));
                if (threshold > actorX)
                    goto next_actor;
                asm volatile("mov r4, #0x80\n\tlsl r4, #13\n\t"
                             "add r3, r1, r4"
                             : "=r"(threshold) : "r"(leaderX) : "r4");
                if (actorX >= threshold)
                    goto next_actor;
                {
                    u8 *sprite = *(u8 **)(actor + 0x50);
                    u32 value = ((u32)sprite[9] << 28) >> 30;
                    __Func_8092b08(0, value);
                    return;
                }
                goto next_actor;
            }
            }
        }

        {
            u8 *actor0 = __MapActor_GetActor(0) + 0x23;
            register int oldFlags asm("r2") = *actor0;
            register int newFlags asm("r3") = 1;
            asm volatile("orr r3, r2" : "+r"(newFlags) : "r"(oldFlags));
            *actor0 = newFlags;
        }
next_actor:
        actorId++;
    } while (actorId <= 0xb);
}
